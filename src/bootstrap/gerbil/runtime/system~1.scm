(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g121213_|
    (gx#core-deserialize-mark
     '(0
       (arg120317 . _%arg120317120388%_)
       (arg . _%arg120404%_)
       (id . _%id120341%_)
       (arg120316 . _%arg120316120374%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121214_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121213_|)))
  (define |[1]#_g121215_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value120420%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121216_|
    (##structure
     gx#syntax-quote::t
     '_%new-value120420%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g121215_|)))
  (define |[1]#_g121218_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121219_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121218_|)))
  (define |[1]#_g121220_|
    (gx#core-deserialize-mark
     '(0
       (arg120452 . _%arg120452120509%_)
       (arg . _%arg120539%_)
       (id . _%id120476%_)
       (arg120453 . _%arg120453120523%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121221_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121220_|)))
  (define |[1]#_g121223_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121224_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121223_|)))
  (define |[1]#_g121225_|
    (gx#core-deserialize-mark
     '(0
       (arg120613 . _%arg120613120670%_)
       (arg . _%arg120700%_)
       (id . _%id120637%_)
       (arg120614 . _%arg120614120684%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121226_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121225_|)))
  (define |[1]#_g121228_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121229_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121228_|)))
  (define |[1]#_g121230_|
    (gx#core-deserialize-mark
     '(0
       (arg120756 . _%arg120756120813%_)
       (arg . _%arg120843%_)
       (id . _%id120780%_)
       (arg120757 . _%arg120757120827%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121231_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121230_|)))
  (define |[1]#_g121232_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value120859%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121233_|
    (##structure
     gx#syntax-quote::t
     '_%new-value120859%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g121232_|)))
  (define |[1]#_g121235_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121236_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121235_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx120298%_)
        (let* ((_%__stx121099121100%_ _%$stx120298%_)
               (_%g120303120324%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121099121100%_))))
          (let ((_%__kont121102121103%_
                 (lambda (_%g120305120390%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121214_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g121216_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp121217
                                                  (lambda (_%g120405120408%_
                                                           _%g120406120411%_)
                                                    (cons _%g120405120408%_
                                                          _%g120406120411%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121217
                                              '()
                                              _%g120305120390%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121219_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g121216_|
                                                              'new-value
                                                              '#f
                                                              '#f)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__build-manifest-set!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |[1]#_g121216_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont121106121107%_
                 (lambda (_%g120318120331%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%g120302120343%_
                    (lambda ()
                      (let ((_%g120318120331%_ _%__stx121099121100%_))
                        (if (gx#identifier? _%g120318120331%_)
                            (_%__kont121106121107%_ _%g120318120331%_)
                            (let ()
                              (declare (not safe))
                              (_%g120303120324%_))))))
                   (_%__match121122121123%_
                    (lambda (_%e120306120350%_
                             _%hd120307120354%_
                             _%tl120308120357%_
                             _%__splice121104121105%_
                             _%target120309120360%_
                             _%tl120311120363%_)
                      (letrec ((_%loop120312120366%_
                                (lambda (_%hd120310120370%_
                                         _%arg120316120373%_)
                                  (if (gx#stx-pair? _%hd120310120370%_)
                                      (let ((_%e120313120376%_
                                             (gx#syntax-e _%hd120310120370%_)))
                                        (let ((_%lp-tl120315120383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120313120376%_)))
                                              (_%lp-hd120314120380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120313120376%_))))
                                          (_%loop120312120366%_
                                           _%lp-tl120315120383%_
                                           (cons _%lp-hd120314120380%_
                                                 _%arg120316120373%_))))
                                      (let ((_%arg120317120386%_
                                             (reverse _%arg120316120373%_)))
                                        (_%__kont121102121103%_
                                         _%arg120317120386%_))))))
                        (_%loop120312120366%_ _%target120309120360%_ '())))))
              (if (gx#stx-pair? _%__stx121099121100%_)
                  (let ((_%e120306120350%_
                         (gx#syntax-e _%__stx121099121100%_)))
                    (let ((_%tl120308120357%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120306120350%_)))
                          (_%hd120307120354%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120306120350%_))))
                      (if (gx#stx-pair/null? _%tl120308120357%_)
                          (let ((_%__splice121104121105%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120308120357%_
                                  '0)))
                            (let ((_%tl120311120363%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121104121105%_
                                      '1)))
                                  (_%target120309120360%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121104121105%_
                                      '0))))
                              (if (gx#stx-null? _%tl120311120363%_)
                                  (_%__match121122121123%_
                                   _%e120306120350%_
                                   _%hd120307120354%_
                                   _%tl120308120357%_
                                   _%__splice121104121105%_
                                   _%target120309120360%_
                                   _%tl120311120363%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120302120343%_)))))
                          (let () (declare (not safe)) (_%g120302120343%_)))))
                  (let () (declare (not safe)) (_%g120302120343%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx120434%_)
        (let* ((_%__stx121125121126%_ _%$stx120434%_)
               (_%g120439120460%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121125121126%_))))
          (let ((_%__kont121128121129%_
                 (lambda (_%g120441120525%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121221_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'manifest)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '__build-manifest)
                                                       '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'port)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'current-output-port)
                           '())
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (let ((__tmp121222
                                                  (lambda (_%g120540120543%_
                                                           _%g120541120546%_)
                                                    (cons _%g120540120543%_
                                                          _%g120541120546%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121222
                                              '()
                                              _%g120441120525%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121224_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               (cons (cons (gx#datum->syntax '#f 'port)
                           (cons (gx#datum->syntax '#f ':)
                                 (cons (gx#datum->syntax '#f ':port) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__display-build-manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'manifest)
                           (cons (gx#datum->syntax '#f 'port) '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont121132121133%_
                 (lambda (_%g120454120467%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%g120438120478%_
                    (lambda ()
                      (let ((_%g120454120467%_ _%__stx121125121126%_))
                        (if (gx#identifier? _%g120454120467%_)
                            (_%__kont121132121133%_ _%g120454120467%_)
                            (let ()
                              (declare (not safe))
                              (_%g120439120460%_))))))
                   (_%__match121148121149%_
                    (lambda (_%e120442120485%_
                             _%hd120443120489%_
                             _%tl120444120492%_
                             _%__splice121130121131%_
                             _%target120445120495%_
                             _%tl120447120498%_)
                      (letrec ((_%loop120448120501%_
                                (lambda (_%hd120446120505%_
                                         _%arg120452120508%_)
                                  (if (gx#stx-pair? _%hd120446120505%_)
                                      (let ((_%e120449120511%_
                                             (gx#syntax-e _%hd120446120505%_)))
                                        (let ((_%lp-tl120451120518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120449120511%_)))
                                              (_%lp-hd120450120515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120449120511%_))))
                                          (_%loop120448120501%_
                                           _%lp-tl120451120518%_
                                           (cons _%lp-hd120450120515%_
                                                 _%arg120452120508%_))))
                                      (let ((_%arg120453120521%_
                                             (reverse _%arg120452120508%_)))
                                        (_%__kont121128121129%_
                                         _%arg120453120521%_))))))
                        (_%loop120448120501%_ _%target120445120495%_ '())))))
              (if (gx#stx-pair? _%__stx121125121126%_)
                  (let ((_%e120442120485%_
                         (gx#syntax-e _%__stx121125121126%_)))
                    (let ((_%tl120444120492%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120442120485%_)))
                          (_%hd120443120489%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120442120485%_))))
                      (if (gx#stx-pair/null? _%tl120444120492%_)
                          (let ((_%__splice121130121131%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120444120492%_
                                  '0)))
                            (let ((_%tl120447120498%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121130121131%_
                                      '1)))
                                  (_%target120445120495%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121130121131%_
                                      '0))))
                              (if (gx#stx-null? _%tl120447120498%_)
                                  (_%__match121148121149%_
                                   _%e120442120485%_
                                   _%hd120443120489%_
                                   _%tl120444120492%_
                                   _%__splice121130121131%_
                                   _%target120445120495%_
                                   _%tl120447120498%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120438120478%_)))))
                          (let () (declare (not safe)) (_%g120438120478%_)))))
                  (let () (declare (not safe)) (_%g120438120478%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx120595%_)
        (let* ((_%__stx121151121152%_ _%$stx120595%_)
               (_%g120600120621%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121151121152%_))))
          (let ((_%__kont121154121155%_
                 (lambda (_%g120602120686%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121226_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'manifest)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '__build-manifest)
                                                       '()))
                                           '())
                                     (cons (let ((__tmp121227
                                                  (lambda (_%g120701120704%_
                                                           _%g120702120707%_)
                                                    (cons _%g120701120704%_
                                                          _%g120702120707%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121227
                                              '()
                                              _%g120602120686%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121229_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__build-manifest-string)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'manifest)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont121158121159%_
                 (lambda (_%g120615120628%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%g120599120639%_
                    (lambda ()
                      (let ((_%g120615120628%_ _%__stx121151121152%_))
                        (if (gx#identifier? _%g120615120628%_)
                            (_%__kont121158121159%_ _%g120615120628%_)
                            (let ()
                              (declare (not safe))
                              (_%g120600120621%_))))))
                   (_%__match121174121175%_
                    (lambda (_%e120603120646%_
                             _%hd120604120650%_
                             _%tl120605120653%_
                             _%__splice121156121157%_
                             _%target120606120656%_
                             _%tl120608120659%_)
                      (letrec ((_%loop120609120662%_
                                (lambda (_%hd120607120666%_
                                         _%arg120613120669%_)
                                  (if (gx#stx-pair? _%hd120607120666%_)
                                      (let ((_%e120610120672%_
                                             (gx#syntax-e _%hd120607120666%_)))
                                        (let ((_%lp-tl120612120679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120610120672%_)))
                                              (_%lp-hd120611120676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120610120672%_))))
                                          (_%loop120609120662%_
                                           _%lp-tl120612120679%_
                                           (cons _%lp-hd120611120676%_
                                                 _%arg120613120669%_))))
                                      (let ((_%arg120614120682%_
                                             (reverse _%arg120613120669%_)))
                                        (_%__kont121154121155%_
                                         _%arg120614120682%_))))))
                        (_%loop120609120662%_ _%target120606120656%_ '())))))
              (if (gx#stx-pair? _%__stx121151121152%_)
                  (let ((_%e120603120646%_
                         (gx#syntax-e _%__stx121151121152%_)))
                    (let ((_%tl120605120653%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120603120646%_)))
                          (_%hd120604120650%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120603120646%_))))
                      (if (gx#stx-pair/null? _%tl120605120653%_)
                          (let ((_%__splice121156121157%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120605120653%_
                                  '0)))
                            (let ((_%tl120608120659%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121156121157%_
                                      '1)))
                                  (_%target120606120656%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121156121157%_
                                      '0))))
                              (if (gx#stx-null? _%tl120608120659%_)
                                  (_%__match121174121175%_
                                   _%e120603120646%_
                                   _%hd120604120650%_
                                   _%tl120605120653%_
                                   _%__splice121156121157%_
                                   _%target120606120656%_
                                   _%tl120608120659%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120599120639%_)))))
                          (let () (declare (not safe)) (_%g120599120639%_)))))
                  (let () (declare (not safe)) (_%g120599120639%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx120738%_)
        (let* ((_%__stx121177121178%_ _%$stx120738%_)
               (_%g120743120764%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121177121178%_))))
          (let ((_%__kont121180121181%_
                 (lambda (_%g120745120829%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121231_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g121233_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp121234
                                                  (lambda (_%g120844120847%_
                                                           _%g120845120850%_)
                                                    (cons _%g120844120847%_
                                                          _%g120845120850%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121234
                                              '()
                                              _%g120745120829%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121236_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g121233_|
                                                              'new-value
                                                              '#f
                                                              '#f)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__gerbil-greeting-set!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |[1]#_g121233_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont121184121185%_
                 (lambda (_%g120758120771%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%g120742120782%_
                    (lambda ()
                      (let ((_%g120758120771%_ _%__stx121177121178%_))
                        (if (gx#identifier? _%g120758120771%_)
                            (_%__kont121184121185%_ _%g120758120771%_)
                            (let ()
                              (declare (not safe))
                              (_%g120743120764%_))))))
                   (_%__match121200121201%_
                    (lambda (_%e120746120789%_
                             _%hd120747120793%_
                             _%tl120748120796%_
                             _%__splice121182121183%_
                             _%target120749120799%_
                             _%tl120751120802%_)
                      (letrec ((_%loop120752120805%_
                                (lambda (_%hd120750120809%_
                                         _%arg120756120812%_)
                                  (if (gx#stx-pair? _%hd120750120809%_)
                                      (let ((_%e120753120815%_
                                             (gx#syntax-e _%hd120750120809%_)))
                                        (let ((_%lp-tl120755120822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120753120815%_)))
                                              (_%lp-hd120754120819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120753120815%_))))
                                          (_%loop120752120805%_
                                           _%lp-tl120755120822%_
                                           (cons _%lp-hd120754120819%_
                                                 _%arg120756120812%_))))
                                      (let ((_%arg120757120825%_
                                             (reverse _%arg120756120812%_)))
                                        (_%__kont121180121181%_
                                         _%arg120757120825%_))))))
                        (_%loop120752120805%_ _%target120749120799%_ '())))))
              (if (gx#stx-pair? _%__stx121177121178%_)
                  (let ((_%e120746120789%_
                         (gx#syntax-e _%__stx121177121178%_)))
                    (let ((_%tl120748120796%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120746120789%_)))
                          (_%hd120747120793%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120746120789%_))))
                      (if (gx#stx-pair/null? _%tl120748120796%_)
                          (let ((_%__splice121182121183%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120748120796%_
                                  '0)))
                            (let ((_%tl120751120802%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121182121183%_
                                      '1)))
                                  (_%target120749120799%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121182121183%_
                                      '0))))
                              (if (gx#stx-null? _%tl120751120802%_)
                                  (_%__match121200121201%_
                                   _%e120746120789%_
                                   _%hd120747120793%_
                                   _%tl120748120796%_
                                   _%__splice121182121183%_
                                   _%target120749120799%_
                                   _%tl120751120802%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120742120782%_)))))
                          (let () (declare (not safe)) (_%g120742120782%_)))))
                  (let () (declare (not safe)) (_%g120742120782%_))))))))))
