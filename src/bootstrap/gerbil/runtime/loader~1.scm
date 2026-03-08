(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g171221_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id170060%_)
       (arg170035 . _%arg170035170093%_)
       (arg170036 . _%arg170036170107%_)
       (arg . _%arg170123%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g171222_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g171221_|)))
  (define |[1]#_g171224_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g171225_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g171224_|)))
  (define |[1]#_g171226_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id170194%_)
       (arg . _%arg170257%_)
       (arg170170 . _%arg170170170227%_)
       (arg170171 . _%arg170171170241%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g171227_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g171226_|)))
  (define |[1]#_g171229_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g171230_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g171229_|)))
  (define |[1]#_g171231_|
    (gx#core-deserialize-mark
     '(0
       (arg170305 . _%arg170305170375%_)
       (id . _%id170328%_)
       (arg170304 . _%arg170304170361%_)
       (arg . _%arg170391%_))
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
       (id . _%id170462%_)
       (arg . _%arg170525%_)
       (arg170438 . _%arg170438170495%_)
       (arg170439 . _%arg170439170509%_))
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
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx170017%_)
        (let* ((_%__stx171112171113%_ _%$stx170017%_)
               (_%g170022170043%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx171112171113%_))))
          (let ((_%__kont171115171116%_
                 (lambda (_%g170024170109%_)
                   (cons (gx#datum->syntax
                          |[1]#_g171222_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp171223
                                                  (lambda (_%g170124170127%_
                                                           _%g170125170130%_)
                                                    (cons _%g170124170127%_
                                                          _%g170125170130%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp171223
                                              '()
                                              _%g170024170109%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g171225_|
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
                (_%__kont171119171120%_
                 (lambda (_%g170037170050%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g170021170062%_
                    (lambda ()
                      (let ((_%g170037170050%_ _%__stx171112171113%_))
                        (if (gx#identifier? _%g170037170050%_)
                            (_%__kont171119171120%_ _%g170037170050%_)
                            (let ()
                              (declare (not safe))
                              (_%g170022170043%_))))))
                   (_%__match171135171136%_
                    (lambda (_%e170025170069%_
                             _%hd170026170073%_
                             _%tl170027170076%_
                             _%__splice171117171118%_
                             _%target170028170079%_
                             _%tl170030170082%_)
                      (letrec ((_%loop170031170085%_
                                (lambda (_%hd170029170089%_
                                         _%arg170035170092%_)
                                  (if (gx#stx-pair? _%hd170029170089%_)
                                      (let ((_%e170032170095%_
                                             (gx#syntax-e _%hd170029170089%_)))
                                        (let ((_%lp-tl170034170102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170032170095%_)))
                                              (_%lp-hd170033170099%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170032170095%_))))
                                          (_%loop170031170085%_
                                           _%lp-tl170034170102%_
                                           (cons _%lp-hd170033170099%_
                                                 _%arg170035170092%_))))
                                      (let ((_%arg170036170105%_
                                             (reverse _%arg170035170092%_)))
                                        (_%__kont171115171116%_
                                         _%arg170036170105%_))))))
                        (_%loop170031170085%_ _%target170028170079%_ '())))))
              (if (gx#stx-pair? _%__stx171112171113%_)
                  (let ((_%e170025170069%_
                         (gx#syntax-e _%__stx171112171113%_)))
                    (let ((_%tl170027170076%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170025170069%_)))
                          (_%hd170026170073%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170025170069%_))))
                      (if (gx#stx-pair/null? _%tl170027170076%_)
                          (let ((_%__splice171117171118%_
                                 (gx#syntax-split-splice->vector
                                  _%tl170027170076%_
                                  '0)))
                            (let ((_%tl170030170082%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171117171118%_
                                      '1)))
                                  (_%target170028170079%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171117171118%_
                                      '0))))
                              (if (gx#stx-null? _%tl170030170082%_)
                                  (_%__match171135171136%_
                                   _%e170025170069%_
                                   _%hd170026170073%_
                                   _%tl170027170076%_
                                   _%__splice171117171118%_
                                   _%target170028170079%_
                                   _%tl170030170082%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g170021170062%_)))))
                          (let () (declare (not safe)) (_%g170021170062%_)))))
                  (let () (declare (not safe)) (_%g170021170062%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx170152%_)
        (let* ((_%__stx171138171139%_ _%$stx170152%_)
               (_%g170157170178%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx171138171139%_))))
          (let ((_%__kont171141171142%_
                 (lambda (_%g170159170243%_)
                   (cons (gx#datum->syntax
                          |[1]#_g171227_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp171228
                                                  (lambda (_%g170258170261%_
                                                           _%g170259170264%_)
                                                    (cons _%g170258170261%_
                                                          _%g170259170264%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp171228
                                              '()
                                              _%g170159170243%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g171230_|
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
                (_%__kont171145171146%_
                 (lambda (_%g170172170185%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g170156170196%_
                    (lambda ()
                      (let ((_%g170172170185%_ _%__stx171138171139%_))
                        (if (gx#identifier? _%g170172170185%_)
                            (_%__kont171145171146%_ _%g170172170185%_)
                            (let ()
                              (declare (not safe))
                              (_%g170157170178%_))))))
                   (_%__match171161171162%_
                    (lambda (_%e170160170203%_
                             _%hd170161170207%_
                             _%tl170162170210%_
                             _%__splice171143171144%_
                             _%target170163170213%_
                             _%tl170165170216%_)
                      (letrec ((_%loop170166170219%_
                                (lambda (_%hd170164170223%_
                                         _%arg170170170226%_)
                                  (if (gx#stx-pair? _%hd170164170223%_)
                                      (let ((_%e170167170229%_
                                             (gx#syntax-e _%hd170164170223%_)))
                                        (let ((_%lp-tl170169170236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170167170229%_)))
                                              (_%lp-hd170168170233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170167170229%_))))
                                          (_%loop170166170219%_
                                           _%lp-tl170169170236%_
                                           (cons _%lp-hd170168170233%_
                                                 _%arg170170170226%_))))
                                      (let ((_%arg170171170239%_
                                             (reverse _%arg170170170226%_)))
                                        (_%__kont171141171142%_
                                         _%arg170171170239%_))))))
                        (_%loop170166170219%_ _%target170163170213%_ '())))))
              (if (gx#stx-pair? _%__stx171138171139%_)
                  (let ((_%e170160170203%_
                         (gx#syntax-e _%__stx171138171139%_)))
                    (let ((_%tl170162170210%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170160170203%_)))
                          (_%hd170161170207%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170160170203%_))))
                      (if (gx#stx-pair/null? _%tl170162170210%_)
                          (let ((_%__splice171143171144%_
                                 (gx#syntax-split-splice->vector
                                  _%tl170162170210%_
                                  '0)))
                            (let ((_%tl170165170216%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171143171144%_
                                      '1)))
                                  (_%target170163170213%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171143171144%_
                                      '0))))
                              (if (gx#stx-null? _%tl170165170216%_)
                                  (_%__match171161171162%_
                                   _%e170160170203%_
                                   _%hd170161170207%_
                                   _%tl170162170210%_
                                   _%__splice171143171144%_
                                   _%target170163170213%_
                                   _%tl170165170216%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g170156170196%_)))))
                          (let () (declare (not safe)) (_%g170156170196%_)))))
                  (let () (declare (not safe)) (_%g170156170196%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx170286%_)
        (let* ((_%__stx171164171165%_ _%$stx170286%_)
               (_%g170291170312%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx171164171165%_))))
          (let ((_%__kont171167171168%_
                 (lambda (_%g170293170377%_)
                   (cons (gx#datum->syntax
                          |[1]#_g171232_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp171233
                                                  (lambda (_%g170392170395%_
                                                           _%g170393170398%_)
                                                    (cons _%g170392170395%_
                                                          _%g170393170398%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp171233
                                              '()
                                              _%g170293170377%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g171235_|
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
                (_%__kont171171171172%_
                 (lambda (_%g170306170319%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g170290170330%_
                    (lambda ()
                      (let ((_%g170306170319%_ _%__stx171164171165%_))
                        (if (gx#identifier? _%g170306170319%_)
                            (_%__kont171171171172%_ _%g170306170319%_)
                            (let ()
                              (declare (not safe))
                              (_%g170291170312%_))))))
                   (_%__match171187171188%_
                    (lambda (_%e170294170337%_
                             _%hd170295170341%_
                             _%tl170296170344%_
                             _%__splice171169171170%_
                             _%target170297170347%_
                             _%tl170299170350%_)
                      (letrec ((_%loop170300170353%_
                                (lambda (_%hd170298170357%_
                                         _%arg170304170360%_)
                                  (if (gx#stx-pair? _%hd170298170357%_)
                                      (let ((_%e170301170363%_
                                             (gx#syntax-e _%hd170298170357%_)))
                                        (let ((_%lp-tl170303170370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170301170363%_)))
                                              (_%lp-hd170302170367%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170301170363%_))))
                                          (_%loop170300170353%_
                                           _%lp-tl170303170370%_
                                           (cons _%lp-hd170302170367%_
                                                 _%arg170304170360%_))))
                                      (let ((_%arg170305170373%_
                                             (reverse _%arg170304170360%_)))
                                        (_%__kont171167171168%_
                                         _%arg170305170373%_))))))
                        (_%loop170300170353%_ _%target170297170347%_ '())))))
              (if (gx#stx-pair? _%__stx171164171165%_)
                  (let ((_%e170294170337%_
                         (gx#syntax-e _%__stx171164171165%_)))
                    (let ((_%tl170296170344%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170294170337%_)))
                          (_%hd170295170341%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170294170337%_))))
                      (if (gx#stx-pair/null? _%tl170296170344%_)
                          (let ((_%__splice171169171170%_
                                 (gx#syntax-split-splice->vector
                                  _%tl170296170344%_
                                  '0)))
                            (let ((_%tl170299170350%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171169171170%_
                                      '1)))
                                  (_%target170297170347%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171169171170%_
                                      '0))))
                              (if (gx#stx-null? _%tl170299170350%_)
                                  (_%__match171187171188%_
                                   _%e170294170337%_
                                   _%hd170295170341%_
                                   _%tl170296170344%_
                                   _%__splice171169171170%_
                                   _%target170297170347%_
                                   _%tl170299170350%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g170290170330%_)))))
                          (let () (declare (not safe)) (_%g170290170330%_)))))
                  (let () (declare (not safe)) (_%g170290170330%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx170420%_)
        (let* ((_%__stx171190171191%_ _%$stx170420%_)
               (_%g170425170446%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx171190171191%_))))
          (let ((_%__kont171193171194%_
                 (lambda (_%g170427170511%_)
                   (cons (gx#datum->syntax
                          |[1]#_g171237_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp171238
                                                  (lambda (_%g170526170529%_
                                                           _%g170527170532%_)
                                                    (cons _%g170526170529%_
                                                          _%g170527170532%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp171238
                                              '()
                                              _%g170427170511%_))
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
                                                              '__module-load-order)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont171197171198%_
                 (lambda (_%g170440170453%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g170424170464%_
                    (lambda ()
                      (let ((_%g170440170453%_ _%__stx171190171191%_))
                        (if (gx#identifier? _%g170440170453%_)
                            (_%__kont171197171198%_ _%g170440170453%_)
                            (let ()
                              (declare (not safe))
                              (_%g170425170446%_))))))
                   (_%__match171213171214%_
                    (lambda (_%e170428170471%_
                             _%hd170429170475%_
                             _%tl170430170478%_
                             _%__splice171195171196%_
                             _%target170431170481%_
                             _%tl170433170484%_)
                      (letrec ((_%loop170434170487%_
                                (lambda (_%hd170432170491%_
                                         _%arg170438170494%_)
                                  (if (gx#stx-pair? _%hd170432170491%_)
                                      (let ((_%e170435170497%_
                                             (gx#syntax-e _%hd170432170491%_)))
                                        (let ((_%lp-tl170437170504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170435170497%_)))
                                              (_%lp-hd170436170501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170435170497%_))))
                                          (_%loop170434170487%_
                                           _%lp-tl170437170504%_
                                           (cons _%lp-hd170436170501%_
                                                 _%arg170438170494%_))))
                                      (let ((_%arg170439170507%_
                                             (reverse _%arg170438170494%_)))
                                        (_%__kont171193171194%_
                                         _%arg170439170507%_))))))
                        (_%loop170434170487%_ _%target170431170481%_ '())))))
              (if (gx#stx-pair? _%__stx171190171191%_)
                  (let ((_%e170428170471%_
                         (gx#syntax-e _%__stx171190171191%_)))
                    (let ((_%tl170430170478%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170428170471%_)))
                          (_%hd170429170475%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170428170471%_))))
                      (if (gx#stx-pair/null? _%tl170430170478%_)
                          (let ((_%__splice171195171196%_
                                 (gx#syntax-split-splice->vector
                                  _%tl170430170478%_
                                  '0)))
                            (let ((_%tl170433170484%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171195171196%_
                                      '1)))
                                  (_%target170431170481%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171195171196%_
                                      '0))))
                              (if (gx#stx-null? _%tl170433170484%_)
                                  (_%__match171213171214%_
                                   _%e170428170471%_
                                   _%hd170429170475%_
                                   _%tl170430170478%_
                                   _%__splice171195171196%_
                                   _%target170431170481%_
                                   _%tl170433170484%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g170424170464%_)))))
                          (let () (declare (not safe)) (_%g170424170464%_)))))
                  (let () (declare (not safe)) (_%g170424170464%_))))))))))
