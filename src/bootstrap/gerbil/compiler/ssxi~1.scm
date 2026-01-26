(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g221373_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221380_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221382_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221384_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221386_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221388_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221400_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221402_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221404_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221406_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221408_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx214831%_)
        (let* ((_%g214835214853%_
                (lambda (_%g214836214849%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214836214849%_))))
               (_%g214834214908%_
                (lambda (_%g214836214857%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214836214857%_))
                      (let ((_%e214839214860%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214836214857%_))))
                        (let ((_%hd214840214864%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214839214860%_)))
                              (_%tl214841214867%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214839214860%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214841214867%_))
                              (let ((_%e214842214870%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214841214867%_))))
                                (let ((_%hd214843214874%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214842214870%_)))
                                      (_%tl214844214877%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214842214870%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214844214877%_))
                                      (let ((_%e214845214880%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl214844214877%_))))
                                        (let ((_%hd214846214884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214845214880%_)))
                                              (_%tl214847214887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214845214880%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214847214887%_))
                                              ((lambda (_%g214837214890%_
                                                        _%g214838214892%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g214838214892%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g214838214892%_ '()))
                         (cons _%g214837214890%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g214835214853%_
                                                      _%g214836214857%_)))
                                               _%hd214846214884%_
                                               _%hd214843214874%_)
                                              (_%g214835214853%_
                                               _%g214836214857%_))))
                                      (_%g214835214853%_ _%g214836214857%_))))
                              (_%g214835214853%_ _%g214836214857%_))))
                      (_%g214835214853%_ _%g214836214857%_)))))
          (_%g214834214908%_ _%$stx214831%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx214912%_)
        (let* ((_%g214916214934%_
                (lambda (_%g214917214930%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214917214930%_))))
               (_%g214915214989%_
                (lambda (_%g214917214938%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214917214938%_))
                      (let ((_%e214920214941%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214917214938%_))))
                        (let ((_%hd214921214945%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214920214941%_)))
                              (_%tl214922214948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214920214941%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214922214948%_))
                              (let ((_%e214923214951%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214922214948%_))))
                                (let ((_%hd214924214955%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214923214951%_)))
                                      (_%tl214925214958%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214923214951%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214925214958%_))
                                      (let ((_%e214926214961%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl214925214958%_))))
                                        (let ((_%hd214927214965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214926214961%_)))
                                              (_%tl214928214968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214926214961%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214928214968%_))
                                              ((lambda (_%g214918214971%_
                                                        _%g214919214973%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g214919214973%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g214919214973%_ '()))
                         (cons _%g214918214971%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g214916214934%_
                                                      _%g214917214938%_)))
                                               _%hd214927214965%_
                                               _%hd214924214955%_)
                                              (_%g214916214934%_
                                               _%g214917214938%_))))
                                      (_%g214916214934%_ _%g214917214938%_))))
                              (_%g214916214934%_ _%g214917214938%_))))
                      (_%g214916214934%_ _%g214917214938%_)))))
          (_%g214915214989%_ _%$stx214912%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx214993%_)
        (let* ((_%g214997215026%_
                (lambda (_%g214998215022%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214998215022%_))))
               (_%g214996215122%_
                (lambda (_%g214998215030%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214998215030%_))
                      (let ((_%e215001215033%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214998215030%_))))
                        (let ((_%hd215002215037%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215001215033%_)))
                              (_%tl215003215040%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215001215033%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl215003215040%_))
                              (let ((_g221351_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl215003215040%_
                                        '0))))
                                (begin
                                  (let ((_g221352_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221351_)
                                               (##values-length _g221351_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221352_ 2)))
                                        (error "Context expects 2 values"
                                               _g221352_)))
                                  (let ((_%target215004215043%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221351_ 0)))
                                        (_%tl215006215046%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221351_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl215006215046%_))
                                        (letrec ((_%loop215007215049%_
                                                  (lambda (_%hd215005215053%_
                                                           _%type215011215056%_
                                                           _%symbol215012215057%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd215005215053%_))
                                                        (let ((_%e215008215059%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd215005215053%_))))
                  (let ((_%lp-hd215009215063%_
                         (let ()
                           (declare (not safe))
                           (##car _%e215008215059%_)))
                        (_%lp-tl215010215066%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e215008215059%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd215009215063%_))
                        (let ((_%e215015215069%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd215009215063%_))))
                          (let ((_%hd215016215073%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215015215069%_)))
                                (_%tl215017215076%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215015215069%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl215017215076%_))
                                (let ((_%e215018215079%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl215017215076%_))))
                                  (let ((_%hd215019215083%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e215018215079%_)))
                                        (_%tl215020215086%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e215018215079%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl215020215086%_))
                                        (_%loop215007215049%_
                                         _%lp-tl215010215066%_
                                         (cons _%hd215019215083%_
                                               _%type215011215056%_)
                                         (cons _%hd215016215073%_
                                               _%symbol215012215057%_))
                                        (_%g214997215026%_
                                         _%g214998215030%_))))
                                (_%g214997215026%_ _%g214998215030%_))))
                        (_%g214997215026%_ _%g214998215030%_))))
                (let ((_%type215013215089%_ (reverse _%type215011215056%_))
                      (_%symbol215014215091%_
                       (reverse _%symbol215012215057%_)))
                  ((lambda (_%g214999215093%_ _%g215000215095%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g214999215093%_
                                _%g215000215095%_))
                             (let ((__tmp221353
                                    (lambda (_%g215110215114%_
                                             _%g215111215117%_
                                             _%g215112215119%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g215111215117%_
                                                        (cons _%g215110215114%_
                                                              '())))
                                            _%g215112215119%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp221353
                                '()
                                _%g214999215093%_
                                _%g215000215095%_)))))
                   _%type215013215089%_
                   _%symbol215014215091%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop215007215049%_
                                           _%target215004215043%_
                                           '()
                                           '()))
                                        (_%g214997215026%_
                                         _%g214998215030%_)))))
                              (_%g214997215026%_ _%g214998215030%_))))
                      (_%g214997215026%_ _%g214998215030%_)))))
          (_%g214996215122%_ _%$stx214993%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx215127%_)
        (let* ((_%__stx220662220663%_ _%$stx215127%_)
               (_%g215132215174%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220662220663%_)))))
          (let ((_%__kont220665220666%_
                 (lambda (_%g215134215302%_
                          _%g215135215304%_
                          _%g215136215305%_
                          _%g215137215306%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g215137215306%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g215136215305%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g215135215304%_ '()))
                                           (cons _%g215134215302%_ '())))))))
                (_%__kont220667220668%_
                 (lambda (_%g215153215221%_
                          _%g215154215223%_
                          _%g215155215224%_
                          _%g215156215225%_)
                   (cons _%g215156215225%_
                         (cons _%g215155215224%_
                               (cons _%g215154215223%_
                                     (cons _%g215153215221%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match220701220702%_
                   (lambda (_%e215138215252%_
                            _%hd215139215256%_
                            _%tl215140215259%_
                            _%e215141215262%_
                            _%hd215142215266%_
                            _%tl215143215269%_
                            _%e215144215272%_
                            _%hd215145215276%_
                            _%tl215146215279%_
                            _%e215147215282%_
                            _%hd215148215286%_
                            _%tl215149215289%_
                            _%e215150215292%_
                            _%hd215151215296%_
                            _%tl215152215299%_)
                     (let ((_%g215134215302%_ _%hd215151215296%_)
                           (_%g215135215304%_ _%hd215148215286%_)
                           (_%g215136215305%_ _%hd215145215276%_)
                           (_%g215137215306%_ _%hd215142215266%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g215137215306%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g215136215305%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g215135215304%_)))
                           (_%__kont220665220666%_
                            _%g215134215302%_
                            _%g215135215304%_
                            _%g215136215305%_
                            _%g215137215306%_)
                           (let ()
                             (declare (not safe))
                             (_%g215132215174%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220662220663%_))
                  (let ((_%e215138215252%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220662220663%_))))
                    (let ((_%tl215140215259%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e215138215252%_)))
                          (_%hd215139215256%_
                           (let ()
                             (declare (not safe))
                             (##car _%e215138215252%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl215140215259%_))
                          (let ((_%e215141215262%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl215140215259%_))))
                            (let ((_%tl215143215269%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e215141215262%_)))
                                  (_%hd215142215266%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e215141215262%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl215143215269%_))
                                  (let ((_%e215144215272%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl215143215269%_))))
                                    (let ((_%tl215146215279%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e215144215272%_)))
                                          (_%hd215145215276%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e215144215272%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl215146215279%_))
                                          (let ((_%e215147215282%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl215146215279%_))))
                                            (let ((_%tl215149215289%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e215147215282%_)))
                                                  (_%hd215148215286%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e215147215282%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl215149215289%_))
                                                  (let ((_%e215150215292%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl215149215289%_))))
                                                    (let ((_%tl215152215299%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e215150215292%_)))
                                                          (_%hd215151215296%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e215150215292%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl215152215299%_))
                                                          (_%__match220701220702%_
                                                           _%e215138215252%_
                                                           _%hd215139215256%_
                                                           _%tl215140215259%_
                                                           _%e215141215262%_
                                                           _%hd215142215266%_
                                                           _%tl215143215269%_
                                                           _%e215144215272%_
                                                           _%hd215145215276%_
                                                           _%tl215146215279%_
                                                           _%e215147215282%_
                                                           _%hd215148215286%_
                                                           _%tl215149215289%_
                                                           _%e215150215292%_
                                                           _%hd215151215296%_
                                                           _%tl215152215299%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g215132215174%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl215149215289%_))
                                                      (_%__kont220667220668%_
                                                       _%hd215148215286%_
                                                       _%hd215145215276%_
                                                       _%hd215142215266%_
                                                       _%hd215139215256%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g215132215174%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g215132215174%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g215132215174%_)))))
                          (let () (declare (not safe)) (_%g215132215174%_)))))
                  (let () (declare (not safe)) (_%g215132215174%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx215331%_)
        (let* ((_%g215335215370%_
                (lambda (_%g215336215366%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215336215366%_))))
               (_%g215334215483%_
                (lambda (_%g215336215374%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215336215374%_))
                      (let ((_%e215340215377%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215336215374%_))))
                        (let ((_%hd215341215381%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215340215377%_)))
                              (_%tl215342215384%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215340215377%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl215342215384%_))
                              (let ((_g221354_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl215342215384%_
                                        '0))))
                                (begin
                                  (let ((_g221355_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221354_)
                                               (##values-length _g221354_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221355_ 2)))
                                        (error "Context expects 2 values"
                                               _g221355_)))
                                  (let ((_%target215343215387%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221354_ 0)))
                                        (_%tl215345215390%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221354_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl215345215390%_))
                                        (letrec ((_%loop215346215393%_
                                                  (lambda (_%hd215344215397%_
                                                           _%symbol215350215400%_
                                                           _%method215351215401%_
                                                           _%type-t215352215402%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd215344215397%_))
                                                        (let ((_%e215347215404%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd215344215397%_))))
                  (let ((_%lp-hd215348215408%_
                         (let ()
                           (declare (not safe))
                           (##car _%e215347215404%_)))
                        (_%lp-tl215349215411%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e215347215404%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd215348215408%_))
                        (let ((_%e215356215414%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd215348215408%_))))
                          (let ((_%hd215357215418%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215356215414%_)))
                                (_%tl215358215421%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215356215414%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl215358215421%_))
                                (let ((_%e215359215424%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl215358215421%_))))
                                  (let ((_%hd215360215428%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e215359215424%_)))
                                        (_%tl215361215431%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e215359215424%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl215361215431%_))
                                        (let ((_%e215362215434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl215361215431%_))))
                                          (let ((_%hd215363215438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e215362215434%_)))
                                                (_%tl215364215441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e215362215434%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215364215441%_))
                                                (_%loop215346215393%_
                                                 _%lp-tl215349215411%_
                                                 (cons _%hd215363215438%_
                                                       _%symbol215350215400%_)
                                                 (cons _%hd215360215428%_
                                                       _%method215351215401%_)
                                                 (cons _%hd215357215418%_
                                                       _%type-t215352215402%_))
                                                (_%g215335215370%_
                                                 _%g215336215374%_))))
                                        (_%g215335215370%_
                                         _%g215336215374%_))))
                                (_%g215335215370%_ _%g215336215374%_))))
                        (_%g215335215370%_ _%g215336215374%_))))
                (let ((_%symbol215353215444%_ (reverse _%symbol215350215400%_))
                      (_%method215354215446%_ (reverse _%method215351215401%_))
                      (_%type-t215355215447%_
                       (reverse _%type-t215352215402%_)))
                  ((lambda (_%g215337215449%_
                            _%g215338215451%_
                            _%g215339215452%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g215337215449%_
                                _%g215338215451%_
                                _%g215339215452%_))
                             (let ((__tmp221356
                                    (lambda (_%g215468215473%_
                                             _%g215469215476%_
                                             _%g215470215478%_
                                             _%g215471215480%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g215470215478%_
                                                        (cons _%g215469215476%_
                                                              (cons _%g215468215473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g215471215480%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp221356
                                '()
                                _%g215337215449%_
                                _%g215338215451%_
                                _%g215339215452%_)))))
                   _%symbol215353215444%_
                   _%method215354215446%_
                   _%type-t215355215447%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop215346215393%_
                                           _%target215343215387%_
                                           '()
                                           '()
                                           '()))
                                        (_%g215335215370%_
                                         _%g215336215374%_)))))
                              (_%g215335215370%_ _%g215336215374%_))))
                      (_%g215335215370%_ _%g215336215374%_)))))
          (_%g215334215483%_ _%$stx215331%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx215488%_)
        (let* ((_%g215492215525%_
                (lambda (_%g215493215521%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215493215521%_))))
               (_%g215491215635%_
                (lambda (_%g215493215529%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215493215529%_))
                      (let ((_%e215497215532%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215493215529%_))))
                        (let ((_%hd215498215536%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215497215532%_)))
                              (_%tl215499215539%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215497215532%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215499215539%_))
                              (let ((_%e215500215542%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215499215539%_))))
                                (let ((_%hd215501215546%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215500215542%_)))
                                      (_%tl215502215549%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215500215542%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl215502215549%_))
                                      (let ((_g221357_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl215502215549%_
                                                '0))))
                                        (begin
                                          (let ((_g221358_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g221357_)
                                                       (##values-length
                                                        _g221357_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g221358_ 2)))
                                                (error "Context expects 2 values"
                                                       _g221358_)))
                                          (let ((_%target215503215552%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g221357_ 0)))
                                                (_%tl215505215555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g221357_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215505215555%_))
                                                (letrec ((_%loop215506215558%_
                                                          (lambda (_%hd215504215562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol215510215565%_
                           _%method215511215566%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd215504215562%_))
                        (let ((_%e215507215568%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd215504215562%_))))
                          (let ((_%lp-hd215508215572%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215507215568%_)))
                                (_%lp-tl215509215575%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215507215568%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd215508215572%_))
                                (let ((_%e215514215578%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd215508215572%_))))
                                  (let ((_%hd215515215582%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e215514215578%_)))
                                        (_%tl215516215585%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e215514215578%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl215516215585%_))
                                        (let ((_%e215517215588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl215516215585%_))))
                                          (let ((_%hd215518215592%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e215517215588%_)))
                                                (_%tl215519215595%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e215517215588%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215519215595%_))
                                                (_%loop215506215558%_
                                                 _%lp-tl215509215575%_
                                                 (cons _%hd215518215592%_
                                                       _%symbol215510215565%_)
                                                 (cons _%hd215515215582%_
                                                       _%method215511215566%_))
                                                (_%g215492215525%_
                                                 _%g215493215529%_))))
                                        (_%g215492215525%_
                                         _%g215493215529%_))))
                                (_%g215492215525%_ _%g215493215529%_))))
                        (let ((_%symbol215512215598%_
                               (reverse _%symbol215510215565%_))
                              (_%method215513215600%_
                               (reverse _%method215511215566%_)))
                          ((lambda (_%g215494215602%_
                                    _%g215495215604%_
                                    _%g215496215605%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g215494215602%_
                                        _%g215495215604%_))
                                     (let ((__tmp221359
                                            (lambda (_%g215623215627%_
                                                     _%g215624215630%_
                                                     _%g215625215632%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g215496215605%_
                                                                (cons _%g215624215630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g215623215627%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g215625215632%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp221359
                                        '()
                                        _%g215494215602%_
                                        _%g215495215604%_)))))
                           _%symbol215512215598%_
                           _%method215513215600%_
                           _%hd215501215546%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop215506215558%_
                                                   _%target215503215552%_
                                                   '()
                                                   '()))
                                                (_%g215492215525%_
                                                 _%g215493215529%_)))))
                                      (_%g215492215525%_ _%g215493215529%_))))
                              (_%g215492215525%_ _%g215493215529%_))))
                      (_%g215492215525%_ _%g215493215529%_)))))
          (_%g215491215635%_ _%$stx215488%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx215640%_)
        (let* ((_%g215644215658%_
                (lambda (_%g215645215654%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215645215654%_))))
               (_%g215643215699%_
                (lambda (_%g215645215662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215645215662%_))
                      (let ((_%e215647215665%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215645215662%_))))
                        (let ((_%hd215648215669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215647215665%_)))
                              (_%tl215649215672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215647215665%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215649215672%_))
                              (let ((_%e215650215675%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215649215672%_))))
                                (let ((_%hd215651215679%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215650215675%_)))
                                      (_%tl215652215682%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215650215675%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215652215682%_))
                                      ((lambda (_%g215646215685%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g215646215685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd215651215679%_)
                                      (_%g215644215658%_ _%g215645215662%_))))
                              (_%g215644215658%_ _%g215645215662%_))))
                      (_%g215644215658%_ _%g215645215662%_)))))
          (_%g215643215699%_ _%$stx215640%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx215703%_)
        (let* ((_%g215707215761%_
                (lambda (_%g215708215757%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215708215757%_))))
               (_%g215706215942%_
                (lambda (_%g215708215765%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215708215765%_))
                      (let ((_%e215720215768%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215708215765%_))))
                        (let ((_%hd215721215772%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215720215768%_)))
                              (_%tl215722215775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215720215768%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215722215775%_))
                              (let ((_%e215723215778%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215722215775%_))))
                                (let ((_%hd215724215782%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215723215778%_)))
                                      (_%tl215725215785%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215723215778%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215725215785%_))
                                      (let ((_%e215726215788%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl215725215785%_))))
                                        (let ((_%hd215727215792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215726215788%_)))
                                              (_%tl215728215795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215726215788%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl215728215795%_))
                                              (let ((_%e215729215798%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl215728215795%_))))
                                                (let ((_%hd215730215802%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e215729215798%_)))
                                                      (_%tl215731215805%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e215729215798%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl215731215805%_))
                                                      (let ((_%e215732215808%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl215731215805%_))))
                (let ((_%hd215733215812%_
                       (let () (declare (not safe)) (##car _%e215732215808%_)))
                      (_%tl215734215815%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e215732215808%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl215734215815%_))
                      (let ((_%e215735215818%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl215734215815%_))))
                        (let ((_%hd215736215822%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215735215818%_)))
                              (_%tl215737215825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215735215818%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215737215825%_))
                              (let ((_%e215738215828%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215737215825%_))))
                                (let ((_%hd215739215832%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215738215828%_)))
                                      (_%tl215740215835%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215738215828%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215740215835%_))
                                      (let ((_%e215741215838%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl215740215835%_))))
                                        (let ((_%hd215742215842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215741215838%_)))
                                              (_%tl215743215845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215741215838%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl215743215845%_))
                                              (let ((_%e215744215848%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl215743215845%_))))
                                                (let ((_%hd215745215852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e215744215848%_)))
                                                      (_%tl215746215855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e215744215848%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl215746215855%_))
                                                      (let ((_%e215747215858%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl215746215855%_))))
                (let ((_%hd215748215862%_
                       (let () (declare (not safe)) (##car _%e215747215858%_)))
                      (_%tl215749215865%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e215747215858%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl215749215865%_))
                      (let ((_%e215750215868%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl215749215865%_))))
                        (let ((_%hd215751215872%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215750215868%_)))
                              (_%tl215752215875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215750215868%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215752215875%_))
                              (let ((_%e215753215878%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215752215875%_))))
                                (let ((_%hd215754215882%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215753215878%_)))
                                      (_%tl215755215885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215753215878%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215755215885%_))
                                      ((lambda (_%g215709215888%_
                                                _%g215710215890%_
                                                _%g215711215891%_
                                                _%g215712215892%_
                                                _%g215713215893%_
                                                _%g215714215894%_
                                                _%g215715215895%_
                                                _%g215716215896%_
                                                _%g215717215897%_
                                                _%g215718215898%_
                                                _%g215719215899%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g215719215899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g215718215898%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g215717215897%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g215716215896%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g215715215895%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g215714215894%_ '()))
                                           (cons _%g215713215893%_
                                                 (cons _%g215712215892%_
                                                       (cons _%g215711215891%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g215710215890%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g215709215888%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd215754215882%_
                                       _%hd215751215872%_
                                       _%hd215748215862%_
                                       _%hd215745215852%_
                                       _%hd215742215842%_
                                       _%hd215739215832%_
                                       _%hd215736215822%_
                                       _%hd215733215812%_
                                       _%hd215730215802%_
                                       _%hd215727215792%_
                                       _%hd215724215782%_)
                                      (_%g215707215761%_ _%g215708215765%_))))
                              (_%g215707215761%_ _%g215708215765%_))))
                      (_%g215707215761%_ _%g215708215765%_))))
              (_%g215707215761%_ _%g215708215765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g215707215761%_
                                               _%g215708215765%_))))
                                      (_%g215707215761%_ _%g215708215765%_))))
                              (_%g215707215761%_ _%g215708215765%_))))
                      (_%g215707215761%_ _%g215708215765%_))))
              (_%g215707215761%_ _%g215708215765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g215707215761%_
                                               _%g215708215765%_))))
                                      (_%g215707215761%_ _%g215708215765%_))))
                              (_%g215707215761%_ _%g215708215765%_))))
                      (_%g215707215761%_ _%g215708215765%_)))))
          (_%g215706215942%_ _%$stx215703%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx215946%_)
        (let* ((_%g215950215964%_
                (lambda (_%g215951215960%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215951215960%_))))
               (_%g215949216005%_
                (lambda (_%g215951215968%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215951215968%_))
                      (let ((_%e215953215971%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215951215968%_))))
                        (let ((_%hd215954215975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215953215971%_)))
                              (_%tl215955215978%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215953215971%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215955215978%_))
                              (let ((_%e215956215981%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215955215978%_))))
                                (let ((_%hd215957215985%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215956215981%_)))
                                      (_%tl215958215988%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215956215981%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215958215988%_))
                                      ((lambda (_%g215952215991%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g215952215991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd215957215985%_)
                                      (_%g215950215964%_ _%g215951215968%_))))
                              (_%g215950215964%_ _%g215951215968%_))))
                      (_%g215950215964%_ _%g215951215968%_)))))
          (_%g215949216005%_ _%$stx215946%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx216009%_)
        (let* ((_%g216013216027%_
                (lambda (_%g216014216023%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216014216023%_))))
               (_%g216012216068%_
                (lambda (_%g216014216031%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216014216031%_))
                      (let ((_%e216016216034%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216014216031%_))))
                        (let ((_%hd216017216038%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216016216034%_)))
                              (_%tl216018216041%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216016216034%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216018216041%_))
                              (let ((_%e216019216044%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216018216041%_))))
                                (let ((_%hd216020216048%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216019216044%_)))
                                      (_%tl216021216051%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216019216044%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216021216051%_))
                                      ((lambda (_%g216015216054%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g216015216054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd216020216048%_)
                                      (_%g216013216027%_ _%g216014216031%_))))
                              (_%g216013216027%_ _%g216014216031%_))))
                      (_%g216013216027%_ _%g216014216031%_)))))
          (_%g216012216068%_ _%$stx216009%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx216072%_)
        (let* ((_%g216076216098%_
                (lambda (_%g216077216094%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216077216094%_))))
               (_%g216075216167%_
                (lambda (_%g216077216102%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216077216102%_))
                      (let ((_%e216081216105%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216077216102%_))))
                        (let ((_%hd216082216109%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216081216105%_)))
                              (_%tl216083216112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216081216105%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216083216112%_))
                              (let ((_%e216084216115%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216083216112%_))))
                                (let ((_%hd216085216119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216084216115%_)))
                                      (_%tl216086216122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216084216115%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216086216122%_))
                                      (let ((_%e216087216125%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216086216122%_))))
                                        (let ((_%hd216088216129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216087216125%_)))
                                              (_%tl216089216132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216087216125%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216089216132%_))
                                              (let ((_%e216090216135%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl216089216132%_))))
                                                (let ((_%hd216091216139%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216090216135%_)))
                                                      (_%tl216092216142%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216090216135%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216092216142%_))
                                                      ((lambda (_%g216078216145%_
                                                                _%g216079216147%_
                                                                _%g216080216148%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g216080216148%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g216079216147%_ '()))
                                   (cons _%g216078216145%_ '())))))
               _%hd216091216139%_
               _%hd216088216129%_
               _%hd216085216119%_)
              (_%g216076216098%_ _%g216077216102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g216076216098%_
                                               _%g216077216102%_))))
                                      (_%g216076216098%_ _%g216077216102%_))))
                              (_%g216076216098%_ _%g216077216102%_))))
                      (_%g216076216098%_ _%g216077216102%_)))))
          (_%g216075216167%_ _%$stx216072%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx216171%_)
        (let* ((_%g216175216197%_
                (lambda (_%g216176216193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216176216193%_))))
               (_%g216174216266%_
                (lambda (_%g216176216201%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216176216201%_))
                      (let ((_%e216180216204%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216176216201%_))))
                        (let ((_%hd216181216208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216180216204%_)))
                              (_%tl216182216211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216180216204%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216182216211%_))
                              (let ((_%e216183216214%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216182216211%_))))
                                (let ((_%hd216184216218%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216183216214%_)))
                                      (_%tl216185216221%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216183216214%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216185216221%_))
                                      (let ((_%e216186216224%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216185216221%_))))
                                        (let ((_%hd216187216228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216186216224%_)))
                                              (_%tl216188216231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216186216224%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216188216231%_))
                                              (let ((_%e216189216234%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl216188216231%_))))
                                                (let ((_%hd216190216238%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216189216234%_)))
                                                      (_%tl216191216241%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216189216234%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216191216241%_))
                                                      ((lambda (_%g216177216244%_
                                                                _%g216178216246%_
                                                                _%g216179216247%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g216179216247%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g216178216246%_ '()))
                                   (cons _%g216177216244%_ '())))))
               _%hd216190216238%_
               _%hd216187216228%_
               _%hd216184216218%_)
              (_%g216175216197%_ _%g216176216201%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g216175216197%_
                                               _%g216176216201%_))))
                                      (_%g216175216197%_ _%g216176216201%_))))
                              (_%g216175216197%_ _%g216176216201%_))))
                      (_%g216175216197%_ _%g216176216201%_)))))
          (_%g216174216266%_ _%$stx216171%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx216270%_)
        (let* ((_%g216274216288%_
                (lambda (_%g216275216284%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216275216284%_))))
               (_%g216273216329%_
                (lambda (_%g216275216292%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216275216292%_))
                      (let ((_%e216277216295%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216275216292%_))))
                        (let ((_%hd216278216299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216277216295%_)))
                              (_%tl216279216302%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216277216295%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216279216302%_))
                              (let ((_%e216280216305%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216279216302%_))))
                                (let ((_%hd216281216309%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216280216305%_)))
                                      (_%tl216282216312%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216280216305%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216282216312%_))
                                      ((lambda (_%g216276216315%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g216276216315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd216281216309%_)
                                      (_%g216274216288%_ _%g216275216292%_))))
                              (_%g216274216288%_ _%g216275216292%_))))
                      (_%g216274216288%_ _%g216275216292%_)))))
          (_%g216273216329%_ _%$stx216270%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx216333%_)
        (let* ((_%g216337216355%_
                (lambda (_%g216338216351%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216338216351%_))))
               (_%g216336216410%_
                (lambda (_%g216338216359%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216338216359%_))
                      (let ((_%e216341216362%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216338216359%_))))
                        (let ((_%hd216342216366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216341216362%_)))
                              (_%tl216343216369%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216341216362%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216343216369%_))
                              (let ((_%e216344216372%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216343216369%_))))
                                (let ((_%hd216345216376%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216344216372%_)))
                                      (_%tl216346216379%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216344216372%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216346216379%_))
                                      (let ((_%e216347216382%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216346216379%_))))
                                        (let ((_%hd216348216386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216347216382%_)))
                                              (_%tl216349216389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216347216382%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216349216389%_))
                                              ((lambda (_%g216339216392%_
                                                        _%g216340216394%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g216340216394%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g216339216392%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd216348216386%_
                                               _%hd216345216376%_)
                                              (_%g216337216355%_
                                               _%g216338216359%_))))
                                      (_%g216337216355%_ _%g216338216359%_))))
                              (_%g216337216355%_ _%g216338216359%_))))
                      (_%g216337216355%_ _%g216338216359%_)))))
          (_%g216336216410%_ _%$stx216333%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx216414%_)
        (let* ((_%__stx220730220731%_ _%$stx216414%_)
               (_%g216421216482%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220730220731%_)))))
          (let ((_%__kont220733220734%_
                 (lambda (_%g216423216720%_ _%g216424216722%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g216424216722%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g216423216720%_ '()))
                                     '())))))
                (_%__kont220735220736%_
                 (lambda (_%g216434216659%_
                          _%g216435216661%_
                          _%g216436216662%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g216436216662%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g216435216661%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g216434216659%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont220737220738%_
                 (lambda (_%g216453216583%_ _%g216454216585%_)
                   (cons _%g216454216585%_
                         (cons _%g216453216583%_ (cons '#f '())))))
                (_%__kont220739220740%_
                 (lambda (_%g216461216533%_
                          _%g216462216535%_
                          _%g216463216536%_)
                   (cons _%g216463216536%_
                         (cons _%g216462216535%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g216461216533%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx220730220731%_))
                (let ((_%e216425216690%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx220730220731%_))))
                  (let ((_%tl216427216697%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216425216690%_)))
                        (_%hd216426216694%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216425216690%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl216427216697%_))
                        (let ((_%e216428216700%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl216427216697%_))))
                          (let ((_%tl216430216707%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e216428216700%_)))
                                (_%hd216429216704%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e216428216700%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl216430216707%_))
                                (let ((_%e216431216710%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl216430216707%_))))
                                  (let ((_%tl216433216717%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e216431216710%_)))
                                        (_%hd216432216714%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e216431216710%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216433216717%_))
                                        (_%__kont220733220734%_
                                         _%hd216432216714%_
                                         _%hd216429216704%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl216433216717%_))
                                            (let ((_%e216446216635%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl216433216717%_))))
                                              (let ((_%tl216448216642%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e216446216635%_)))
                                                    (_%hd216447216639%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e216446216635%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd216447216639%_))
                                                    (let ((_%e216449216645%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd216447216639%_))))
                                                      (if (equal? _%e216449216645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216448216642%_))
                      (let ((_%e216450216649%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl216448216642%_))))
                        (let ((_%tl216452216656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216450216649%_)))
                              (_%hd216451216653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216450216649%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216452216656%_))
                              (_%__kont220735220736%_
                               _%hd216451216653%_
                               _%hd216432216714%_
                               _%hd216429216704%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd216432216714%_))
                                  (let ((_%e216473216519%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216432216714%_))))
                                    (declare (not safe))
                                    (_%g216421216482%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216421216482%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd216432216714%_))
                          (let ((_%e216473216519%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd216432216714%_))))
                            (if (equal? _%e216473216519%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl216448216642%_))
                                    (_%__kont220739220740%_
                                     _%hd216447216639%_
                                     _%hd216429216704%_
                                     _%hd216426216694%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g216421216482%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g216421216482%_))))
                          (let () (declare (not safe)) (_%g216421216482%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd216432216714%_))
                      (let ((_%e216473216519%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd216432216714%_))))
                        (if (equal? _%e216473216519%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl216448216642%_))
                                (_%__kont220739220740%_
                                 _%hd216447216639%_
                                 _%hd216429216704%_
                                 _%hd216426216694%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g216421216482%_)))
                            (let () (declare (not safe)) (_%g216421216482%_))))
                      (let () (declare (not safe)) (_%g216421216482%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd216432216714%_))
                                                        (let ((_%e216473216519%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd216432216714%_))))
                  (if (equal? _%e216473216519%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216448216642%_))
                          (_%__kont220739220740%_
                           _%hd216447216639%_
                           _%hd216429216704%_
                           _%hd216426216694%_)
                          (let () (declare (not safe)) (_%g216421216482%_)))
                      (let () (declare (not safe)) (_%g216421216482%_))))
                (let () (declare (not safe)) (_%g216421216482%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd216432216714%_))
                                                (let ((_%e216473216519%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd216432216714%_))))
                                                  (declare (not safe))
                                                  (_%g216421216482%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g216421216482%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl216430216707%_))
                                    (_%__kont220737220738%_
                                     _%hd216429216704%_
                                     _%hd216426216694%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g216421216482%_))))))
                        (let () (declare (not safe)) (_%g216421216482%_)))))
                (let () (declare (not safe)) (_%g216421216482%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx216741%_)
        (let* ((_%g216745216774%_
                (lambda (_%g216746216770%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216746216770%_))))
               (_%g216744216879%_
                (lambda (_%g216746216778%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216746216778%_))
                      (let ((_%e216748216781%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216746216778%_))))
                        (let ((_%hd216749216785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216748216781%_)))
                              (_%tl216750216788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216748216781%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl216750216788%_))
                              (let ((_g221360_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl216750216788%_
                                        '0))))
                                (begin
                                  (let ((_g221361_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221360_)
                                               (##values-length _g221360_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221361_ 2)))
                                        (error "Context expects 2 values"
                                               _g221361_)))
                                  (let ((_%target216751216791%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221360_ 0)))
                                        (_%tl216753216794%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221360_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216753216794%_))
                                        (letrec ((_%loop216754216797%_
                                                  (lambda (_%hd216752216801%_
                                                           _%clause216758216804%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd216752216801%_))
                                                        (let ((_%e216755216806%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd216752216801%_))))
                  (let ((_%lp-hd216756216810%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216755216806%_)))
                        (_%lp-tl216757216813%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216755216806%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd216756216810%_))
                        (let ((_g221362_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd216756216810%_
                                  '0))))
                          (begin
                            (let ((_g221363_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g221362_)
                                         (##values-length _g221362_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g221363_ 2)))
                                  (error "Context expects 2 values"
                                         _g221363_)))
                            (let ((_%target216760216816%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g221362_ 0)))
                                  (_%tl216762216819%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g221362_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216762216819%_))
                                  (letrec ((_%loop216763216822%_
                                            (lambda (_%hd216761216826%_
                                                     _%clause216767216829%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd216761216826%_))
                                                  (let ((_%e216764216831%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd216761216826%_))))
                                                    (let ((_%lp-hd216765216835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216764216831%_)))
                                                          (_%lp-tl216766216838%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216764216831%_))))
                                                      (_%loop216763216822%_
                                                       _%lp-tl216766216838%_
                                                       (cons _%lp-hd216765216835%_
                                                             _%clause216767216829%_))))
                                                  (let ((_%clause216768216841%_
                                                         (reverse _%clause216767216829%_)))
                                                    (_%loop216754216797%_
                                                     _%lp-tl216757216813%_
                                                     (cons _%clause216768216841%_
                                                           _%clause216758216804%_)))))))
                                    (_%loop216763216822%_
                                     _%target216760216816%_
                                     '()))
                                  (_%g216745216774%_ _%g216746216778%_)))))
                        (_%g216745216774%_ _%g216746216778%_))))
                (let ((_%clause216759216844%_
                       (reverse _%clause216758216804%_)))
                  ((lambda (_%g216747216847%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp221364
                                              (lambda (_%g216862216867%_
                                                       _%g216863216870%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp221365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g216864216873%_ _%g216865216876%_)
                             (cons _%g216864216873%_ _%g216865216876%_))))
                      (declare (not safe))
                      (__foldr1 __tmp221365 '() _%g216862216867%_)))
              _%g216863216870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp221364
                                          '()
                                          _%g216747216847%_)))
                                 '())))
                   _%clause216759216844%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop216754216797%_
                                           _%target216751216791%_
                                           '()))
                                        (_%g216745216774%_
                                         _%g216746216778%_)))))
                              (_%g216745216774%_ _%g216746216778%_))))
                      (_%g216745216774%_ _%g216746216778%_)))))
          (_%g216744216879%_ _%$stx216741%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx216885%_)
        (let* ((_%g216889216907%_
                (lambda (_%g216890216903%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216890216903%_))))
               (_%g216888216962%_
                (lambda (_%g216890216911%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216890216911%_))
                      (let ((_%e216893216914%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216890216911%_))))
                        (let ((_%hd216894216918%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216893216914%_)))
                              (_%tl216895216921%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216893216914%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216895216921%_))
                              (let ((_%e216896216924%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216895216921%_))))
                                (let ((_%hd216897216928%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216896216924%_)))
                                      (_%tl216898216931%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216896216924%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216898216931%_))
                                      (let ((_%e216899216934%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216898216931%_))))
                                        (let ((_%hd216900216938%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216899216934%_)))
                                              (_%tl216901216941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216899216934%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216901216941%_))
                                              ((lambda (_%g216891216944%_
                                                        _%g216892216946%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g216892216946%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g216891216944%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd216900216938%_
                                               _%hd216897216928%_)
                                              (_%g216889216907%_
                                               _%g216890216911%_))))
                                      (_%g216889216907%_ _%g216890216911%_))))
                              (_%g216889216907%_ _%g216890216911%_))))
                      (_%g216889216907%_ _%g216890216911%_)))))
          (_%g216888216962%_ _%$stx216885%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx216966%_)
        (let* ((_%g216970216988%_
                (lambda (_%g216971216984%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216971216984%_))))
               (_%g216969217043%_
                (lambda (_%g216971216992%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216971216992%_))
                      (let ((_%e216974216995%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216971216992%_))))
                        (let ((_%hd216975216999%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216974216995%_)))
                              (_%tl216976217002%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216974216995%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216976217002%_))
                              (let ((_%e216977217005%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216976217002%_))))
                                (let ((_%hd216978217009%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216977217005%_)))
                                      (_%tl216979217012%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216977217005%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216979217012%_))
                                      (let ((_%e216980217015%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216979217012%_))))
                                        (let ((_%hd216981217019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216980217015%_)))
                                              (_%tl216982217022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216980217015%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216982217022%_))
                                              ((lambda (_%g216972217025%_
                                                        _%g216973217027%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g216973217027%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g216972217025%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd216981217019%_
                                               _%hd216978217009%_)
                                              (_%g216970216988%_
                                               _%g216971216992%_))))
                                      (_%g216970216988%_ _%g216971216992%_))))
                              (_%g216970216988%_ _%g216971216992%_))))
                      (_%g216970216988%_ _%g216971216992%_)))))
          (_%g216969217043%_ _%$stx216966%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx217047%_)
        (let* ((_%g217051217080%_
                (lambda (_%g217052217076%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g217052217076%_))))
               (_%g217050217176%_
                (lambda (_%g217052217084%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g217052217084%_))
                      (let ((_%e217055217087%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g217052217084%_))))
                        (let ((_%hd217056217091%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217055217087%_)))
                              (_%tl217057217094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217055217087%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl217057217094%_))
                              (let ((_g221366_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl217057217094%_
                                        '0))))
                                (begin
                                  (let ((_g221367_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221366_)
                                               (##values-length _g221366_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221367_ 2)))
                                        (error "Context expects 2 values"
                                               _g221367_)))
                                  (let ((_%target217058217097%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221366_ 0)))
                                        (_%tl217060217100%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221366_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl217060217100%_))
                                        (letrec ((_%loop217061217103%_
                                                  (lambda (_%hd217059217107%_
                                                           _%rule217065217110%_
                                                           _%proc217066217111%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd217059217107%_))
                                                        (let ((_%e217062217113%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd217059217107%_))))
                  (let ((_%lp-hd217063217117%_
                         (let ()
                           (declare (not safe))
                           (##car _%e217062217113%_)))
                        (_%lp-tl217064217120%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e217062217113%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd217063217117%_))
                        (let ((_%e217069217123%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd217063217117%_))))
                          (let ((_%hd217070217127%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e217069217123%_)))
                                (_%tl217071217130%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e217069217123%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl217071217130%_))
                                (let ((_%e217072217133%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl217071217130%_))))
                                  (let ((_%hd217073217137%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217072217133%_)))
                                        (_%tl217074217140%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217072217133%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl217074217140%_))
                                        (_%loop217061217103%_
                                         _%lp-tl217064217120%_
                                         (cons _%hd217073217137%_
                                               _%rule217065217110%_)
                                         (cons _%hd217070217127%_
                                               _%proc217066217111%_))
                                        (_%g217051217080%_
                                         _%g217052217084%_))))
                                (_%g217051217080%_ _%g217052217084%_))))
                        (_%g217051217080%_ _%g217052217084%_))))
                (let ((_%rule217067217143%_ (reverse _%rule217065217110%_))
                      (_%proc217068217145%_ (reverse _%proc217066217111%_)))
                  ((lambda (_%g217053217147%_ _%g217054217149%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g217053217147%_
                                _%g217054217149%_))
                             (let ((__tmp221368
                                    (lambda (_%g217164217168%_
                                             _%g217165217171%_
                                             _%g217166217173%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g217165217171%_
                                                        (cons _%g217164217168%_
                                                              '())))
                                            _%g217166217173%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp221368
                                '()
                                _%g217053217147%_
                                _%g217054217149%_)))))
                   _%rule217067217143%_
                   _%proc217068217145%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop217061217103%_
                                           _%target217058217097%_
                                           '()
                                           '()))
                                        (_%g217051217080%_
                                         _%g217052217084%_)))))
                              (_%g217051217080%_ _%g217052217084%_))))
                      (_%g217051217080%_ _%g217052217084%_)))))
          (_%g217050217176%_ _%$stx217047%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx217181%_)
        (let* ((_%g217185217203%_
                (lambda (_%g217186217199%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g217186217199%_))))
               (_%g217184217258%_
                (lambda (_%g217186217207%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g217186217207%_))
                      (let ((_%e217189217210%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g217186217207%_))))
                        (let ((_%hd217190217214%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217189217210%_)))
                              (_%tl217191217217%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217189217210%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217191217217%_))
                              (let ((_%e217192217220%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl217191217217%_))))
                                (let ((_%hd217193217224%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217192217220%_)))
                                      (_%tl217194217227%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217192217220%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl217194217227%_))
                                      (let ((_%e217195217230%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl217194217227%_))))
                                        (let ((_%hd217196217234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217195217230%_)))
                                              (_%tl217197217237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217195217230%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl217197217237%_))
                                              ((lambda (_%g217187217240%_
                                                        _%g217188217242%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g217188217242%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%g217187217240%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g217188217242%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd217196217234%_
                                               _%hd217193217224%_)
                                              (_%g217185217203%_
                                               _%g217186217207%_))))
                                      (_%g217185217203%_ _%g217186217207%_))))
                              (_%g217185217203%_ _%g217186217207%_))))
                      (_%g217185217203%_ _%g217186217207%_)))))
          (_%g217184217258%_ _%$stx217181%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx217262%_)
        (let* ((_%__stx220848220849%_ _%$stx217262%_)
               (_%g217267217292%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220848220849%_)))))
          (let ((_%__kont220851220852%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont220853220854%_
                 (lambda (_%g217272217339%_
                          _%g217273217341%_
                          _%g217274217342%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g217274217342%_
                                           (cons _%g217273217341%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g217272217339%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx220848220849%_))
                (let ((_%e217269217368%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx220848220849%_))))
                  (let ((_%tl217271217375%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e217269217368%_)))
                        (_%hd217270217372%_
                         (let ()
                           (declare (not safe))
                           (##car _%e217269217368%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl217271217375%_))
                        (_%__kont220851220852%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl217271217375%_))
                            (let ((_%e217278217309%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl217271217375%_))))
                              (let ((_%tl217280217316%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e217278217309%_)))
                                    (_%hd217279217313%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e217278217309%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd217279217313%_))
                                    (let ((_%e217281217319%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd217279217313%_))))
                                      (let ((_%tl217283217326%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e217281217319%_)))
                                            (_%hd217282217323%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e217281217319%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl217283217326%_))
                                            (let ((_%e217284217329%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl217283217326%_))))
                                              (let ((_%tl217286217336%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217284217329%_)))
                                                    (_%hd217285217333%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217284217329%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl217286217336%_))
                                                    (_%__kont220853220854%_
                                                     _%tl217280217316%_
                                                     _%hd217285217333%_
                                                     _%hd217282217323%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g217267217292%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g217267217292%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g217267217292%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g217267217292%_))))))
                (let () (declare (not safe)) (_%g217267217292%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx217386%_)
        (let* ((_%__stx220892220893%_ _%$stx217386%_)
               (_%g217391217422%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220892220893%_)))))
          (let ((_%__kont220895220896%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont220897220898%_
                 (lambda (_%g217396217487%_
                          _%g217397217489%_
                          _%g217398217490%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g217398217490%_
                                           (let ((__tmp221369
                                                  (lambda (_%g217510217513%_
                                                           _%g217511217516%_)
                                                    (cons _%g217510217513%_
                                                          _%g217511217516%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp221369
                                              '()
                                              _%g217397217489%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g217396217487%_)
                                     '()))))))
            (let ((_%__match220935220936%_
                   (lambda (_%e217399217429%_
                            _%hd217400217433%_
                            _%tl217401217436%_
                            _%e217402217439%_
                            _%hd217403217443%_
                            _%tl217404217446%_
                            _%e217405217449%_
                            _%hd217406217453%_
                            _%tl217407217456%_
                            _%__splice220899220900%_
                            _%target217408217459%_
                            _%tl217410217462%_)
                     (letrec ((_%loop217411217465%_
                               (lambda (_%hd217409217469%_ _%sig217415217472%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd217409217469%_))
                                     (let ((_%e217412217474%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd217409217469%_))))
                                       (let ((_%lp-tl217414217481%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e217412217474%_)))
                                             (_%lp-hd217413217478%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e217412217474%_))))
                                         (_%loop217411217465%_
                                          _%lp-tl217414217481%_
                                          (cons _%lp-hd217413217478%_
                                                _%sig217415217472%_))))
                                     (let ((_%sig217416217484%_
                                            (reverse _%sig217415217472%_)))
                                       (_%__kont220897220898%_
                                        _%tl217404217446%_
                                        _%sig217416217484%_
                                        _%hd217406217453%_))))))
                       (_%loop217411217465%_ _%target217408217459%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220892220893%_))
                  (let ((_%e217393217526%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220892220893%_))))
                    (let ((_%tl217395217533%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217393217526%_)))
                          (_%hd217394217530%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217393217526%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217395217533%_))
                          (_%__kont220895220896%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217395217533%_))
                              (let ((_%e217402217439%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl217395217533%_))))
                                (let ((_%tl217404217446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217402217439%_)))
                                      (_%hd217403217443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217402217439%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd217403217443%_))
                                      (let ((_%e217405217449%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd217403217443%_))))
                                        (let ((_%tl217407217456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217405217449%_)))
                                              (_%hd217406217453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217405217449%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl217407217456%_))
                                              (let ((_%__splice220899220900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl217407217456%_
                                                        '0))))
                                                (let ((_%tl217410217462%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220899220900%_
                                                          '1)))
                                                      (_%target217408217459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220899220900%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl217410217462%_))
                                                      (_%__match220935220936%_
                                                       _%e217393217526%_
                                                       _%hd217394217530%_
                                                       _%tl217395217533%_
                                                       _%e217402217439%_
                                                       _%hd217403217443%_
                                                       _%tl217404217446%_
                                                       _%e217405217449%_
                                                       _%hd217406217453%_
                                                       _%tl217407217456%_
                                                       _%__splice220899220900%_
                                                       _%target217408217459%_
                                                       _%tl217410217462%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g217391217422%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g217391217422%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g217391217422%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g217391217422%_))))))
                  (let () (declare (not safe)) (_%g217391217422%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx217545%_)
        (let* ((_%__stx220938220939%_ _%$stx217545%_)
               (_%g217550217597%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220938220939%_)))))
          (let ((_%__kont220941220942%_
                 (lambda (_%g217552217755%_ _%g217553217757%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g217553217757%_
                               (let ((__tmp221370
                                      (lambda (_%g217777217780%_
                                               _%g217778217783%_)
                                        (cons _%g217777217780%_
                                              _%g217778217783%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp221370
                                  '()
                                  _%g217552217755%_))))))
                (_%__kont220945220946%_
                 (lambda (_%g217575217652%_ _%g217576217654%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g217576217654%_
                               (let ((__tmp221371
                                      (lambda (_%g217671217674%_
                                               _%g217672217677%_)
                                        (cons _%g217671217674%_
                                              _%g217672217677%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp221371
                                  '()
                                  _%g217575217652%_)))))))
            (let* ((_%__match221005221006%_
                    (lambda (_%e217577217604%_
                             _%hd217578217608%_
                             _%tl217579217611%_
                             _%e217580217614%_
                             _%hd217581217618%_
                             _%tl217582217621%_
                             _%__splice220947220948%_
                             _%target217583217624%_
                             _%tl217585217627%_)
                      (letrec ((_%loop217586217630%_
                                (lambda (_%hd217584217634%_
                                         _%sig217590217637%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd217584217634%_))
                                      (let ((_%e217587217639%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd217584217634%_))))
                                        (let ((_%lp-tl217589217646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217587217639%_)))
                                              (_%lp-hd217588217643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217587217639%_))))
                                          (_%loop217586217630%_
                                           _%lp-tl217589217646%_
                                           (cons _%lp-hd217588217643%_
                                                 _%sig217590217637%_))))
                                      (let ((_%sig217591217649%_
                                             (reverse _%sig217590217637%_)))
                                        (_%__kont220945220946%_
                                         _%sig217591217649%_
                                         _%hd217581217618%_))))))
                        (_%loop217586217630%_ _%target217583217624%_ '()))))
                   (_%__match220997220998%_
                    (lambda (_%e217577217604%_
                             _%hd217578217608%_
                             _%tl217579217611%_
                             _%e217580217614%_
                             _%hd217581217618%_
                             _%tl217582217621%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl217582217621%_))
                          (let ((_%__splice220947220948%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl217582217621%_
                                    '0))))
                            (let ((_%tl217585217627%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice220947220948%_
                                      '1)))
                                  (_%target217583217624%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice220947220948%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl217585217627%_))
                                  (_%__match221005221006%_
                                   _%e217577217604%_
                                   _%hd217578217608%_
                                   _%tl217579217611%_
                                   _%e217580217614%_
                                   _%hd217581217618%_
                                   _%tl217582217621%_
                                   _%__splice220947220948%_
                                   _%target217583217624%_
                                   _%tl217585217627%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g217550217597%_)))))
                          (let () (declare (not safe)) (_%g217550217597%_)))))
                   (_%__match220985220986%_
                    (lambda (_%e217554217687%_
                             _%hd217555217691%_
                             _%tl217556217694%_
                             _%e217557217697%_
                             _%hd217558217701%_
                             _%tl217559217704%_
                             _%e217560217707%_
                             _%hd217561217711%_
                             _%tl217562217714%_
                             _%e217563217717%_
                             _%hd217564217721%_
                             _%tl217565217724%_
                             _%__splice220943220944%_
                             _%target217566217727%_
                             _%tl217568217730%_)
                      (letrec ((_%loop217569217733%_
                                (lambda (_%hd217567217737%_
                                         _%sig217573217740%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd217567217737%_))
                                      (let ((_%e217570217742%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd217567217737%_))))
                                        (let ((_%lp-tl217572217749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217570217742%_)))
                                              (_%lp-hd217571217746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217570217742%_))))
                                          (_%loop217569217733%_
                                           _%lp-tl217572217749%_
                                           (cons _%lp-hd217571217746%_
                                                 _%sig217573217740%_))))
                                      (let ((_%sig217574217752%_
                                             (reverse _%sig217573217740%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl217562217714%_))
                                            (_%__kont220941220942%_
                                             _%sig217574217752%_
                                             _%hd217558217701%_)
                                            (_%__match220997220998%_
                                             _%e217554217687%_
                                             _%hd217555217691%_
                                             _%tl217556217694%_
                                             _%e217557217697%_
                                             _%hd217558217701%_
                                             _%tl217559217704%_)))))))
                        (_%loop217569217733%_ _%target217566217727%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220938220939%_))
                  (let ((_%e217554217687%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220938220939%_))))
                    (let ((_%tl217556217694%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217554217687%_)))
                          (_%hd217555217691%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217554217687%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl217556217694%_))
                          (let ((_%e217557217697%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl217556217694%_))))
                            (let ((_%tl217559217704%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e217557217697%_)))
                                  (_%hd217558217701%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e217557217697%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl217559217704%_))
                                  (let ((_%e217560217707%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl217559217704%_))))
                                    (let ((_%tl217562217714%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e217560217707%_)))
                                          (_%hd217561217711%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e217560217707%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd217561217711%_))
                                          (let ((_%e217563217717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd217561217711%_))))
                                            (let ((_%tl217565217724%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e217563217717%_)))
                                                  (_%hd217564217721%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e217563217717%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd217564217721%_))
                                                  (if (let ((__tmp221372
                                                             |gxc[1]#_g221373_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp221372
                                                         _%hd217564217721%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl217565217724%_))
                                                          (let ((_%__splice220943220944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl217565217724%_
                            '0))))
                    (let ((_%tl217568217730%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220943220944%_ '1)))
                          (_%target217566217727%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220943220944%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217568217730%_))
                          (_%__match220985220986%_
                           _%e217554217687%_
                           _%hd217555217691%_
                           _%tl217556217694%_
                           _%e217557217697%_
                           _%hd217558217701%_
                           _%tl217559217704%_
                           _%e217560217707%_
                           _%hd217561217711%_
                           _%tl217562217714%_
                           _%e217563217717%_
                           _%hd217564217721%_
                           _%tl217565217724%_
                           _%__splice220943220944%_
                           _%target217566217727%_
                           _%tl217568217730%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl217559217704%_))
                              (let ((_%__splice220947220948%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl217559217704%_
                                        '0))))
                                (let ((_%tl217585217627%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice220947220948%_
                                          '1)))
                                      (_%target217583217624%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice220947220948%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl217585217627%_))
                                      (_%__match221005221006%_
                                       _%e217554217687%_
                                       _%hd217555217691%_
                                       _%tl217556217694%_
                                       _%e217557217697%_
                                       _%hd217558217701%_
                                       _%tl217559217704%_
                                       _%__splice220947220948%_
                                       _%target217583217624%_
                                       _%tl217585217627%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g217550217597%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g217550217597%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl217559217704%_))
                      (let ((_%__splice220947220948%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl217559217704%_
                                '0))))
                        (let ((_%tl217585217627%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220947220948%_ '1)))
                              (_%target217583217624%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220947220948%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl217585217627%_))
                              (_%__match221005221006%_
                               _%e217554217687%_
                               _%hd217555217691%_
                               _%tl217556217694%_
                               _%e217557217697%_
                               _%hd217558217701%_
                               _%tl217559217704%_
                               _%__splice220947220948%_
                               _%target217583217624%_
                               _%tl217585217627%_)
                              (let ()
                                (declare (not safe))
                                (_%g217550217597%_)))))
                      (let () (declare (not safe)) (_%g217550217597%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl217559217704%_))
                  (let ((_%__splice220947220948%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl217559217704%_
                            '0))))
                    (let ((_%tl217585217627%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220947220948%_ '1)))
                          (_%target217583217624%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220947220948%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217585217627%_))
                          (_%__match221005221006%_
                           _%e217554217687%_
                           _%hd217555217691%_
                           _%tl217556217694%_
                           _%e217557217697%_
                           _%hd217558217701%_
                           _%tl217559217704%_
                           _%__splice220947220948%_
                           _%target217583217624%_
                           _%tl217585217627%_)
                          (let () (declare (not safe)) (_%g217550217597%_)))))
                  (let () (declare (not safe)) (_%g217550217597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl217559217704%_))
                                                      (let ((_%__splice220947220948%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl217559217704%_
                        '0))))
                (let ((_%tl217585217627%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220947220948%_ '1)))
                      (_%target217583217624%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220947220948%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl217585217627%_))
                      (_%__match221005221006%_
                       _%e217554217687%_
                       _%hd217555217691%_
                       _%tl217556217694%_
                       _%e217557217697%_
                       _%hd217558217701%_
                       _%tl217559217704%_
                       _%__splice220947220948%_
                       _%target217583217624%_
                       _%tl217585217627%_)
                      (let () (declare (not safe)) (_%g217550217597%_)))))
              (let () (declare (not safe)) (_%g217550217597%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl217559217704%_))
                                              (let ((_%__splice220947220948%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl217559217704%_
                                                        '0))))
                                                (let ((_%tl217585217627%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220947220948%_
                                                          '1)))
                                                      (_%target217583217624%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220947220948%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl217585217627%_))
                                                      (_%__match221005221006%_
                                                       _%e217554217687%_
                                                       _%hd217555217691%_
                                                       _%tl217556217694%_
                                                       _%e217557217697%_
                                                       _%hd217558217701%_
                                                       _%tl217559217704%_
                                                       _%__splice220947220948%_
                                                       _%target217583217624%_
                                                       _%tl217585217627%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g217550217597%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g217550217597%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl217559217704%_))
                                      (let ((_%__splice220947220948%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl217559217704%_
                                                '0))))
                                        (let ((_%tl217585217627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220947220948%_
                                                  '1)))
                                              (_%target217583217624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220947220948%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl217585217627%_))
                                              (_%__match221005221006%_
                                               _%e217554217687%_
                                               _%hd217555217691%_
                                               _%tl217556217694%_
                                               _%e217557217697%_
                                               _%hd217558217701%_
                                               _%tl217559217704%_
                                               _%__splice220947220948%_
                                               _%target217583217624%_
                                               _%tl217585217627%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g217550217597%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g217550217597%_))))))
                          (let () (declare (not safe)) (_%g217550217597%_)))))
                  (let () (declare (not safe)) (_%g217550217597%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx218940%_ _%id218942%_)
        (let ((_%proc218946%_
               (let ((__tmp221374
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id218942%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp221374))))
          (if (procedure? _%proc218946%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx218940%_
                 _%id218942%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx218931%_ _%id218933%_)
        (let ((_%klass218937%_
               (let ((__tmp221375
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id218933%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp221375))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass218937%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx218931%_
                 _%id218933%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx218181%_ _%proc218183%_ _%sig218184%_)
        (letrec ((_%signature-arity218186%_
                  (lambda (_%args218863%_)
                    (let _%loop218866%_ ((_%rest218869%_ _%args218863%_)
                                         (_%count218871%_ '0))
                      (let* ((_%rest218872218883%_ _%rest218869%_)
                             (_%E218876218889%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest218872218883%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K218879218920%_
                               (lambda (_%rest218917%_)
                                 (_%loop218866%_
                                  _%rest218917%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count218871%_ '1)))))
                              (_%K218878218909%_ (lambda () _%count218871%_))
                              (_%K218877218897%_
                               (lambda () (cons _%count218871%_ '()))))
                          (let ((_%try-match218874218913%_
                                 (lambda ()
                                   (if (null? _%rest218872218883%_)
                                       (_%K218878218909%_)
                                       (_%K218877218897%_)))))
                            (if (pair? _%rest218872218883%_)
                                (let* ((_%tl218881218924%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest218872218883%_)))
                                       (_%rest218928%_ _%tl218881218924%_))
                                  (_%K218879218920%_ _%rest218928%_))
                                (_%try-match218874218913%_))))))))
                 (_%make-signature218188%_
                  (lambda (_%args218745%_
                           _%return218747%_
                           _%effect218748%_
                           _%unchecked218749%_)
                    (let ((__tmp221376
                           (lambda (_%g218750218752%_)
                             (|gxc[1]#verify-class!|
                              _%ctx218181%_
                              _%g218750218752%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp221376 _%args218745%_))
                    (|gxc[1]#verify-class!| _%ctx218181%_ _%return218747%_)
                    (if _%unchecked218749%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx218181%_
                         _%unchecked218749%_)
                        '#!void)
                    (let ((_%arity218756%_
                           (_%signature-arity218186%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args218745%_)))))
                      (if _%effect218748%_
                          (let ((_%effect218759%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect218748%_))))
                            (if (and (list? _%effect218759%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect218759%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx218181%_
                                   _%proc218183%_
                                   _%effect218759%_))))
                          '#!void)
                      (cons _%arity218756%_
                            (cons (let* ((_%g218762218785%_
                                          (lambda (_%g218763218781%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g218763218781%_))))
                                         (_%g218761218859%_
                                          (lambda (_%g218763218789%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g218763218789%_))
                                                (let ((_%e218768218792%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g218763218789%_))))
                                                  (let ((_%hd218769218796%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e218768218792%_)))
                                                        (_%tl218770218799%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e218768218792%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl218770218799%_))
                                                        (let ((_%e218771218802%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl218770218799%_))))
                  (let ((_%hd218772218806%_
                         (let ()
                           (declare (not safe))
                           (##car _%e218771218802%_)))
                        (_%tl218773218809%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e218771218802%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl218773218809%_))
                        (let ((_%e218774218812%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl218773218809%_))))
                          (let ((_%hd218775218816%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e218774218812%_)))
                                (_%tl218776218819%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e218774218812%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl218776218819%_))
                                (let ((_%e218777218822%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl218776218819%_))))
                                  (let ((_%hd218778218826%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e218777218822%_)))
                                        (_%tl218779218829%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e218777218822%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl218779218829%_))
                                        ((lambda (_%g218764218832%_
                                                  _%g218765218834%_
                                                  _%g218766218835%_
                                                  _%g218767218836%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-!signature))
                                                 (cons 'arguments:
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g218767218836%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g218766218835%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g218765218834%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g218764218832%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd218778218826%_
                                         _%hd218775218816%_
                                         _%hd218772218806%_
                                         _%hd218769218796%_)
                                        (_%g218762218785%_
                                         _%g218763218789%_))))
                                (_%g218762218785%_ _%g218763218789%_))))
                        (_%g218762218785%_ _%g218763218789%_))))
                (_%g218762218785%_ _%g218763218789%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g218762218785%_
                                                 _%g218763218789%_)))))
                                    (_%g218761218859%_
                                     (list _%args218745%_
                                           _%return218747%_
                                           _%effect218748%_
                                           _%unchecked218749%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx218181%_ _%proc218183%_)
          (let* ((_%__stx221016221017%_ _%sig218184%_)
                 (_%g218195218298%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx221016221017%_)))))
            (let ((_%__kont221019221020%_
                   (lambda (_%g218197218726%_ _%g218198218728%_)
                     (_%make-signature218188%_
                      _%g218198218728%_
                      _%g218197218726%_
                      '#f
                      '#f)))
                  (_%__kont221021221022%_
                   (lambda (_%g218205218677%_
                            _%g218206218679%_
                            _%g218207218680%_)
                     (_%make-signature218188%_
                      _%g218207218680%_
                      _%g218206218679%_
                      _%g218205218677%_
                      '#f)))
                  (_%__kont221023221024%_
                   (lambda (_%g218221218601%_
                            _%g218222218603%_
                            _%g218223218604%_)
                     (_%make-signature218188%_
                      _%g218223218604%_
                      _%g218222218603%_
                      _%g218221218601%_
                      (let ((__tmp221377
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc218183%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp221377)))))
                  (_%__kont221025221026%_
                   (lambda (_%g218241218507%_
                            _%g218242218509%_
                            _%g218243218510%_
                            _%g218244218511%_)
                     (_%make-signature218188%_
                      _%g218244218511%_
                      _%g218243218510%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g218241218507%_)))))
                  (_%__kont221027221028%_
                   (lambda (_%g218265218414%_ _%g218266218416%_)
                     (_%make-signature218188%_
                      _%g218266218416%_
                      _%g218265218414%_
                      '#f
                      (let ((__tmp221378
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc218183%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp221378)))))
                  (_%__kont221029221030%_
                   (lambda (_%g218277218349%_
                            _%g218278218351%_
                            _%g218279218352%_)
                     (_%make-signature218188%_
                      _%g218279218352%_
                      _%g218278218351%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g218277218349%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx221016221017%_))
                  (let ((_%e218199218706%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx221016221017%_))))
                    (let ((_%tl218201218713%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e218199218706%_)))
                          (_%hd218200218710%_
                           (let ()
                             (declare (not safe))
                             (##car _%e218199218706%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl218201218713%_))
                          (let ((_%e218202218716%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl218201218713%_))))
                            (let ((_%tl218204218723%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218202218716%_)))
                                  (_%hd218203218720%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218202218716%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218204218723%_))
                                  (_%__kont221019221020%_
                                   _%hd218203218720%_
                                   _%hd218200218710%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl218204218723%_))
                                      (let ((_%e218214218653%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl218204218723%_))))
                                        (let ((_%tl218216218660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218214218653%_)))
                                              (_%hd218215218657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218214218653%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd218215218657%_))
                                              (let ((_%e218217218663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd218215218657%_))))
                                                (if (equal? _%e218217218663%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl218216218660%_))
                                                        (let ((_%e218218218667%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl218216218660%_))))
                  (let ((_%tl218220218674%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e218218218667%_)))
                        (_%hd218219218671%_
                         (let ()
                           (declare (not safe))
                           (##car _%e218218218667%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl218220218674%_))
                        (_%__kont221021221022%_
                         _%hd218219218671%_
                         _%hd218203218720%_
                         _%hd218200218710%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl218220218674%_))
                            (let ((_%e218237218587%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl218220218674%_))))
                              (let ((_%tl218239218594%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e218237218587%_)))
                                    (_%hd218238218591%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e218237218587%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd218238218591%_))
                                    (let ((_%e218240218597%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd218238218591%_))))
                                      (if (equal? _%e218240218597%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218239218594%_))
                                              (_%__kont221023221024%_
                                               _%hd218219218671%_
                                               _%hd218203218720%_
                                               _%hd218200218710%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl218239218594%_))
                                                  (let ((_%e218262218497%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl218239218594%_))))
                                                    (let ((_%tl218264218504%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e218262218497%_)))
                                                          (_%hd218263218501%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e218262218497%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl218264218504%_))
                                                          (_%__kont221025221026%_
                                                           _%hd218263218501%_
                                                           _%hd218219218671%_
                                                           _%hd218203218720%_
                                                           _%hd218200218710%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g218195218298%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g218195218298%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g218195218298%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g218195218298%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g218195218298%_))))))
                (let () (declare (not safe)) (_%g218195218298%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e218217218663%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl218216218660%_))
                                                            (_%__kont221027221028%_
                                                             _%hd218203218720%_
                                                             _%hd218200218710%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl218216218660%_))
                        (let ((_%e218290218339%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl218216218660%_))))
                          (let ((_%tl218292218346%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e218290218339%_)))
                                (_%hd218291218343%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e218290218339%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl218292218346%_))
                                (_%__kont221029221030%_
                                 _%hd218291218343%_
                                 _%hd218203218720%_
                                 _%hd218200218710%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g218195218298%_)))))
                        (let () (declare (not safe)) (_%g218195218298%_))))
                (let () (declare (not safe)) (_%g218195218298%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g218195218298%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g218195218298%_))))))
                          (let () (declare (not safe)) (_%g218195218298%_)))))
                  (let () (declare (not safe)) (_%g218195218298%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig217792%_)
        (let* ((_%g217795217875%_
                (lambda (_%g217796217871%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g217796217871%_))))
               (_%g217794218177%_
                (lambda (_%g217796217879%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g217796217879%_))
                      (let ((_%e217802217882%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g217796217879%_))))
                        (let ((_%hd217803217886%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217802217882%_)))
                              (_%tl217804217889%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217802217882%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217804217889%_))
                              (let ((_%e217805217892%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl217804217889%_))))
                                (let ((_%hd217806217896%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217805217892%_)))
                                      (_%tl217807217899%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217805217892%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd217806217896%_))
                                      (let ((_%e217808217902%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd217806217896%_))))
                                        (if (equal? _%e217808217902%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl217807217899%_))
                                                (let ((_%e217809217906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl217807217899%_))))
                                                  (let ((_%hd217810217910%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e217809217906%_)))
                                                        (_%tl217811217913%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e217809217906%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd217810217910%_))
                                                        (let ((_%e217812217916%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd217810217910%_))))
                  (let ((_%hd217813217920%_
                         (let ()
                           (declare (not safe))
                           (##car _%e217812217916%_)))
                        (_%tl217814217923%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e217812217916%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd217813217920%_))
                        (if (let ((__tmp221379 |gxc[1]#_g221380_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp221379
                               _%hd217813217920%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl217814217923%_))
                                (let ((_%e217815217926%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl217814217923%_))))
                                  (let ((_%hd217816217930%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217815217926%_)))
                                        (_%tl217817217933%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217815217926%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl217817217933%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl217811217913%_))
                                            (let ((_%e217818217936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl217811217913%_))))
                                              (let ((_%hd217819217940%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217818217936%_)))
                                                    (_%tl217820217943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217818217936%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd217819217940%_))
                                                    (let ((_%e217821217946%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd217819217940%_))))
                                                      (if (equal? _%e217821217946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl217820217943%_))
                      (let ((_%e217822217950%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl217820217943%_))))
                        (let ((_%hd217823217954%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217822217950%_)))
                              (_%tl217824217957%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217822217950%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd217823217954%_))
                              (let ((_%e217825217960%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd217823217954%_))))
                                (let ((_%hd217826217964%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217825217960%_)))
                                      (_%tl217827217967%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217825217960%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd217826217964%_))
                                      (if (let ((__tmp221381
                                                 |gxc[1]#_g221382_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp221381
                                             _%hd217826217964%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl217827217967%_))
                                              (let ((_%e217828217970%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl217827217967%_))))
                                                (let ((_%hd217829217974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e217828217970%_)))
                                                      (_%tl217830217977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e217828217970%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl217830217977%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl217824217957%_))
                                                          (let ((_%e217831217980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl217824217957%_))))
                    (let ((_%hd217832217984%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217831217980%_)))
                          (_%tl217833217987%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217831217980%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd217832217984%_))
                          (let ((_%e217834217990%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd217832217984%_))))
                            (if (equal? _%e217834217990%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl217833217987%_))
                                    (let ((_%e217835217994%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl217833217987%_))))
                                      (let ((_%hd217836217998%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e217835217994%_)))
                                            (_%tl217837218001%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e217835217994%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd217836217998%_))
                                            (let ((_%e217838218004%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd217836217998%_))))
                                              (let ((_%hd217839218008%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217838218004%_)))
                                                    (_%tl217840218011%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217838218004%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd217839218008%_))
                                                    (if (let ((__tmp221383
                                                               |gxc[1]#_g221384_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp221383
                                                           _%hd217839218008%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl217840218011%_))
                                                            (let ((_%e217841218014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl217840218011%_))))
                      (let ((_%hd217842218018%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217841218014%_)))
                            (_%tl217843218021%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217841218014%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl217843218021%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl217837218001%_))
                                (let ((_%e217844218024%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl217837218001%_))))
                                  (let ((_%hd217845218028%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217844218024%_)))
                                        (_%tl217846218031%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217844218024%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd217845218028%_))
                                        (let ((_%e217847218034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd217845218028%_))))
                                          (if (equal? _%e217847218034%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl217846218031%_))
                                                  (let ((_%e217848218038%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl217846218031%_))))
                                                    (let ((_%hd217849218042%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e217848218038%_)))
                                                          (_%tl217850218045%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e217848218038%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd217849218042%_))
                                                          (let ((_%e217851218048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd217849218042%_))))
                    (let ((_%hd217852218052%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217851218048%_)))
                          (_%tl217853218055%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217851218048%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd217852218052%_))
                          (if (let ((__tmp221385 |gxc[1]#_g221386_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp221385
                                 _%hd217852218052%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl217853218055%_))
                                  (let ((_%e217854218058%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl217853218055%_))))
                                    (let ((_%hd217855218062%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e217854218058%_)))
                                          (_%tl217856218065%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e217854218058%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl217856218065%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl217850218045%_))
                                              (let ((_%e217857218068%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl217850218045%_))))
                                                (let ((_%hd217858218072%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e217857218068%_)))
                                                      (_%tl217859218075%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e217857218068%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd217858218072%_))
                                                      (let ((_%e217860218078%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd217858218072%_))))
                (if (equal? _%e217860218078%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl217859218075%_))
                        (let ((_%e217861218082%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl217859218075%_))))
                          (let ((_%hd217862218086%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e217861218082%_)))
                                (_%tl217863218089%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e217861218082%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd217862218086%_))
                                (let ((_%e217864218092%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd217862218086%_))))
                                  (let ((_%hd217865218096%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217864218092%_)))
                                        (_%tl217866218099%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217864218092%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd217865218096%_))
                                        (if (let ((__tmp221387
                                                   |gxc[1]#_g221388_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp221387
                                               _%hd217865218096%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl217866218099%_))
                                                (let ((_%e217867218102%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl217866218099%_))))
                                                  (let ((_%hd217868218106%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e217867218102%_)))
                                                        (_%tl217869218109%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e217867218102%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl217869218109%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl217863218089%_))
                                                            ((lambda (_%g217797218112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g217798218114%_
                              _%g217799218115%_
                              _%g217800218116%_
                              _%g217801218117%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g217798218114%_))
                           (cons _%g217798218114%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g217800218116%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g217797218112%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd217868218106%_
                     _%hd217855218062%_
                     _%hd217842218018%_
                     _%hd217829217974%_
                     _%hd217816217930%_)
                    (_%g217795217875%_ _%g217796217879%_))
                (_%g217795217875%_ _%g217796217879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g217795217875%_
                                                 _%g217796217879%_))
                                            (_%g217795217875%_
                                             _%g217796217879%_))
                                        (_%g217795217875%_
                                         _%g217796217879%_))))
                                (_%g217795217875%_ _%g217796217879%_))))
                        (_%g217795217875%_ _%g217796217879%_))
                    (_%g217795217875%_ _%g217796217879%_)))
              (_%g217795217875%_ _%g217796217879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g217795217875%_
                                               _%g217796217879%_))
                                          (_%g217795217875%_
                                           _%g217796217879%_))))
                                  (_%g217795217875%_ _%g217796217879%_))
                              (_%g217795217875%_ _%g217796217879%_))
                          (_%g217795217875%_ _%g217796217879%_))))
                  (_%g217795217875%_ _%g217796217879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g217795217875%_
                                                   _%g217796217879%_))
                                              (_%g217795217875%_
                                               _%g217796217879%_)))
                                        (_%g217795217875%_
                                         _%g217796217879%_))))
                                (_%g217795217875%_ _%g217796217879%_))
                            (_%g217795217875%_ _%g217796217879%_))))
                    (_%g217795217875%_ _%g217796217879%_))
                (_%g217795217875%_ _%g217796217879%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g217795217875%_
                                                     _%g217796217879%_))))
                                            (_%g217795217875%_
                                             _%g217796217879%_))))
                                    (_%g217795217875%_ _%g217796217879%_))
                                (_%g217795217875%_ _%g217796217879%_)))
                          (_%g217795217875%_ _%g217796217879%_))))
                  (_%g217795217875%_ _%g217796217879%_))
              (_%g217795217875%_ _%g217796217879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g217795217875%_
                                               _%g217796217879%_))
                                          (_%g217795217875%_
                                           _%g217796217879%_))
                                      (_%g217795217875%_ _%g217796217879%_))))
                              (_%g217795217875%_ _%g217796217879%_))))
                      (_%g217795217875%_ _%g217796217879%_))
                  (_%g217795217875%_ _%g217796217879%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g217795217875%_
                                                     _%g217796217879%_))))
                                            (_%g217795217875%_
                                             _%g217796217879%_))
                                        (_%g217795217875%_
                                         _%g217796217879%_))))
                                (_%g217795217875%_ _%g217796217879%_))
                            (_%g217795217875%_ _%g217796217879%_))
                        (_%g217795217875%_ _%g217796217879%_))))
                (_%g217795217875%_ _%g217796217879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g217795217875%_
                                                 _%g217796217879%_))
                                            (_%g217795217875%_
                                             _%g217796217879%_)))
                                      (_%g217795217875%_ _%g217796217879%_))))
                              (_%g217795217875%_ _%g217796217879%_))))
                      (_%g217795217875%_ _%g217796217879%_)))))
          (_%g217794218177%_ _%sig217792%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx218949%_)
        (let* ((_%g218952218970%_
                (lambda (_%g218953218966%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218953218966%_))))
               (_%g218951219025%_
                (lambda (_%g218953218974%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218953218974%_))
                      (let ((_%e218956218977%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g218953218974%_))))
                        (let ((_%hd218957218981%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218956218977%_)))
                              (_%tl218958218984%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218956218977%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl218958218984%_))
                              (let ((_%e218959218987%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl218958218984%_))))
                                (let ((_%hd218960218991%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e218959218987%_)))
                                      (_%tl218961218994%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e218959218987%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl218961218994%_))
                                      (let ((_%e218962218997%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl218961218994%_))))
                                        (let ((_%hd218963219001%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218962218997%_)))
                                              (_%tl218964219004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218962218997%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218964219004%_))
                                              ((lambda (_%g218954219007%_
                                                        _%g218955219009%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g218955219009%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g218954219007%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx218949%_
                                                        _%g218955219009%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx218949%_
                                                        _%g218954219007%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g218955219009%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g218954219007%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g218952218970%_
                                                      _%g218953218974%_)))
                                               _%hd218963219001%_
                                               _%hd218960218991%_)
                                              (_%g218952218970%_
                                               _%g218953218974%_))))
                                      (_%g218952218970%_ _%g218953218974%_))))
                              (_%g218952218970%_ _%g218953218974%_))))
                      (_%g218952218970%_ _%g218953218974%_)))))
          (_%g218951219025%_ _%stx218949%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx219029%_)
        (let* ((_%g219032219056%_
                (lambda (_%g219033219052%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219033219052%_))))
               (_%g219031219337%_
                (lambda (_%g219033219060%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219033219060%_))
                      (let ((_%e219036219063%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g219033219060%_))))
                        (let ((_%hd219037219067%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219036219063%_)))
                              (_%tl219038219070%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219036219063%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219038219070%_))
                              (let ((_%e219039219073%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl219038219070%_))))
                                (let ((_%hd219040219077%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219039219073%_)))
                                      (_%tl219041219080%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219039219073%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl219041219080%_))
                                      (let ((_g221389_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl219041219080%_
                                                '0))))
                                        (begin
                                          (let ((_g221390_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g221389_)
                                                       (##values-length
                                                        _g221389_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g221390_ 2)))
                                                (error "Context expects 2 values"
                                                       _g221390_)))
                                          (let ((_%target219042219083%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g221389_ 0)))
                                                (_%tl219044219086%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g221389_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl219044219086%_))
                                                (letrec ((_%loop219045219089%_
                                                          (lambda (_%hd219043219093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature219049219096%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd219043219093%_))
                        (let ((_%e219046219098%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd219043219093%_))))
                          (let ((_%lp-hd219047219102%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e219046219098%_)))
                                (_%lp-tl219048219105%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e219046219098%_))))
                            (_%loop219045219089%_
                             _%lp-tl219048219105%_
                             (cons _%lp-hd219047219102%_
                                   _%signature219049219096%_))))
                        (let ((_%signature219050219108%_
                               (reverse _%signature219049219096%_)))
                          ((lambda (_%g219034219111%_ _%g219035219113%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g219035219113%_))
                                 (let* ((_%g219131219146%_
                                         (lambda (_%g219132219142%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g219132219142%_))))
                                        (_%g219130219325%_
                                         (lambda (_%g219132219150%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g219132219150%_))
                                               (let ((_%e219135219153%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g219132219150%_))))
                                                 (let ((_%hd219136219157%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219135219153%_)))
                                                       (_%tl219137219160%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219135219153%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl219137219160%_))
                                                       (let ((_%e219138219163%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl219137219160%_))))
                 (let ((_%hd219139219167%_
                        (let ()
                          (declare (not safe))
                          (##car _%e219138219163%_)))
                       (_%tl219140219170%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e219138219163%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl219140219170%_))
                       ((lambda (_%g219133219173%_ _%g219134219175%_)
                          (let* ((_%g219191219199%_
                                  (lambda (_%g219192219195%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g219192219195%_))))
                                 (_%g219190219321%_
                                  (lambda (_%g219192219203%_)
                                    ((lambda (_%g219193219206%_)
                                       (let* ((_%unchecked219219%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g219133219173%_))
                                              (_%g219222219230%_
                                               (lambda (_%g219223219226%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g219223219226%_))))
                                              (_%g219221219253%_
                                               (lambda (_%g219223219234%_)
                                                 ((lambda (_%g219224219237%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g219193219206%_
                                                                (cons _%g219224219237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g219223219234%_))))
                                         (_%g219221219253%_
                                          (if _%unchecked219219%_
                                              (let* ((_%g219257219272%_
                                                      (lambda (_%g219258219268%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g219258219268%_))))
                                                     (_%g219256219317%_
                                                      (lambda (_%g219258219276%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g219258219276%_))
                                                            (let ((_%e219261219279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g219258219276%_))))
                      (let ((_%hd219262219283%_
                             (let ()
                               (declare (not safe))
                               (##car _%e219261219279%_)))
                            (_%tl219263219286%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e219261219279%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl219263219286%_))
                            (let ((_%e219264219289%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl219263219286%_))))
                              (let ((_%hd219265219293%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e219264219289%_)))
                                    (_%tl219266219296%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e219264219289%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl219266219296%_))
                                    ((lambda (_%g219259219299%_
                                              _%g219260219301%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g219260219301%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g219134219175%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g219259219299%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd219265219293%_
                                     _%hd219262219283%_)
                                    (_%g219257219272%_ _%g219258219276%_))))
                            (_%g219257219272%_ _%g219258219276%_))))
                    (_%g219257219272%_ _%g219258219276%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g219256219317%_
                                                 _%unchecked219219%_))
                                              '(begin)))))
                                     _%g219192219203%_))))
                            (_%g219190219321%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g219035219113%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g219134219175%_ '()))
                   (cons '#f (cons 'signature: (cons _%g219133219173%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd219139219167%_
                        _%hd219136219157%_)
                       (_%g219131219146%_ _%g219132219150%_))))
               (_%g219131219146%_ _%g219132219150%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219131219146%_
                                                _%g219132219150%_)))))
                                   (_%g219130219325%_
                                    (|gxc[1]#parse-signature|
                                     _%stx219029%_
                                     _%g219035219113%_
                                     (let ((__tmp221391
                                            (lambda (_%g219328219331%_
                                                     _%g219329219334%_)
                                              (cons _%g219328219331%_
                                                    _%g219329219334%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp221391
                                        '()
                                        _%g219034219111%_)))))
                                 (_%g219032219056%_ _%g219033219060%_)))
                           _%signature219050219108%_
                           _%hd219040219077%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop219045219089%_
                                                   _%target219042219083%_
                                                   '()))
                                                (_%g219032219056%_
                                                 _%g219033219060%_)))))
                                      (_%g219032219056%_ _%g219033219060%_))))
                              (_%g219032219056%_ _%g219033219060%_))))
                      (_%g219032219056%_ _%g219033219060%_)))))
          (_%g219031219337%_ _%stx219029%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx219342%_)
        (let* ((_%g219345219369%_
                (lambda (_%g219346219365%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219346219365%_))))
               (_%g219344220244%_
                (lambda (_%g219346219373%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219346219373%_))
                      (let ((_%e219349219376%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g219346219373%_))))
                        (let ((_%hd219350219380%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219349219376%_)))
                              (_%tl219351219383%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219349219376%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219351219383%_))
                              (let ((_%e219352219386%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl219351219383%_))))
                                (let ((_%hd219353219390%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219352219386%_)))
                                      (_%tl219354219393%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219352219386%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl219354219393%_))
                                      (let ((_g221392_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl219354219393%_
                                                '0))))
                                        (begin
                                          (let ((_g221393_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g221392_)
                                                       (##values-length
                                                        _g221392_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g221393_ 2)))
                                                (error "Context expects 2 values"
                                                       _g221393_)))
                                          (let ((_%target219355219396%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g221392_ 0)))
                                                (_%tl219357219399%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g221392_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl219357219399%_))
                                                (letrec ((_%loop219358219402%_
                                                          (lambda (_%hd219356219406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature219362219409%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd219356219406%_))
                        (let ((_%e219359219411%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd219356219406%_))))
                          (let ((_%lp-hd219360219415%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e219359219411%_)))
                                (_%lp-tl219361219418%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e219359219411%_))))
                            (_%loop219358219402%_
                             _%lp-tl219361219418%_
                             (cons _%lp-hd219360219415%_
                                   _%case-signature219362219409%_))))
                        (let ((_%case-signature219363219421%_
                               (reverse _%case-signature219362219409%_)))
                          ((lambda (_%g219347219424%_ _%g219348219426%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g219348219426%_))
                                 (let* ((_%signatures219457%_
                                         (map (lambda (_%g219443219445%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx219342%_
                                                 _%g219348219426%_
                                                 _%g219443219445%_))
                                              (let ((__tmp221394
                                                     (lambda (_%g219448219451%_
                                                              _%g219449219454%_)
                                                       (cons _%g219448219451%_
                                                             _%g219449219454%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp221394
                                                 '()
                                                 _%g219347219424%_))))
                                        (_%g219460219486%_
                                         (lambda (_%g219461219482%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g219461219482%_))))
                                        (_%g219459220240%_
                                         (lambda (_%g219461219490%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g219461219490%_))
                                               (let ((_g221395_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g219461219490%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g221396_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g221395_)
                        (##values-length _g221395_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g221396_ 2)))
                 (error "Context expects 2 values" _g221396_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target219464219493%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g221395_
                                                             0)))
                                                         (_%tl219466219496%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g221395_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl219466219496%_))
                                                         (letrec ((_%loop219467219499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd219465219503%_
                                    _%sig219471219506%_
                                    _%arity219472219507%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd219465219503%_))
                                 (let ((_%e219468219509%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd219465219503%_))))
                                   (let ((_%lp-hd219469219513%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219468219509%_)))
                                         (_%lp-tl219470219516%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219468219509%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd219469219513%_))
                                         (let ((_%e219475219519%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd219469219513%_))))
                                           (let ((_%hd219476219523%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e219475219519%_)))
                                                 (_%tl219477219526%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e219475219519%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl219477219526%_))
                                                 (let ((_%e219478219529%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl219477219526%_))))
                                                   (let ((_%hd219479219533%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e219478219529%_)))
                                                         (_%tl219480219536%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e219478219529%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl219480219536%_))
                                                         (_%loop219467219499%_
                                                          _%lp-tl219470219516%_
                                                          (cons _%hd219479219533%_
                                                                _%sig219471219506%_)
                                                          (cons _%hd219476219523%_
                                                                _%arity219472219507%_))
                                                         (_%g219460219486%_
                                                          _%g219461219490%_))))
                                                 (_%g219460219486%_
                                                  _%g219461219490%_))))
                                         (_%g219460219486%_
                                          _%g219461219490%_))))
                                 (let ((_%sig219473219539%_
                                        (reverse _%sig219471219506%_))
                                       (_%arity219474219541%_
                                        (reverse _%arity219472219507%_)))
                                   ((lambda (_%g219462219543%_
                                             _%g219463219545%_)
                                      (let* ((_%g219562219570%_
                                              (lambda (_%g219563219566%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g219563219566%_))))
                                             (_%g219561220225%_
                                              (lambda (_%g219563219574%_)
                                                ((lambda (_%g219564219577%_)
                                                   (let* ((_%g219590219598%_
                                                           (lambda (_%g219591219594%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g219591219594%_))))
                  (_%g219589219620%_
                   (lambda (_%g219591219602%_)
                     ((lambda (_%g219592219605%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g219564219577%_
                                    (cons _%g219592219605%_ '()))))
                      _%g219591219602%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g219589219620%_
                                                      (let ((_g221397_
                                                             (let _%loop219624%_ ((_%rest219627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures219457%_)
                                          (_%unchecked-proc219629%_ '#f)
                                          (_%unchecked-clauses219630%_ '()))
                       (let* ((_%rest219631219639%_ _%rest219627%_)
                              (_%else219633219651%_
                               (lambda ()
                                 (values _%unchecked-proc219629%_
                                         (reverse!
                                          _%unchecked-clauses219630%_))))
                              (_%K219635220092%_
                               (lambda (_%rest219655%_ _%hd219657%_)
                                 (let* ((_%g219659219746%_
                                         (lambda (_%g219660219742%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g219660219742%_))))
                                        (_%g219658220088%_
                                         (lambda (_%g219660219750%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g219660219750%_))
                                               (let ((_%e219667219753%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g219660219750%_))))
                                                 (let ((_%hd219668219757%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219667219753%_)))
                                                       (_%tl219669219760%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219667219753%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl219669219760%_))
                                                       (let ((_%e219670219763%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl219669219760%_))))
                 (let ((_%hd219671219767%_
                        (let ()
                          (declare (not safe))
                          (##car _%e219670219763%_)))
                       (_%tl219672219770%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e219670219763%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd219671219767%_))
                       (let ((_%e219673219773%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd219671219767%_))))
                         (let ((_%hd219674219777%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e219673219773%_)))
                               (_%tl219675219780%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e219673219773%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl219675219780%_))
                               (let ((_%e219676219783%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl219675219780%_))))
                                 (let ((_%hd219677219787%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e219676219783%_)))
                                       (_%tl219678219790%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e219676219783%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd219677219787%_))
                                       (let ((_%e219679219793%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd219677219787%_))))
                                         (if (equal? _%e219679219793%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl219678219790%_))
                                                 (let ((_%e219680219797%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl219678219790%_))))
                                                   (let ((_%hd219681219801%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e219680219797%_)))
                                                         (_%tl219682219804%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e219680219797%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd219681219801%_))
                                                         (let ((_%e219683219807%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd219681219801%_))))
                   (let ((_%hd219684219811%_
                          (let ()
                            (declare (not safe))
                            (##car _%e219683219807%_)))
                         (_%tl219685219814%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e219683219807%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd219684219811%_))
                         (if (let ((__tmp221399 |gxc[1]#_g221400_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp221399
                                _%hd219684219811%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl219685219814%_))
                                 (let ((_%e219686219817%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl219685219814%_))))
                                   (let ((_%hd219687219821%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219686219817%_)))
                                         (_%tl219688219824%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219686219817%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl219688219824%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl219682219804%_))
                                             (let ((_%e219689219827%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl219682219804%_))))
                                               (let ((_%hd219690219831%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e219689219827%_)))
                                                     (_%tl219691219834%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e219689219827%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd219690219831%_))
                                                     (let ((_%e219692219837%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd219690219831%_))))
                                                       (if (equal? _%e219692219837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl219691219834%_))
                       (let ((_%e219693219841%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl219691219834%_))))
                         (let ((_%hd219694219845%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e219693219841%_)))
                               (_%tl219695219848%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e219693219841%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd219694219845%_))
                               (let ((_%e219696219851%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd219694219845%_))))
                                 (let ((_%hd219697219855%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e219696219851%_)))
                                       (_%tl219698219858%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e219696219851%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd219697219855%_))
                                       (if (let ((__tmp221401
                                                  |gxc[1]#_g221402_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp221401
                                              _%hd219697219855%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl219698219858%_))
                                               (let ((_%e219699219861%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl219698219858%_))))
                                                 (let ((_%hd219700219865%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219699219861%_)))
                                                       (_%tl219701219868%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219699219861%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl219701219868%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl219695219848%_))
                                                           (let ((_%e219702219871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl219695219848%_))))
                     (let ((_%hd219703219875%_
                            (let ()
                              (declare (not safe))
                              (##car _%e219702219871%_)))
                           (_%tl219704219878%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e219702219871%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd219703219875%_))
                           (let ((_%e219705219881%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd219703219875%_))))
                             (if (equal? _%e219705219881%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl219704219878%_))
                                     (let ((_%e219706219885%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl219704219878%_))))
                                       (let ((_%hd219707219889%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e219706219885%_)))
                                             (_%tl219708219892%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e219706219885%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd219707219889%_))
                                             (let ((_%e219709219895%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd219707219889%_))))
                                               (let ((_%hd219710219899%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e219709219895%_)))
                                                     (_%tl219711219902%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e219709219895%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd219710219899%_))
                                                     (if (let ((__tmp221403
                                                                |gxc[1]#_g221404_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp221403
                                                            _%hd219710219899%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl219711219902%_))
                     (let ((_%e219712219905%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl219711219902%_))))
                       (let ((_%hd219713219909%_
                              (let ()
                                (declare (not safe))
                                (##car _%e219712219905%_)))
                             (_%tl219714219912%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e219712219905%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl219714219912%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl219708219892%_))
                                 (let ((_%e219715219915%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl219708219892%_))))
                                   (let ((_%hd219716219919%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219715219915%_)))
                                         (_%tl219717219922%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219715219915%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd219716219919%_))
                                         (let ((_%e219718219925%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd219716219919%_))))
                                           (if (equal? _%e219718219925%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl219717219922%_))
                                                   (let ((_%e219719219929%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl219717219922%_))))
                                                     (let ((_%hd219720219933%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e219719219929%_)))
                                                           (_%tl219721219936%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e219719219929%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd219720219933%_))
                                                           (let ((_%e219722219939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd219720219933%_))))
                     (let ((_%hd219723219943%_
                            (let ()
                              (declare (not safe))
                              (##car _%e219722219939%_)))
                           (_%tl219724219946%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e219722219939%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd219723219943%_))
                           (if (let ((__tmp221405 |gxc[1]#_g221406_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp221405
                                  _%hd219723219943%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl219724219946%_))
                                   (let ((_%e219725219949%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl219724219946%_))))
                                     (let ((_%hd219726219953%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e219725219949%_)))
                                           (_%tl219727219956%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e219725219949%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl219727219956%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl219721219936%_))
                                               (let ((_%e219728219959%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl219721219936%_))))
                                                 (let ((_%hd219729219963%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219728219959%_)))
                                                       (_%tl219730219966%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219728219959%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd219729219963%_))
                                                       (let ((_%e219731219969%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd219729219963%_))))
                 (if (equal? _%e219731219969%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl219730219966%_))
                         (let ((_%e219732219973%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl219730219966%_))))
                           (let ((_%hd219733219977%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e219732219973%_)))
                                 (_%tl219734219980%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e219732219973%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd219733219977%_))
                                 (let ((_%e219735219983%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd219733219977%_))))
                                   (let ((_%hd219736219987%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219735219983%_)))
                                         (_%tl219737219990%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219735219983%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd219736219987%_))
                                         (if (let ((__tmp221407
                                                    |gxc[1]#_g221408_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp221407
                                                _%hd219736219987%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl219737219990%_))
                                                 (let ((_%e219738219993%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl219737219990%_))))
                                                   (let ((_%hd219739219997%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e219738219993%_)))
                                                         (_%tl219740220000%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e219738219993%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl219740220000%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl219734219980%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl219672219770%_))
                         ((lambda (_%g219661220003%_
                                   _%g219662220005%_
                                   _%g219663220006%_
                                   _%g219664220007%_
                                   _%g219665220008%_
                                   _%g219666220009%_)
                            (let ((_%clause220080%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%g219666220009%_
                                                           '()))
                                               (cons '#f
                                                     (cons 'signature:
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g219664220007%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g219661220003%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked220082%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g219662220005%_))))
                              (_%loop219624%_
                               _%rest219655%_
                               (let ((_%$e220084%_ _%unchecked220082%_))
                                 (if _%$e220084%_
                                     _%$e220084%_
                                     _%unchecked-proc219629%_))
                               (cons _%clause220080%_
                                     _%unchecked-clauses219630%_))))
                          _%hd219739219997%_
                          _%hd219726219953%_
                          _%hd219713219909%_
                          _%hd219700219865%_
                          _%hd219687219821%_
                          _%hd219668219757%_)
                         (_%g219659219746%_ _%g219660219750%_))
                     (_%g219659219746%_ _%g219660219750%_))
                 (_%g219659219746%_ _%g219660219750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g219659219746%_
                                                  _%g219660219750%_))
                                             (_%g219659219746%_
                                              _%g219660219750%_))
                                         (_%g219659219746%_
                                          _%g219660219750%_))))
                                 (_%g219659219746%_ _%g219660219750%_))))
                         (_%g219659219746%_ _%g219660219750%_))
                     (_%g219659219746%_ _%g219660219750%_)))
               (_%g219659219746%_ _%g219660219750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219659219746%_
                                                _%g219660219750%_))
                                           (_%g219659219746%_
                                            _%g219660219750%_))))
                                   (_%g219659219746%_ _%g219660219750%_))
                               (_%g219659219746%_ _%g219660219750%_))
                           (_%g219659219746%_ _%g219660219750%_))))
                   (_%g219659219746%_ _%g219660219750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g219659219746%_
                                                    _%g219660219750%_))
                                               (_%g219659219746%_
                                                _%g219660219750%_)))
                                         (_%g219659219746%_
                                          _%g219660219750%_))))
                                 (_%g219659219746%_ _%g219660219750%_))
                             (_%g219659219746%_ _%g219660219750%_))))
                     (_%g219659219746%_ _%g219660219750%_))
                 (_%g219659219746%_ _%g219660219750%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g219659219746%_
                                                      _%g219660219750%_))))
                                             (_%g219659219746%_
                                              _%g219660219750%_))))
                                     (_%g219659219746%_ _%g219660219750%_))
                                 (_%g219659219746%_ _%g219660219750%_)))
                           (_%g219659219746%_ _%g219660219750%_))))
                   (_%g219659219746%_ _%g219660219750%_))
               (_%g219659219746%_ _%g219660219750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219659219746%_
                                                _%g219660219750%_))
                                           (_%g219659219746%_
                                            _%g219660219750%_))
                                       (_%g219659219746%_ _%g219660219750%_))))
                               (_%g219659219746%_ _%g219660219750%_))))
                       (_%g219659219746%_ _%g219660219750%_))
                   (_%g219659219746%_ _%g219660219750%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g219659219746%_
                                                      _%g219660219750%_))))
                                             (_%g219659219746%_
                                              _%g219660219750%_))
                                         (_%g219659219746%_
                                          _%g219660219750%_))))
                                 (_%g219659219746%_ _%g219660219750%_))
                             (_%g219659219746%_ _%g219660219750%_))
                         (_%g219659219746%_ _%g219660219750%_))))
                 (_%g219659219746%_ _%g219660219750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g219659219746%_
                                                  _%g219660219750%_))
                                             (_%g219659219746%_
                                              _%g219660219750%_)))
                                       (_%g219659219746%_ _%g219660219750%_))))
                               (_%g219659219746%_ _%g219660219750%_))))
                       (_%g219659219746%_ _%g219660219750%_))))
               (_%g219659219746%_ _%g219660219750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219659219746%_
                                                _%g219660219750%_)))))
                                   (_%g219658220088%_ _%hd219657%_)))))
                         (if (pair? _%rest219631219639%_)
                             (let ((_%hd219636220096%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest219631219639%_)))
                                   (_%tl219637220099%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest219631219639%_))))
                               (let* ((_%hd220102%_ _%hd219636220096%_)
                                      (_%rest220105%_ _%tl219637220099%_))
                                 (_%K219635220092%_
                                  _%rest220105%_
                                  _%hd220102%_)))
                             (_%else219633219651%_))))))
                (begin
                  (let ((_g221398_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g221397_)
                               (##values-length _g221397_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g221398_ 2)))
                        (error "Context expects 2 values" _g221398_)))
                  (let ((_%unchecked-proc220108%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221397_ 0)))
                        (_%unchecked-clauses220110%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221397_ 1))))
                    (if _%unchecked-proc220108%_
                        (let* ((_%g220112220136%_
                                (lambda (_%g220113220132%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g220113220132%_))))
                               (_%g220111220221%_
                                (lambda (_%g220113220140%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g220113220140%_))
                                      (let ((_%e220116220143%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g220113220140%_))))
                                        (let ((_%hd220117220147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e220116220143%_)))
                                              (_%tl220118220150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e220116220143%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl220118220150%_))
                                              (let ((_%e220119220153%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl220118220150%_))))
                                                (let ((_%hd220120220157%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e220119220153%_)))
                                                      (_%tl220121220160%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e220119220153%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd220120220157%_))
                                                      (let ((_g221409_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd220120220157%_ '0))))
                (begin
                  (let ((_g221410_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g221409_)
                               (##values-length _g221409_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g221410_ 2)))
                        (error "Context expects 2 values" _g221410_)))
                  (let ((_%target220122220163%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221409_ 0)))
                        (_%tl220124220166%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221409_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl220124220166%_))
                        (letrec ((_%loop220125220169%_
                                  (lambda (_%hd220123220173%_
                                           _%clause220129220176%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd220123220173%_))
                                        (let ((_%e220126220178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd220123220173%_))))
                                          (let ((_%lp-hd220127220182%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e220126220178%_)))
                                                (_%lp-tl220128220185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e220126220178%_))))
                                            (_%loop220125220169%_
                                             _%lp-tl220128220185%_
                                             (cons _%lp-hd220127220182%_
                                                   _%clause220129220176%_))))
                                        (let ((_%clause220130220188%_
                                               (reverse _%clause220129220176%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl220121220160%_))
                                              ((lambda (_%g220114220191%_
                                                        _%g220115220193%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g220115220193%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp221411
                                                    (lambda (_%g220212220215%_
                                                             _%g220213220218%_)
                                                      (cons _%g220212220215%_
                                                            _%g220213220218%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp221411
                                                '()
                                                _%g220114220191%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause220130220188%_
                                               _%hd220117220147%_)
                                              (_%g220112220136%_
                                               _%g220113220140%_)))))))
                          (_%loop220125220169%_ _%target220122220163%_ '()))
                        (_%g220112220136%_ _%g220113220140%_)))))
              (_%g220112220136%_ _%g220113220140%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g220112220136%_
                                               _%g220113220140%_))))
                                      (_%g220112220136%_ _%g220113220140%_)))))
                          (_%g220111220221%_
                           (list _%unchecked-proc220108%_
                                 _%unchecked-clauses220110%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g219563219574%_))))
                                        (_%g219561220225%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g219348219426%_
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'make-!primitive-case-lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '@list))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%g219462219543%_
                                          _%g219463219545%_))
                                       (let ((__tmp221412
                                              (lambda (_%g220228220232%_
                                                       _%g220229220235%_
                                                       _%g220230220237%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g220229220235%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g220228220232%_ '())))))
              _%g220230220237%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp221412
                                          '()
                                          _%g219462219543%_
                                          _%g219463219545%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig219473219539%_
                                    _%arity219474219541%_))))))
                   (_%loop219467219499%_ _%target219464219493%_ '() '()))
                 (_%g219460219486%_ _%g219461219490%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219460219486%_
                                                _%g219461219490%_)))))
                                   (_%g219459220240%_ _%signatures219457%_))
                                 (_%g219345219369%_ _%g219346219373%_)))
                           _%case-signature219363219421%_
                           _%hd219353219390%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop219358219402%_
                                                   _%target219355219396%_
                                                   '()))
                                                (_%g219345219369%_
                                                 _%g219346219373%_)))))
                                      (_%g219345219369%_ _%g219346219373%_))))
                              (_%g219345219369%_ _%g219346219373%_))))
                      (_%g219345219369%_ _%g219346219373%_)))))
          (_%g219344220244%_ _%stx219342%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx220252%_)
        (let* ((_%__stx221232221233%_ _%$stx220252%_)
               (_%g220258220318%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx221232221233%_)))))
          (let ((_%__kont221235221236%_
                 (lambda (_%g220260220540%_ _%g220261220542%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g220261220542%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g220261220542%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g220260220540%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont221237221238%_
                 (lambda (_%g220275220465%_
                          _%g220276220467%_
                          _%g220277220468%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g220277220468%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g220277220468%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g220276220467%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g220275220465%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont221239221240%_
                 (lambda (_%g220294220379%_
                          _%g220295220381%_
                          _%g220296220382%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g220296220382%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g220296220382%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g220295220381%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g220294220379%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx221232221233%_))
                (let ((_%e220262220496%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx221232221233%_))))
                  (let ((_%tl220264220503%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e220262220496%_)))
                        (_%hd220263220500%_
                         (let ()
                           (declare (not safe))
                           (##car _%e220262220496%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl220264220503%_))
                        (let ((_%e220265220506%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl220264220503%_))))
                          (let ((_%tl220267220513%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e220265220506%_)))
                                (_%hd220266220510%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e220265220506%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd220266220510%_))
                                (let ((_%e220268220516%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd220266220510%_))))
                                  (if (equal? _%e220268220516%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl220267220513%_))
                                          (let ((_%e220269220520%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl220267220513%_))))
                                            (let ((_%tl220271220527%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e220269220520%_)))
                                                  (_%hd220270220524%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e220269220520%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl220271220527%_))
                                                  (let ((_%e220272220530%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl220271220527%_))))
                                                    (let ((_%tl220274220537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e220272220530%_)))
                                                          (_%hd220273220534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e220272220530%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl220274220537%_))
                                                          (_%__kont221235221236%_
                                                           _%hd220273220534%_
                                                           _%hd220270220524%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g220258220318%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g220258220318%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g220258220318%_)))
                                      (if (equal? _%e220268220516%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl220267220513%_))
                                              (let ((_%e220285220435%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl220267220513%_))))
                                                (let ((_%tl220287220442%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e220285220435%_)))
                                                      (_%hd220286220439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e220285220435%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl220287220442%_))
                                                      (let ((_%e220288220445%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl220287220442%_))))
                (let ((_%tl220290220452%_
                       (let () (declare (not safe)) (##cdr _%e220288220445%_)))
                      (_%hd220289220449%_
                       (let ()
                         (declare (not safe))
                         (##car _%e220288220445%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl220290220452%_))
                      (let ((_%e220291220455%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl220290220452%_))))
                        (let ((_%tl220293220462%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e220291220455%_)))
                              (_%hd220292220459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e220291220455%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl220293220462%_))
                              (_%__kont221237221238%_
                               _%hd220292220459%_
                               _%hd220289220449%_
                               _%hd220286220439%_)
                              (let ()
                                (declare (not safe))
                                (_%g220258220318%_)))))
                      (let () (declare (not safe)) (_%g220258220318%_)))))
              (let () (declare (not safe)) (_%g220258220318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g220258220318%_)))
                                          (if (equal? _%e220268220516%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl220267220513%_))
                                                  (let ((_%e220304220349%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl220267220513%_))))
                                                    (let ((_%tl220306220356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e220304220349%_)))
                                                          (_%hd220305220353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e220304220349%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl220306220356%_))
                                                          (let ((_%e220307220359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl220306220356%_))))
                    (let ((_%tl220309220366%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e220307220359%_)))
                          (_%hd220308220363%_
                           (let ()
                             (declare (not safe))
                             (##car _%e220307220359%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl220309220366%_))
                          (let ((_%e220310220369%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl220309220366%_))))
                            (let ((_%tl220312220376%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e220310220369%_)))
                                  (_%hd220311220373%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e220310220369%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl220312220376%_))
                                  (_%__kont221239221240%_
                                   _%hd220311220373%_
                                   _%hd220308220363%_
                                   _%hd220305220353%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g220258220318%_)))))
                          (let () (declare (not safe)) (_%g220258220318%_)))))
                  (let () (declare (not safe)) (_%g220258220318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g220258220318%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g220258220318%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g220258220318%_)))))
                        (let () (declare (not safe)) (_%g220258220318%_)))))
                (let () (declare (not safe)) (_%g220258220318%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx220564%_)
        (let* ((_%g220568220588%_
                (lambda (_%g220569220584%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g220569220584%_))))
               (_%g220567220657%_
                (lambda (_%g220569220592%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g220569220592%_))
                      (let ((_%e220571220595%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g220569220592%_))))
                        (let ((_%hd220572220599%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e220571220595%_)))
                              (_%tl220573220602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e220571220595%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl220573220602%_))
                              (let ((_g221413_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl220573220602%_
                                        '0))))
                                (begin
                                  (let ((_g221414_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221413_)
                                               (##values-length _g221413_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221414_ 2)))
                                        (error "Context expects 2 values"
                                               _g221414_)))
                                  (let ((_%target220574220605%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221413_ 0)))
                                        (_%tl220576220608%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221413_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl220576220608%_))
                                        (letrec ((_%loop220577220611%_
                                                  (lambda (_%hd220575220615%_
                                                           _%decl220581220618%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd220575220615%_))
                                                        (let ((_%e220578220620%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd220575220615%_))))
                  (let ((_%lp-hd220579220624%_
                         (let ()
                           (declare (not safe))
                           (##car _%e220578220620%_)))
                        (_%lp-tl220580220627%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e220578220620%_))))
                    (_%loop220577220611%_
                     _%lp-tl220580220627%_
                     (cons _%lp-hd220579220624%_ _%decl220581220618%_))))
                (let ((_%decl220582220630%_ (reverse _%decl220581220618%_)))
                  ((lambda (_%g220570220633%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp221415
                                  (lambda (_%g220648220651%_ _%g220649220654%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g220648220651%_)
                                          _%g220649220654%_))))
                             (declare (not safe))
                             (__foldr1 __tmp221415 '() _%g220570220633%_))))
                   _%decl220582220630%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop220577220611%_
                                           _%target220574220605%_
                                           '()))
                                        (_%g220568220588%_
                                         _%g220569220592%_)))))
                              (_%g220568220588%_ _%g220569220592%_))))
                      (_%g220568220588%_ _%g220569220592%_)))))
          (_%g220567220657%_ _%$stx220564%_))))))
