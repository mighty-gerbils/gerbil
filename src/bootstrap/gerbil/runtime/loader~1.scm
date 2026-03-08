(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g171231_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg170133%_)
       (id . _%id170070%_)
       (arg170045 . _%arg170045170103%_)
       (arg170046 . _%arg170046170117%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g171232_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g171231_|)))
  (define |[1]#_g171234_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g171235_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g171234_|)))
  (define |[1]#_g171236_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg170267%_)
       (arg170181 . _%arg170181170251%_)
       (id . _%id170204%_)
       (arg170180 . _%arg170180170237%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g171237_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g171236_|)))
  (define |[1]#_g171239_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g171240_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g171239_|)))
  (define |[1]#_g171241_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg170401%_)
       (arg170315 . _%arg170315170385%_)
       (id . _%id170338%_)
       (arg170314 . _%arg170314170371%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g171242_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g171241_|)))
  (define |[1]#_g171244_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g171245_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g171244_|)))
  (define |[1]#_g171246_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg170535%_)
       (arg170449 . _%arg170449170519%_)
       (arg170448 . _%arg170448170505%_)
       (id . _%id170472%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g171247_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g171246_|)))
  (define |[1]#_g171249_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g171250_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g171249_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx170027%_)
        (let* ((_%__stx171122171123%_ _%$stx170027%_)
               (_%g170032170053%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx171122171123%_))))
          (let ((_%__kont171125171126%_
                 (lambda (_%g170034170119%_)
                   (cons (gx#datum->syntax
                          |[1]#_g171232_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp171233
                                                  (lambda (_%g170134170137%_
                                                           _%g170135170140%_)
                                                    (cons _%g170134170137%_
                                                          _%g170135170140%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp171233
                                              '()
                                              _%g170034170119%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g171235_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'paths)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__set-load-path!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'paths)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont171129171130%_
                 (lambda (_%g170047170060%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g170031170072%_
                    (lambda ()
                      (let ((_%g170047170060%_ _%__stx171122171123%_))
                        (if (gx#identifier? _%g170047170060%_)
                            (_%__kont171129171130%_ _%g170047170060%_)
                            (let ()
                              (declare (not safe))
                              (_%g170032170053%_))))))
                   (_%__match171145171146%_
                    (lambda (_%e170035170079%_
                             _%hd170036170083%_
                             _%tl170037170086%_
                             _%__splice171127171128%_
                             _%target170038170089%_
                             _%tl170040170092%_)
                      (letrec ((_%loop170041170095%_
                                (lambda (_%hd170039170099%_
                                         _%arg170045170102%_)
                                  (if (gx#stx-pair? _%hd170039170099%_)
                                      (let ((_%e170042170105%_
                                             (gx#syntax-e _%hd170039170099%_)))
                                        (let ((_%lp-tl170044170112%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170042170105%_)))
                                              (_%lp-hd170043170109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170042170105%_))))
                                          (_%loop170041170095%_
                                           _%lp-tl170044170112%_
                                           (cons _%lp-hd170043170109%_
                                                 _%arg170045170102%_))))
                                      (let ((_%arg170046170115%_
                                             (reverse _%arg170045170102%_)))
                                        (_%__kont171125171126%_
                                         _%arg170046170115%_))))))
                        (_%loop170041170095%_ _%target170038170089%_ '())))))
              (if (gx#stx-pair? _%__stx171122171123%_)
                  (let ((_%e170035170079%_
                         (gx#syntax-e _%__stx171122171123%_)))
                    (let ((_%tl170037170086%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170035170079%_)))
                          (_%hd170036170083%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170035170079%_))))
                      (if (gx#stx-pair/null? _%tl170037170086%_)
                          (let ((_%__splice171127171128%_
                                 (gx#syntax-split-splice->vector
                                  _%tl170037170086%_
                                  '0)))
                            (let ((_%tl170040170092%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171127171128%_
                                      '1)))
                                  (_%target170038170089%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171127171128%_
                                      '0))))
                              (if (gx#stx-null? _%tl170040170092%_)
                                  (_%__match171145171146%_
                                   _%e170035170079%_
                                   _%hd170036170083%_
                                   _%tl170037170086%_
                                   _%__splice171127171128%_
                                   _%target170038170089%_
                                   _%tl170040170092%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g170031170072%_)))))
                          (let () (declare (not safe)) (_%g170031170072%_)))))
                  (let () (declare (not safe)) (_%g170031170072%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx170162%_)
        (let* ((_%__stx171148171149%_ _%$stx170162%_)
               (_%g170167170188%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx171148171149%_))))
          (let ((_%__kont171151171152%_
                 (lambda (_%g170169170253%_)
                   (cons (gx#datum->syntax
                          |[1]#_g171237_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp171238
                                                  (lambda (_%g170268170271%_
                                                           _%g170269170274%_)
                                                    (cons _%g170268170271%_
                                                          _%g170269170274%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp171238
                                              '()
                                              _%g170169170253%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g171240_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__load-module)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont171155171156%_
                 (lambda (_%g170182170195%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g170166170206%_
                    (lambda ()
                      (let ((_%g170182170195%_ _%__stx171148171149%_))
                        (if (gx#identifier? _%g170182170195%_)
                            (_%__kont171155171156%_ _%g170182170195%_)
                            (let ()
                              (declare (not safe))
                              (_%g170167170188%_))))))
                   (_%__match171171171172%_
                    (lambda (_%e170170170213%_
                             _%hd170171170217%_
                             _%tl170172170220%_
                             _%__splice171153171154%_
                             _%target170173170223%_
                             _%tl170175170226%_)
                      (letrec ((_%loop170176170229%_
                                (lambda (_%hd170174170233%_
                                         _%arg170180170236%_)
                                  (if (gx#stx-pair? _%hd170174170233%_)
                                      (let ((_%e170177170239%_
                                             (gx#syntax-e _%hd170174170233%_)))
                                        (let ((_%lp-tl170179170246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170177170239%_)))
                                              (_%lp-hd170178170243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170177170239%_))))
                                          (_%loop170176170229%_
                                           _%lp-tl170179170246%_
                                           (cons _%lp-hd170178170243%_
                                                 _%arg170180170236%_))))
                                      (let ((_%arg170181170249%_
                                             (reverse _%arg170180170236%_)))
                                        (_%__kont171151171152%_
                                         _%arg170181170249%_))))))
                        (_%loop170176170229%_ _%target170173170223%_ '())))))
              (if (gx#stx-pair? _%__stx171148171149%_)
                  (let ((_%e170170170213%_
                         (gx#syntax-e _%__stx171148171149%_)))
                    (let ((_%tl170172170220%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170170170213%_)))
                          (_%hd170171170217%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170170170213%_))))
                      (if (gx#stx-pair/null? _%tl170172170220%_)
                          (let ((_%__splice171153171154%_
                                 (gx#syntax-split-splice->vector
                                  _%tl170172170220%_
                                  '0)))
                            (let ((_%tl170175170226%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171153171154%_
                                      '1)))
                                  (_%target170173170223%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171153171154%_
                                      '0))))
                              (if (gx#stx-null? _%tl170175170226%_)
                                  (_%__match171171171172%_
                                   _%e170170170213%_
                                   _%hd170171170217%_
                                   _%tl170172170220%_
                                   _%__splice171153171154%_
                                   _%target170173170223%_
                                   _%tl170175170226%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g170166170206%_)))))
                          (let () (declare (not safe)) (_%g170166170206%_)))))
                  (let () (declare (not safe)) (_%g170166170206%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx170296%_)
        (let* ((_%__stx171174171175%_ _%$stx170296%_)
               (_%g170301170322%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx171174171175%_))))
          (let ((_%__kont171177171178%_
                 (lambda (_%g170303170387%_)
                   (cons (gx#datum->syntax
                          |[1]#_g171242_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp171243
                                                  (lambda (_%g170402170405%_
                                                           _%g170403170408%_)
                                                    (cons _%g170402170405%_
                                                          _%g170403170408%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp171243
                                              '()
                                              _%g170303170387%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g171245_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__reload-module!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont171181171182%_
                 (lambda (_%g170316170329%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g170300170340%_
                    (lambda ()
                      (let ((_%g170316170329%_ _%__stx171174171175%_))
                        (if (gx#identifier? _%g170316170329%_)
                            (_%__kont171181171182%_ _%g170316170329%_)
                            (let ()
                              (declare (not safe))
                              (_%g170301170322%_))))))
                   (_%__match171197171198%_
                    (lambda (_%e170304170347%_
                             _%hd170305170351%_
                             _%tl170306170354%_
                             _%__splice171179171180%_
                             _%target170307170357%_
                             _%tl170309170360%_)
                      (letrec ((_%loop170310170363%_
                                (lambda (_%hd170308170367%_
                                         _%arg170314170370%_)
                                  (if (gx#stx-pair? _%hd170308170367%_)
                                      (let ((_%e170311170373%_
                                             (gx#syntax-e _%hd170308170367%_)))
                                        (let ((_%lp-tl170313170380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170311170373%_)))
                                              (_%lp-hd170312170377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170311170373%_))))
                                          (_%loop170310170363%_
                                           _%lp-tl170313170380%_
                                           (cons _%lp-hd170312170377%_
                                                 _%arg170314170370%_))))
                                      (let ((_%arg170315170383%_
                                             (reverse _%arg170314170370%_)))
                                        (_%__kont171177171178%_
                                         _%arg170315170383%_))))))
                        (_%loop170310170363%_ _%target170307170357%_ '())))))
              (if (gx#stx-pair? _%__stx171174171175%_)
                  (let ((_%e170304170347%_
                         (gx#syntax-e _%__stx171174171175%_)))
                    (let ((_%tl170306170354%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170304170347%_)))
                          (_%hd170305170351%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170304170347%_))))
                      (if (gx#stx-pair/null? _%tl170306170354%_)
                          (let ((_%__splice171179171180%_
                                 (gx#syntax-split-splice->vector
                                  _%tl170306170354%_
                                  '0)))
                            (let ((_%tl170309170360%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171179171180%_
                                      '1)))
                                  (_%target170307170357%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171179171180%_
                                      '0))))
                              (if (gx#stx-null? _%tl170309170360%_)
                                  (_%__match171197171198%_
                                   _%e170304170347%_
                                   _%hd170305170351%_
                                   _%tl170306170354%_
                                   _%__splice171179171180%_
                                   _%target170307170357%_
                                   _%tl170309170360%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g170300170340%_)))))
                          (let () (declare (not safe)) (_%g170300170340%_)))))
                  (let () (declare (not safe)) (_%g170300170340%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx170430%_)
        (let* ((_%__stx171200171201%_ _%$stx170430%_)
               (_%g170435170456%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx171200171201%_))))
          (let ((_%__kont171203171204%_
                 (lambda (_%g170437170521%_)
                   (cons (gx#datum->syntax
                          |[1]#_g171247_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp171248
                                                  (lambda (_%g170536170539%_
                                                           _%g170537170542%_)
                                                    (cons _%g170536170539%_
                                                          _%g170537170542%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp171248
                                              '()
                                              _%g170437170521%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g171250_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__module-load-order)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont171207171208%_
                 (lambda (_%g170450170463%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g170434170474%_
                    (lambda ()
                      (let ((_%g170450170463%_ _%__stx171200171201%_))
                        (if (gx#identifier? _%g170450170463%_)
                            (_%__kont171207171208%_ _%g170450170463%_)
                            (let ()
                              (declare (not safe))
                              (_%g170435170456%_))))))
                   (_%__match171223171224%_
                    (lambda (_%e170438170481%_
                             _%hd170439170485%_
                             _%tl170440170488%_
                             _%__splice171205171206%_
                             _%target170441170491%_
                             _%tl170443170494%_)
                      (letrec ((_%loop170444170497%_
                                (lambda (_%hd170442170501%_
                                         _%arg170448170504%_)
                                  (if (gx#stx-pair? _%hd170442170501%_)
                                      (let ((_%e170445170507%_
                                             (gx#syntax-e _%hd170442170501%_)))
                                        (let ((_%lp-tl170447170514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170445170507%_)))
                                              (_%lp-hd170446170511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170445170507%_))))
                                          (_%loop170444170497%_
                                           _%lp-tl170447170514%_
                                           (cons _%lp-hd170446170511%_
                                                 _%arg170448170504%_))))
                                      (let ((_%arg170449170517%_
                                             (reverse _%arg170448170504%_)))
                                        (_%__kont171203171204%_
                                         _%arg170449170517%_))))))
                        (_%loop170444170497%_ _%target170441170491%_ '())))))
              (if (gx#stx-pair? _%__stx171200171201%_)
                  (let ((_%e170438170481%_
                         (gx#syntax-e _%__stx171200171201%_)))
                    (let ((_%tl170440170488%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170438170481%_)))
                          (_%hd170439170485%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170438170481%_))))
                      (if (gx#stx-pair/null? _%tl170440170488%_)
                          (let ((_%__splice171205171206%_
                                 (gx#syntax-split-splice->vector
                                  _%tl170440170488%_
                                  '0)))
                            (let ((_%tl170443170494%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171205171206%_
                                      '1)))
                                  (_%target170441170491%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171205171206%_
                                      '0))))
                              (if (gx#stx-null? _%tl170443170494%_)
                                  (_%__match171223171224%_
                                   _%e170438170481%_
                                   _%hd170439170485%_
                                   _%tl170440170488%_
                                   _%__splice171205171206%_
                                   _%target170441170491%_
                                   _%tl170443170494%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g170434170474%_)))))
                          (let () (declare (not safe)) (_%g170434170474%_)))))
                  (let () (declare (not safe)) (_%g170434170474%_))))))))))
