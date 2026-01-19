(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g221303_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221310_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221312_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221314_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221316_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221318_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221330_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221332_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221334_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221336_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g221338_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx214721%_)
        (let* ((_%g214725214743%_
                (lambda (_%g214726214739%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214726214739%_))))
               (_%g214724214798%_
                (lambda (_%g214726214747%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214726214747%_))
                      (let ((_%e214729214750%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214726214747%_))))
                        (let ((_%hd214730214754%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214729214750%_)))
                              (_%tl214731214757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214729214750%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214731214757%_))
                              (let ((_%e214732214760%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214731214757%_))))
                                (let ((_%hd214733214764%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214732214760%_)))
                                      (_%tl214734214767%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214732214760%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214734214767%_))
                                      (let ((_%e214735214770%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl214734214767%_))))
                                        (let ((_%hd214736214774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214735214770%_)))
                                              (_%tl214737214777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214735214770%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214737214777%_))
                                              ((lambda (_%L214780%_
                                                        _%L214782%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L214782%_))
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
                               (cons _%L214782%_ '()))
                         (cons _%L214780%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g214725214743%_
                                                      _%g214726214747%_)))
                                               _%hd214736214774%_
                                               _%hd214733214764%_)
                                              (_%g214725214743%_
                                               _%g214726214747%_))))
                                      (_%g214725214743%_ _%g214726214747%_))))
                              (_%g214725214743%_ _%g214726214747%_))))
                      (_%g214725214743%_ _%g214726214747%_)))))
          (_%g214724214798%_ _%$stx214721%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx214802%_)
        (let* ((_%g214806214824%_
                (lambda (_%g214807214820%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214807214820%_))))
               (_%g214805214879%_
                (lambda (_%g214807214828%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214807214828%_))
                      (let ((_%e214810214831%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214807214828%_))))
                        (let ((_%hd214811214835%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214810214831%_)))
                              (_%tl214812214838%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214810214831%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214812214838%_))
                              (let ((_%e214813214841%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214812214838%_))))
                                (let ((_%hd214814214845%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214813214841%_)))
                                      (_%tl214815214848%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214813214841%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214815214848%_))
                                      (let ((_%e214816214851%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl214815214848%_))))
                                        (let ((_%hd214817214855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214816214851%_)))
                                              (_%tl214818214858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214816214851%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214818214858%_))
                                              ((lambda (_%L214861%_
                                                        _%L214863%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L214863%_))
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
                               (cons _%L214863%_ '()))
                         (cons _%L214861%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g214806214824%_
                                                      _%g214807214828%_)))
                                               _%hd214817214855%_
                                               _%hd214814214845%_)
                                              (_%g214806214824%_
                                               _%g214807214828%_))))
                                      (_%g214806214824%_ _%g214807214828%_))))
                              (_%g214806214824%_ _%g214807214828%_))))
                      (_%g214806214824%_ _%g214807214828%_)))))
          (_%g214805214879%_ _%$stx214802%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx214883%_)
        (let* ((_%g214887214916%_
                (lambda (_%g214888214912%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214888214912%_))))
               (_%g214886215016%_
                (lambda (_%g214888214920%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214888214920%_))
                      (let ((_%e214891214923%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214888214920%_))))
                        (let ((_%hd214892214927%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214891214923%_)))
                              (_%tl214893214930%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214891214923%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl214893214930%_))
                              (let ((_g221281_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl214893214930%_
                                        '0))))
                                (begin
                                  (let ((_g221282_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221281_)
                                               (##values-length _g221281_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221282_ 2)))
                                        (error "Context expects 2 values"
                                               _g221282_)))
                                  (let ((_%target214894214933%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221281_ 0)))
                                        (_%tl214896214936%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221281_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl214896214936%_))
                                        (letrec ((_%loop214897214939%_
                                                  (lambda (_%hd214895214943%_
                                                           _%type214901214946%_
                                                           _%symbol214902214948%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd214895214943%_))
                                                        (let ((_%e214898214951%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd214895214943%_))))
                  (let ((_%lp-hd214899214955%_
                         (let ()
                           (declare (not safe))
                           (##car _%e214898214951%_)))
                        (_%lp-tl214900214958%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e214898214951%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd214899214955%_))
                        (let ((_%e214905214961%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd214899214955%_))))
                          (let ((_%hd214906214965%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e214905214961%_)))
                                (_%tl214907214968%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e214905214961%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl214907214968%_))
                                (let ((_%e214908214971%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl214907214968%_))))
                                  (let ((_%hd214909214975%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e214908214971%_)))
                                        (_%tl214910214978%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e214908214971%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl214910214978%_))
                                        (_%loop214897214939%_
                                         _%lp-tl214900214958%_
                                         (cons _%hd214909214975%_
                                               _%type214901214946%_)
                                         (cons _%hd214906214965%_
                                               _%symbol214902214948%_))
                                        (_%g214887214916%_
                                         _%g214888214920%_))))
                                (_%g214887214916%_ _%g214888214920%_))))
                        (_%g214887214916%_ _%g214888214920%_))))
                (let ((_%type214903214981%_ (reverse _%type214901214946%_))
                      (_%symbol214904214984%_
                       (reverse _%symbol214902214948%_)))
                  ((lambda (_%L214987%_ _%L214989%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L214987%_
                                _%L214989%_))
                             (let ((__tmp221283
                                    (lambda (_%g215004215008%_
                                             _%g215005215011%_
                                             _%g215006215013%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g215005215011%_
                                                        (cons _%g215004215008%_
                                                              '())))
                                            _%g215006215013%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp221283
                                '()
                                _%L214987%_
                                _%L214989%_)))))
                   _%type214903214981%_
                   _%symbol214904214984%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop214897214939%_
                                           _%target214894214933%_
                                           '()
                                           '()))
                                        (_%g214887214916%_
                                         _%g214888214920%_)))))
                              (_%g214887214916%_ _%g214888214920%_))))
                      (_%g214887214916%_ _%g214888214920%_)))))
          (_%g214886215016%_ _%$stx214883%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx215021%_)
        (let* ((_%__stx220592220593%_ _%$stx215021%_)
               (_%g215026215068%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220592220593%_)))))
          (let ((_%__kont220595220596%_
                 (lambda (_%L215196%_ _%L215198%_ _%L215199%_ _%L215200%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L215200%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L215199%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L215198%_ '()))
                                           (cons _%L215196%_ '())))))))
                (_%__kont220597220598%_
                 (lambda (_%L215115%_ _%L215117%_ _%L215118%_ _%L215119%_)
                   (cons _%L215119%_
                         (cons _%L215118%_
                               (cons _%L215117%_
                                     (cons _%L215115%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match220631220632%_
                   (lambda (_%e215032215146%_
                            _%hd215033215150%_
                            _%tl215034215153%_
                            _%e215035215156%_
                            _%hd215036215160%_
                            _%tl215037215163%_
                            _%e215038215166%_
                            _%hd215039215170%_
                            _%tl215040215173%_
                            _%e215041215176%_
                            _%hd215042215180%_
                            _%tl215043215183%_
                            _%e215044215186%_
                            _%hd215045215190%_
                            _%tl215046215193%_)
                     (let ((_%L215196%_ _%hd215045215190%_)
                           (_%L215198%_ _%hd215042215180%_)
                           (_%L215199%_ _%hd215039215170%_)
                           (_%L215200%_ _%hd215036215160%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L215200%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L215199%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L215198%_)))
                           (_%__kont220595220596%_
                            _%L215196%_
                            _%L215198%_
                            _%L215199%_
                            _%L215200%_)
                           (let ()
                             (declare (not safe))
                             (_%g215026215068%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220592220593%_))
                  (let ((_%e215032215146%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220592220593%_))))
                    (let ((_%tl215034215153%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e215032215146%_)))
                          (_%hd215033215150%_
                           (let ()
                             (declare (not safe))
                             (##car _%e215032215146%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl215034215153%_))
                          (let ((_%e215035215156%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl215034215153%_))))
                            (let ((_%tl215037215163%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e215035215156%_)))
                                  (_%hd215036215160%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e215035215156%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl215037215163%_))
                                  (let ((_%e215038215166%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl215037215163%_))))
                                    (let ((_%tl215040215173%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e215038215166%_)))
                                          (_%hd215039215170%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e215038215166%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl215040215173%_))
                                          (let ((_%e215041215176%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl215040215173%_))))
                                            (let ((_%tl215043215183%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e215041215176%_)))
                                                  (_%hd215042215180%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e215041215176%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl215043215183%_))
                                                  (let ((_%e215044215186%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl215043215183%_))))
                                                    (let ((_%tl215046215193%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e215044215186%_)))
                                                          (_%hd215045215190%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e215044215186%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl215046215193%_))
                                                          (_%__match220631220632%_
                                                           _%e215032215146%_
                                                           _%hd215033215150%_
                                                           _%tl215034215153%_
                                                           _%e215035215156%_
                                                           _%hd215036215160%_
                                                           _%tl215037215163%_
                                                           _%e215038215166%_
                                                           _%hd215039215170%_
                                                           _%tl215040215173%_
                                                           _%e215041215176%_
                                                           _%hd215042215180%_
                                                           _%tl215043215183%_
                                                           _%e215044215186%_
                                                           _%hd215045215190%_
                                                           _%tl215046215193%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g215026215068%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl215043215183%_))
                                                      (_%__kont220597220598%_
                                                       _%hd215042215180%_
                                                       _%hd215039215170%_
                                                       _%hd215036215160%_
                                                       _%hd215033215150%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g215026215068%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g215026215068%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g215026215068%_)))))
                          (let () (declare (not safe)) (_%g215026215068%_)))))
                  (let () (declare (not safe)) (_%g215026215068%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx215225%_)
        (let* ((_%g215229215264%_
                (lambda (_%g215230215260%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215230215260%_))))
               (_%g215228215383%_
                (lambda (_%g215230215268%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215230215268%_))
                      (let ((_%e215234215271%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215230215268%_))))
                        (let ((_%hd215235215275%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215234215271%_)))
                              (_%tl215236215278%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215234215271%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl215236215278%_))
                              (let ((_g221284_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl215236215278%_
                                        '0))))
                                (begin
                                  (let ((_g221285_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221284_)
                                               (##values-length _g221284_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221285_ 2)))
                                        (error "Context expects 2 values"
                                               _g221285_)))
                                  (let ((_%target215237215281%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221284_ 0)))
                                        (_%tl215239215284%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221284_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl215239215284%_))
                                        (letrec ((_%loop215240215287%_
                                                  (lambda (_%hd215238215291%_
                                                           _%symbol215244215294%_
                                                           _%method215245215296%_
                                                           _%type-t215246215298%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd215238215291%_))
                                                        (let ((_%e215241215301%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd215238215291%_))))
                  (let ((_%lp-hd215242215305%_
                         (let ()
                           (declare (not safe))
                           (##car _%e215241215301%_)))
                        (_%lp-tl215243215308%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e215241215301%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd215242215305%_))
                        (let ((_%e215250215311%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd215242215305%_))))
                          (let ((_%hd215251215315%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215250215311%_)))
                                (_%tl215252215318%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215250215311%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl215252215318%_))
                                (let ((_%e215253215321%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl215252215318%_))))
                                  (let ((_%hd215254215325%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e215253215321%_)))
                                        (_%tl215255215328%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e215253215321%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl215255215328%_))
                                        (let ((_%e215256215331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl215255215328%_))))
                                          (let ((_%hd215257215335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e215256215331%_)))
                                                (_%tl215258215338%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e215256215331%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215258215338%_))
                                                (_%loop215240215287%_
                                                 _%lp-tl215243215308%_
                                                 (cons _%hd215257215335%_
                                                       _%symbol215244215294%_)
                                                 (cons _%hd215254215325%_
                                                       _%method215245215296%_)
                                                 (cons _%hd215251215315%_
                                                       _%type-t215246215298%_))
                                                (_%g215229215264%_
                                                 _%g215230215268%_))))
                                        (_%g215229215264%_
                                         _%g215230215268%_))))
                                (_%g215229215264%_ _%g215230215268%_))))
                        (_%g215229215264%_ _%g215230215268%_))))
                (let ((_%symbol215247215341%_ (reverse _%symbol215244215294%_))
                      (_%method215248215344%_ (reverse _%method215245215296%_))
                      (_%type-t215249215346%_
                       (reverse _%type-t215246215298%_)))
                  ((lambda (_%L215349%_ _%L215351%_ _%L215352%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L215349%_
                                _%L215351%_
                                _%L215352%_))
                             (let ((__tmp221286
                                    (lambda (_%g215368215373%_
                                             _%g215369215376%_
                                             _%g215370215378%_
                                             _%g215371215380%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g215370215378%_
                                                        (cons _%g215369215376%_
                                                              (cons _%g215368215373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g215371215380%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp221286
                                '()
                                _%L215349%_
                                _%L215351%_
                                _%L215352%_)))))
                   _%symbol215247215341%_
                   _%method215248215344%_
                   _%type-t215249215346%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop215240215287%_
                                           _%target215237215281%_
                                           '()
                                           '()
                                           '()))
                                        (_%g215229215264%_
                                         _%g215230215268%_)))))
                              (_%g215229215264%_ _%g215230215268%_))))
                      (_%g215229215264%_ _%g215230215268%_)))))
          (_%g215228215383%_ _%$stx215225%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx215388%_)
        (let* ((_%g215392215425%_
                (lambda (_%g215393215421%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215393215421%_))))
               (_%g215391215539%_
                (lambda (_%g215393215429%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215393215429%_))
                      (let ((_%e215397215432%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215393215429%_))))
                        (let ((_%hd215398215436%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215397215432%_)))
                              (_%tl215399215439%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215397215432%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215399215439%_))
                              (let ((_%e215400215442%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215399215439%_))))
                                (let ((_%hd215401215446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215400215442%_)))
                                      (_%tl215402215449%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215400215442%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl215402215449%_))
                                      (let ((_g221287_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl215402215449%_
                                                '0))))
                                        (begin
                                          (let ((_g221288_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g221287_)
                                                       (##values-length
                                                        _g221287_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g221288_ 2)))
                                                (error "Context expects 2 values"
                                                       _g221288_)))
                                          (let ((_%target215403215452%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g221287_ 0)))
                                                (_%tl215405215455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g221287_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215405215455%_))
                                                (letrec ((_%loop215406215458%_
                                                          (lambda (_%hd215404215462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol215410215465%_
                           _%method215411215467%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd215404215462%_))
                        (let ((_%e215407215470%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd215404215462%_))))
                          (let ((_%lp-hd215408215474%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215407215470%_)))
                                (_%lp-tl215409215477%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215407215470%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd215408215474%_))
                                (let ((_%e215414215480%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd215408215474%_))))
                                  (let ((_%hd215415215484%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e215414215480%_)))
                                        (_%tl215416215487%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e215414215480%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl215416215487%_))
                                        (let ((_%e215417215490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl215416215487%_))))
                                          (let ((_%hd215418215494%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e215417215490%_)))
                                                (_%tl215419215497%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e215417215490%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl215419215497%_))
                                                (_%loop215406215458%_
                                                 _%lp-tl215409215477%_
                                                 (cons _%hd215418215494%_
                                                       _%symbol215410215465%_)
                                                 (cons _%hd215415215484%_
                                                       _%method215411215467%_))
                                                (_%g215392215425%_
                                                 _%g215393215429%_))))
                                        (_%g215392215425%_
                                         _%g215393215429%_))))
                                (_%g215392215425%_ _%g215393215429%_))))
                        (let ((_%symbol215412215500%_
                               (reverse _%symbol215410215465%_))
                              (_%method215413215503%_
                               (reverse _%method215411215467%_)))
                          ((lambda (_%L215506%_ _%L215508%_ _%L215509%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L215506%_
                                        _%L215508%_))
                                     (let ((__tmp221289
                                            (lambda (_%g215527215531%_
                                                     _%g215528215534%_
                                                     _%g215529215536%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L215509%_
                                                                (cons _%g215528215534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g215527215531%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g215529215536%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp221289
                                        '()
                                        _%L215506%_
                                        _%L215508%_)))))
                           _%symbol215412215500%_
                           _%method215413215503%_
                           _%hd215401215446%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop215406215458%_
                                                   _%target215403215452%_
                                                   '()
                                                   '()))
                                                (_%g215392215425%_
                                                 _%g215393215429%_)))))
                                      (_%g215392215425%_ _%g215393215429%_))))
                              (_%g215392215425%_ _%g215393215429%_))))
                      (_%g215392215425%_ _%g215393215429%_)))))
          (_%g215391215539%_ _%$stx215388%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx215544%_)
        (let* ((_%g215548215562%_
                (lambda (_%g215549215558%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215549215558%_))))
               (_%g215547215603%_
                (lambda (_%g215549215566%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215549215566%_))
                      (let ((_%e215551215569%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215549215566%_))))
                        (let ((_%hd215552215573%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215551215569%_)))
                              (_%tl215553215576%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215551215569%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215553215576%_))
                              (let ((_%e215554215579%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215553215576%_))))
                                (let ((_%hd215555215583%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215554215579%_)))
                                      (_%tl215556215586%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215554215579%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215556215586%_))
                                      ((lambda (_%L215589%_)
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
                                                           (cons _%L215589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd215555215583%_)
                                      (_%g215548215562%_ _%g215549215566%_))))
                              (_%g215548215562%_ _%g215549215566%_))))
                      (_%g215548215562%_ _%g215549215566%_)))))
          (_%g215547215603%_ _%$stx215544%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx215607%_)
        (let* ((_%g215611215665%_
                (lambda (_%g215612215661%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215612215661%_))))
               (_%g215610215846%_
                (lambda (_%g215612215669%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215612215669%_))
                      (let ((_%e215624215672%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215612215669%_))))
                        (let ((_%hd215625215676%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215624215672%_)))
                              (_%tl215626215679%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215624215672%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215626215679%_))
                              (let ((_%e215627215682%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215626215679%_))))
                                (let ((_%hd215628215686%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215627215682%_)))
                                      (_%tl215629215689%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215627215682%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215629215689%_))
                                      (let ((_%e215630215692%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl215629215689%_))))
                                        (let ((_%hd215631215696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215630215692%_)))
                                              (_%tl215632215699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215630215692%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl215632215699%_))
                                              (let ((_%e215633215702%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl215632215699%_))))
                                                (let ((_%hd215634215706%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e215633215702%_)))
                                                      (_%tl215635215709%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e215633215702%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl215635215709%_))
                                                      (let ((_%e215636215712%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl215635215709%_))))
                (let ((_%hd215637215716%_
                       (let () (declare (not safe)) (##car _%e215636215712%_)))
                      (_%tl215638215719%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e215636215712%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl215638215719%_))
                      (let ((_%e215639215722%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl215638215719%_))))
                        (let ((_%hd215640215726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215639215722%_)))
                              (_%tl215641215729%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215639215722%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215641215729%_))
                              (let ((_%e215642215732%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215641215729%_))))
                                (let ((_%hd215643215736%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215642215732%_)))
                                      (_%tl215644215739%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215642215732%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215644215739%_))
                                      (let ((_%e215645215742%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl215644215739%_))))
                                        (let ((_%hd215646215746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215645215742%_)))
                                              (_%tl215647215749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215645215742%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl215647215749%_))
                                              (let ((_%e215648215752%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl215647215749%_))))
                                                (let ((_%hd215649215756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e215648215752%_)))
                                                      (_%tl215650215759%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e215648215752%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl215650215759%_))
                                                      (let ((_%e215651215762%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl215650215759%_))))
                (let ((_%hd215652215766%_
                       (let () (declare (not safe)) (##car _%e215651215762%_)))
                      (_%tl215653215769%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e215651215762%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl215653215769%_))
                      (let ((_%e215654215772%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl215653215769%_))))
                        (let ((_%hd215655215776%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215654215772%_)))
                              (_%tl215656215779%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215654215772%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215656215779%_))
                              (let ((_%e215657215782%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215656215779%_))))
                                (let ((_%hd215658215786%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215657215782%_)))
                                      (_%tl215659215789%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215657215782%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215659215789%_))
                                      ((lambda (_%L215792%_
                                                _%L215794%_
                                                _%L215795%_
                                                _%L215796%_
                                                _%L215797%_
                                                _%L215798%_
                                                _%L215799%_
                                                _%L215800%_
                                                _%L215801%_
                                                _%L215802%_
                                                _%L215803%_)
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
                                                           (cons _%L215803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L215802%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L215801%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L215800%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L215799%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L215798%_ '()))
                                           (cons _%L215797%_
                                                 (cons _%L215796%_
                                                       (cons _%L215795%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L215794%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L215792%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd215658215786%_
                                       _%hd215655215776%_
                                       _%hd215652215766%_
                                       _%hd215649215756%_
                                       _%hd215646215746%_
                                       _%hd215643215736%_
                                       _%hd215640215726%_
                                       _%hd215637215716%_
                                       _%hd215634215706%_
                                       _%hd215631215696%_
                                       _%hd215628215686%_)
                                      (_%g215611215665%_ _%g215612215669%_))))
                              (_%g215611215665%_ _%g215612215669%_))))
                      (_%g215611215665%_ _%g215612215669%_))))
              (_%g215611215665%_ _%g215612215669%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g215611215665%_
                                               _%g215612215669%_))))
                                      (_%g215611215665%_ _%g215612215669%_))))
                              (_%g215611215665%_ _%g215612215669%_))))
                      (_%g215611215665%_ _%g215612215669%_))))
              (_%g215611215665%_ _%g215612215669%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g215611215665%_
                                               _%g215612215669%_))))
                                      (_%g215611215665%_ _%g215612215669%_))))
                              (_%g215611215665%_ _%g215612215669%_))))
                      (_%g215611215665%_ _%g215612215669%_)))))
          (_%g215610215846%_ _%$stx215607%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx215850%_)
        (let* ((_%g215854215868%_
                (lambda (_%g215855215864%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215855215864%_))))
               (_%g215853215909%_
                (lambda (_%g215855215872%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215855215872%_))
                      (let ((_%e215857215875%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215855215872%_))))
                        (let ((_%hd215858215879%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215857215875%_)))
                              (_%tl215859215882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215857215875%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215859215882%_))
                              (let ((_%e215860215885%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215859215882%_))))
                                (let ((_%hd215861215889%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215860215885%_)))
                                      (_%tl215862215892%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215860215885%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215862215892%_))
                                      ((lambda (_%L215895%_)
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
                                                           (cons _%L215895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd215861215889%_)
                                      (_%g215854215868%_ _%g215855215872%_))))
                              (_%g215854215868%_ _%g215855215872%_))))
                      (_%g215854215868%_ _%g215855215872%_)))))
          (_%g215853215909%_ _%$stx215850%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx215913%_)
        (let* ((_%g215917215931%_
                (lambda (_%g215918215927%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215918215927%_))))
               (_%g215916215972%_
                (lambda (_%g215918215935%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215918215935%_))
                      (let ((_%e215920215938%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215918215935%_))))
                        (let ((_%hd215921215942%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215920215938%_)))
                              (_%tl215922215945%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215920215938%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215922215945%_))
                              (let ((_%e215923215948%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215922215945%_))))
                                (let ((_%hd215924215952%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215923215948%_)))
                                      (_%tl215925215955%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215923215948%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl215925215955%_))
                                      ((lambda (_%L215958%_)
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
                                                           (cons _%L215958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd215924215952%_)
                                      (_%g215917215931%_ _%g215918215935%_))))
                              (_%g215917215931%_ _%g215918215935%_))))
                      (_%g215917215931%_ _%g215918215935%_)))))
          (_%g215916215972%_ _%$stx215913%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx215976%_)
        (let* ((_%g215980216002%_
                (lambda (_%g215981215998%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215981215998%_))))
               (_%g215979216071%_
                (lambda (_%g215981216006%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215981216006%_))
                      (let ((_%e215985216009%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215981216006%_))))
                        (let ((_%hd215986216013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215985216009%_)))
                              (_%tl215987216016%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215985216009%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl215987216016%_))
                              (let ((_%e215988216019%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl215987216016%_))))
                                (let ((_%hd215989216023%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e215988216019%_)))
                                      (_%tl215990216026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e215988216019%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl215990216026%_))
                                      (let ((_%e215991216029%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl215990216026%_))))
                                        (let ((_%hd215992216033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215991216029%_)))
                                              (_%tl215993216036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215991216029%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl215993216036%_))
                                              (let ((_%e215994216039%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl215993216036%_))))
                                                (let ((_%hd215995216043%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e215994216039%_)))
                                                      (_%tl215996216046%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e215994216039%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl215996216046%_))
                                                      ((lambda (_%L216049%_
                                                                _%L216051%_
                                                                _%L216052%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L216052%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L216051%_ '()))
                                   (cons _%L216049%_ '())))))
               _%hd215995216043%_
               _%hd215992216033%_
               _%hd215989216023%_)
              (_%g215980216002%_ _%g215981216006%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g215980216002%_
                                               _%g215981216006%_))))
                                      (_%g215980216002%_ _%g215981216006%_))))
                              (_%g215980216002%_ _%g215981216006%_))))
                      (_%g215980216002%_ _%g215981216006%_)))))
          (_%g215979216071%_ _%$stx215976%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx216075%_)
        (let* ((_%g216079216101%_
                (lambda (_%g216080216097%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216080216097%_))))
               (_%g216078216170%_
                (lambda (_%g216080216105%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216080216105%_))
                      (let ((_%e216084216108%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216080216105%_))))
                        (let ((_%hd216085216112%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216084216108%_)))
                              (_%tl216086216115%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216084216108%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216086216115%_))
                              (let ((_%e216087216118%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216086216115%_))))
                                (let ((_%hd216088216122%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216087216118%_)))
                                      (_%tl216089216125%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216087216118%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216089216125%_))
                                      (let ((_%e216090216128%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216089216125%_))))
                                        (let ((_%hd216091216132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216090216128%_)))
                                              (_%tl216092216135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216090216128%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216092216135%_))
                                              (let ((_%e216093216138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl216092216135%_))))
                                                (let ((_%hd216094216142%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216093216138%_)))
                                                      (_%tl216095216145%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216093216138%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216095216145%_))
                                                      ((lambda (_%L216148%_
                                                                _%L216150%_
                                                                _%L216151%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L216151%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L216150%_ '()))
                                   (cons _%L216148%_ '())))))
               _%hd216094216142%_
               _%hd216091216132%_
               _%hd216088216122%_)
              (_%g216079216101%_ _%g216080216105%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g216079216101%_
                                               _%g216080216105%_))))
                                      (_%g216079216101%_ _%g216080216105%_))))
                              (_%g216079216101%_ _%g216080216105%_))))
                      (_%g216079216101%_ _%g216080216105%_)))))
          (_%g216078216170%_ _%$stx216075%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx216174%_)
        (let* ((_%g216178216192%_
                (lambda (_%g216179216188%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216179216188%_))))
               (_%g216177216233%_
                (lambda (_%g216179216196%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216179216196%_))
                      (let ((_%e216181216199%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216179216196%_))))
                        (let ((_%hd216182216203%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216181216199%_)))
                              (_%tl216183216206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216181216199%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216183216206%_))
                              (let ((_%e216184216209%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216183216206%_))))
                                (let ((_%hd216185216213%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216184216209%_)))
                                      (_%tl216186216216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216184216209%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216186216216%_))
                                      ((lambda (_%L216219%_)
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
                                                           (cons _%L216219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd216185216213%_)
                                      (_%g216178216192%_ _%g216179216196%_))))
                              (_%g216178216192%_ _%g216179216196%_))))
                      (_%g216178216192%_ _%g216179216196%_)))))
          (_%g216177216233%_ _%$stx216174%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx216237%_)
        (let* ((_%g216241216259%_
                (lambda (_%g216242216255%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216242216255%_))))
               (_%g216240216314%_
                (lambda (_%g216242216263%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216242216263%_))
                      (let ((_%e216245216266%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216242216263%_))))
                        (let ((_%hd216246216270%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216245216266%_)))
                              (_%tl216247216273%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216245216266%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216247216273%_))
                              (let ((_%e216248216276%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216247216273%_))))
                                (let ((_%hd216249216280%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216248216276%_)))
                                      (_%tl216250216283%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216248216276%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216250216283%_))
                                      (let ((_%e216251216286%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216250216283%_))))
                                        (let ((_%hd216252216290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216251216286%_)))
                                              (_%tl216253216293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216251216286%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216253216293%_))
                                              ((lambda (_%L216296%_
                                                        _%L216298%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L216298%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L216296%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd216252216290%_
                                               _%hd216249216280%_)
                                              (_%g216241216259%_
                                               _%g216242216263%_))))
                                      (_%g216241216259%_ _%g216242216263%_))))
                              (_%g216241216259%_ _%g216242216263%_))))
                      (_%g216241216259%_ _%g216242216263%_)))))
          (_%g216240216314%_ _%$stx216237%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx216318%_)
        (let* ((_%__stx220660220661%_ _%$stx216318%_)
               (_%g216325216386%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220660220661%_)))))
          (let ((_%__kont220663220664%_
                 (lambda (_%L216624%_ _%L216626%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L216626%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L216624%_ '()))
                                     '())))))
                (_%__kont220665220666%_
                 (lambda (_%L216563%_ _%L216565%_ _%L216566%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L216566%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L216565%_ '()))
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
                                 (cons _%L216563%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont220667220668%_
                 (lambda (_%L216487%_ _%L216489%_)
                   (cons _%L216489%_ (cons _%L216487%_ (cons '#f '())))))
                (_%__kont220669220670%_
                 (lambda (_%L216437%_ _%L216439%_ _%L216440%_)
                   (cons _%L216440%_
                         (cons _%L216439%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L216437%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx220660220661%_))
                (let ((_%e216329216594%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx220660220661%_))))
                  (let ((_%tl216331216601%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216329216594%_)))
                        (_%hd216330216598%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216329216594%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl216331216601%_))
                        (let ((_%e216332216604%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl216331216601%_))))
                          (let ((_%tl216334216611%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e216332216604%_)))
                                (_%hd216333216608%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e216332216604%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl216334216611%_))
                                (let ((_%e216335216614%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl216334216611%_))))
                                  (let ((_%tl216337216621%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e216335216614%_)))
                                        (_%hd216336216618%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e216335216614%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216337216621%_))
                                        (_%__kont220663220664%_
                                         _%hd216336216618%_
                                         _%hd216333216608%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl216337216621%_))
                                            (let ((_%e216350216539%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl216337216621%_))))
                                              (let ((_%tl216352216546%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e216350216539%_)))
                                                    (_%hd216351216543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e216350216539%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd216351216543%_))
                                                    (let ((_%e216353216549%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd216351216543%_))))
                                                      (if (equal? _%e216353216549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216352216546%_))
                      (let ((_%e216354216553%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl216352216546%_))))
                        (let ((_%tl216356216560%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216354216553%_)))
                              (_%hd216355216557%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216354216553%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216356216560%_))
                              (_%__kont220665220666%_
                               _%hd216355216557%_
                               _%hd216336216618%_
                               _%hd216333216608%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd216336216618%_))
                                  (let ((_%e216377216423%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216336216618%_))))
                                    (declare (not safe))
                                    (_%g216325216386%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216325216386%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd216336216618%_))
                          (let ((_%e216377216423%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd216336216618%_))))
                            (if (equal? _%e216377216423%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl216352216546%_))
                                    (_%__kont220669220670%_
                                     _%hd216351216543%_
                                     _%hd216333216608%_
                                     _%hd216330216598%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g216325216386%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g216325216386%_))))
                          (let () (declare (not safe)) (_%g216325216386%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd216336216618%_))
                      (let ((_%e216377216423%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd216336216618%_))))
                        (if (equal? _%e216377216423%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl216352216546%_))
                                (_%__kont220669220670%_
                                 _%hd216351216543%_
                                 _%hd216333216608%_
                                 _%hd216330216598%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g216325216386%_)))
                            (let () (declare (not safe)) (_%g216325216386%_))))
                      (let () (declare (not safe)) (_%g216325216386%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd216336216618%_))
                                                        (let ((_%e216377216423%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd216336216618%_))))
                  (if (equal? _%e216377216423%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216352216546%_))
                          (_%__kont220669220670%_
                           _%hd216351216543%_
                           _%hd216333216608%_
                           _%hd216330216598%_)
                          (let () (declare (not safe)) (_%g216325216386%_)))
                      (let () (declare (not safe)) (_%g216325216386%_))))
                (let () (declare (not safe)) (_%g216325216386%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd216336216618%_))
                                                (let ((_%e216377216423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd216336216618%_))))
                                                  (declare (not safe))
                                                  (_%g216325216386%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g216325216386%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl216334216611%_))
                                    (_%__kont220667220668%_
                                     _%hd216333216608%_
                                     _%hd216330216598%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g216325216386%_))))))
                        (let () (declare (not safe)) (_%g216325216386%_)))))
                (let () (declare (not safe)) (_%g216325216386%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx216645%_)
        (let* ((_%g216649216678%_
                (lambda (_%g216650216674%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216650216674%_))))
               (_%g216648216787%_
                (lambda (_%g216650216682%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216650216682%_))
                      (let ((_%e216652216685%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216650216682%_))))
                        (let ((_%hd216653216689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216652216685%_)))
                              (_%tl216654216692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216652216685%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl216654216692%_))
                              (let ((_g221290_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl216654216692%_
                                        '0))))
                                (begin
                                  (let ((_g221291_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221290_)
                                               (##values-length _g221290_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221291_ 2)))
                                        (error "Context expects 2 values"
                                               _g221291_)))
                                  (let ((_%target216655216695%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221290_ 0)))
                                        (_%tl216657216698%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221290_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216657216698%_))
                                        (letrec ((_%loop216658216701%_
                                                  (lambda (_%hd216656216705%_
                                                           _%clause216662216708%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd216656216705%_))
                                                        (let ((_%e216659216711%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd216656216705%_))))
                  (let ((_%lp-hd216660216715%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216659216711%_)))
                        (_%lp-tl216661216718%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216659216711%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd216660216715%_))
                        (let ((_g221292_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd216660216715%_
                                  '0))))
                          (begin
                            (let ((_g221293_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g221292_)
                                         (##values-length _g221292_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g221293_ 2)))
                                  (error "Context expects 2 values"
                                         _g221293_)))
                            (let ((_%target216664216721%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g221292_ 0)))
                                  (_%tl216666216724%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g221292_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216666216724%_))
                                  (letrec ((_%loop216667216727%_
                                            (lambda (_%hd216665216731%_
                                                     _%clause216671216734%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd216665216731%_))
                                                  (let ((_%e216668216737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd216665216731%_))))
                                                    (let ((_%lp-hd216669216741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216668216737%_)))
                                                          (_%lp-tl216670216744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216668216737%_))))
                                                      (_%loop216667216727%_
                                                       _%lp-tl216670216744%_
                                                       (cons _%lp-hd216669216741%_
                                                             _%clause216671216734%_))))
                                                  (let ((_%clause216672216747%_
                                                         (reverse _%clause216671216734%_)))
                                                    (_%loop216658216701%_
                                                     _%lp-tl216661216718%_
                                                     (cons _%clause216672216747%_
                                                           _%clause216662216708%_)))))))
                                    (_%loop216667216727%_
                                     _%target216664216721%_
                                     '()))
                                  (_%g216649216678%_ _%g216650216682%_)))))
                        (_%g216649216678%_ _%g216650216682%_))))
                (let ((_%clause216663216751%_
                       (reverse _%clause216662216708%_)))
                  ((lambda (_%L216755%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp221294
                                              (lambda (_%g216770216775%_
                                                       _%g216771216778%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp221295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g216772216781%_ _%g216773216784%_)
                             (cons _%g216772216781%_ _%g216773216784%_))))
                      (declare (not safe))
                      (__foldr1 __tmp221295 '() _%g216770216775%_)))
              _%g216771216778%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp221294
                                          '()
                                          _%L216755%_)))
                                 '())))
                   _%clause216663216751%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop216658216701%_
                                           _%target216655216695%_
                                           '()))
                                        (_%g216649216678%_
                                         _%g216650216682%_)))))
                              (_%g216649216678%_ _%g216650216682%_))))
                      (_%g216649216678%_ _%g216650216682%_)))))
          (_%g216648216787%_ _%$stx216645%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx216793%_)
        (let* ((_%g216797216815%_
                (lambda (_%g216798216811%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216798216811%_))))
               (_%g216796216870%_
                (lambda (_%g216798216819%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216798216819%_))
                      (let ((_%e216801216822%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216798216819%_))))
                        (let ((_%hd216802216826%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216801216822%_)))
                              (_%tl216803216829%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216801216822%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216803216829%_))
                              (let ((_%e216804216832%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216803216829%_))))
                                (let ((_%hd216805216836%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216804216832%_)))
                                      (_%tl216806216839%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216804216832%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216806216839%_))
                                      (let ((_%e216807216842%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216806216839%_))))
                                        (let ((_%hd216808216846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216807216842%_)))
                                              (_%tl216809216849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216807216842%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216809216849%_))
                                              ((lambda (_%L216852%_
                                                        _%L216854%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L216854%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L216852%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd216808216846%_
                                               _%hd216805216836%_)
                                              (_%g216797216815%_
                                               _%g216798216819%_))))
                                      (_%g216797216815%_ _%g216798216819%_))))
                              (_%g216797216815%_ _%g216798216819%_))))
                      (_%g216797216815%_ _%g216798216819%_)))))
          (_%g216796216870%_ _%$stx216793%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx216874%_)
        (let* ((_%g216878216896%_
                (lambda (_%g216879216892%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216879216892%_))))
               (_%g216877216951%_
                (lambda (_%g216879216900%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216879216900%_))
                      (let ((_%e216882216903%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216879216900%_))))
                        (let ((_%hd216883216907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216882216903%_)))
                              (_%tl216884216910%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216882216903%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216884216910%_))
                              (let ((_%e216885216913%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl216884216910%_))))
                                (let ((_%hd216886216917%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216885216913%_)))
                                      (_%tl216887216920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216885216913%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216887216920%_))
                                      (let ((_%e216888216923%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl216887216920%_))))
                                        (let ((_%hd216889216927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216888216923%_)))
                                              (_%tl216890216930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216888216923%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216890216930%_))
                                              ((lambda (_%L216933%_
                                                        _%L216935%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L216935%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L216933%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd216889216927%_
                                               _%hd216886216917%_)
                                              (_%g216878216896%_
                                               _%g216879216900%_))))
                                      (_%g216878216896%_ _%g216879216900%_))))
                              (_%g216878216896%_ _%g216879216900%_))))
                      (_%g216878216896%_ _%g216879216900%_)))))
          (_%g216877216951%_ _%$stx216874%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx216955%_)
        (let* ((_%g216959216988%_
                (lambda (_%g216960216984%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g216960216984%_))))
               (_%g216958217088%_
                (lambda (_%g216960216992%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g216960216992%_))
                      (let ((_%e216963216995%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g216960216992%_))))
                        (let ((_%hd216964216999%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216963216995%_)))
                              (_%tl216965217002%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216963216995%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl216965217002%_))
                              (let ((_g221296_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl216965217002%_
                                        '0))))
                                (begin
                                  (let ((_g221297_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221296_)
                                               (##values-length _g221296_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221297_ 2)))
                                        (error "Context expects 2 values"
                                               _g221297_)))
                                  (let ((_%target216966217005%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221296_ 0)))
                                        (_%tl216968217008%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221296_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216968217008%_))
                                        (letrec ((_%loop216969217011%_
                                                  (lambda (_%hd216967217015%_
                                                           _%rule216973217018%_
                                                           _%proc216974217020%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd216967217015%_))
                                                        (let ((_%e216970217023%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd216967217015%_))))
                  (let ((_%lp-hd216971217027%_
                         (let ()
                           (declare (not safe))
                           (##car _%e216970217023%_)))
                        (_%lp-tl216972217030%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e216970217023%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd216971217027%_))
                        (let ((_%e216977217033%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd216971217027%_))))
                          (let ((_%hd216978217037%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e216977217033%_)))
                                (_%tl216979217040%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e216977217033%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl216979217040%_))
                                (let ((_%e216980217043%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl216979217040%_))))
                                  (let ((_%hd216981217047%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e216980217043%_)))
                                        (_%tl216982217050%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e216980217043%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl216982217050%_))
                                        (_%loop216969217011%_
                                         _%lp-tl216972217030%_
                                         (cons _%hd216981217047%_
                                               _%rule216973217018%_)
                                         (cons _%hd216978217037%_
                                               _%proc216974217020%_))
                                        (_%g216959216988%_
                                         _%g216960216992%_))))
                                (_%g216959216988%_ _%g216960216992%_))))
                        (_%g216959216988%_ _%g216960216992%_))))
                (let ((_%rule216975217053%_ (reverse _%rule216973217018%_))
                      (_%proc216976217056%_ (reverse _%proc216974217020%_)))
                  ((lambda (_%L217059%_ _%L217061%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L217059%_
                                _%L217061%_))
                             (let ((__tmp221298
                                    (lambda (_%g217076217080%_
                                             _%g217077217083%_
                                             _%g217078217085%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g217077217083%_
                                                        (cons _%g217076217080%_
                                                              '())))
                                            _%g217078217085%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp221298
                                '()
                                _%L217059%_
                                _%L217061%_)))))
                   _%rule216975217053%_
                   _%proc216976217056%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop216969217011%_
                                           _%target216966217005%_
                                           '()
                                           '()))
                                        (_%g216959216988%_
                                         _%g216960216992%_)))))
                              (_%g216959216988%_ _%g216960216992%_))))
                      (_%g216959216988%_ _%g216960216992%_)))))
          (_%g216958217088%_ _%$stx216955%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx217093%_)
        (let* ((_%g217097217115%_
                (lambda (_%g217098217111%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g217098217111%_))))
               (_%g217096217170%_
                (lambda (_%g217098217119%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g217098217119%_))
                      (let ((_%e217101217122%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g217098217119%_))))
                        (let ((_%hd217102217126%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217101217122%_)))
                              (_%tl217103217129%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217101217122%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217103217129%_))
                              (let ((_%e217104217132%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl217103217129%_))))
                                (let ((_%hd217105217136%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217104217132%_)))
                                      (_%tl217106217139%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217104217132%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl217106217139%_))
                                      (let ((_%e217107217142%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl217106217139%_))))
                                        (let ((_%hd217108217146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217107217142%_)))
                                              (_%tl217109217149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217107217142%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl217109217149%_))
                                              ((lambda (_%L217152%_
                                                        _%L217154%_)
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
                                                   (cons _%L217154%_ '()))
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
                 (cons _%L217152%_ '())))
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
                                   (cons _%L217154%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd217108217146%_
                                               _%hd217105217136%_)
                                              (_%g217097217115%_
                                               _%g217098217119%_))))
                                      (_%g217097217115%_ _%g217098217119%_))))
                              (_%g217097217115%_ _%g217098217119%_))))
                      (_%g217097217115%_ _%g217098217119%_)))))
          (_%g217096217170%_ _%$stx217093%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx217174%_)
        (let* ((_%__stx220778220779%_ _%$stx217174%_)
               (_%g217179217204%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220778220779%_)))))
          (let ((_%__kont220781220782%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont220783220784%_
                 (lambda (_%L217251%_ _%L217253%_ _%L217254%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L217254%_ (cons _%L217253%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L217251%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx220778220779%_))
                (let ((_%e217181217280%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx220778220779%_))))
                  (let ((_%tl217183217287%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e217181217280%_)))
                        (_%hd217182217284%_
                         (let ()
                           (declare (not safe))
                           (##car _%e217181217280%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl217183217287%_))
                        (_%__kont220781220782%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl217183217287%_))
                            (let ((_%e217190217221%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl217183217287%_))))
                              (let ((_%tl217192217228%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e217190217221%_)))
                                    (_%hd217191217225%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e217190217221%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd217191217225%_))
                                    (let ((_%e217193217231%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd217191217225%_))))
                                      (let ((_%tl217195217238%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e217193217231%_)))
                                            (_%hd217194217235%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e217193217231%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl217195217238%_))
                                            (let ((_%e217196217241%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl217195217238%_))))
                                              (let ((_%tl217198217248%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217196217241%_)))
                                                    (_%hd217197217245%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217196217241%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl217198217248%_))
                                                    (_%__kont220783220784%_
                                                     _%tl217192217228%_
                                                     _%hd217197217245%_
                                                     _%hd217194217235%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g217179217204%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g217179217204%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g217179217204%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g217179217204%_))))))
                (let () (declare (not safe)) (_%g217179217204%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx217298%_)
        (let* ((_%__stx220822220823%_ _%$stx217298%_)
               (_%g217303217334%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220822220823%_)))))
          (let ((_%__kont220825220826%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont220827220828%_
                 (lambda (_%L217401%_ _%L217403%_ _%L217404%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L217404%_
                                           (let ((__tmp221299
                                                  (lambda (_%g217424217427%_
                                                           _%g217425217430%_)
                                                    (cons _%g217424217427%_
                                                          _%g217425217430%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp221299
                                              '()
                                              _%L217403%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L217401%_)
                                     '()))))))
            (let ((_%__match220865220866%_
                   (lambda (_%e217311217341%_
                            _%hd217312217345%_
                            _%tl217313217348%_
                            _%e217314217351%_
                            _%hd217315217355%_
                            _%tl217316217358%_
                            _%e217317217361%_
                            _%hd217318217365%_
                            _%tl217319217368%_
                            _%__splice220829220830%_
                            _%target217320217371%_
                            _%tl217322217374%_)
                     (letrec ((_%loop217323217377%_
                               (lambda (_%hd217321217381%_ _%sig217327217384%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd217321217381%_))
                                     (let ((_%e217324217387%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd217321217381%_))))
                                       (let ((_%lp-tl217326217394%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e217324217387%_)))
                                             (_%lp-hd217325217391%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e217324217387%_))))
                                         (_%loop217323217377%_
                                          _%lp-tl217326217394%_
                                          (cons _%lp-hd217325217391%_
                                                _%sig217327217384%_))))
                                     (let ((_%sig217328217397%_
                                            (reverse _%sig217327217384%_)))
                                       (_%__kont220827220828%_
                                        _%tl217316217358%_
                                        _%sig217328217397%_
                                        _%hd217318217365%_))))))
                       (_%loop217323217377%_ _%target217320217371%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220822220823%_))
                  (let ((_%e217305217440%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220822220823%_))))
                    (let ((_%tl217307217447%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217305217440%_)))
                          (_%hd217306217444%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217305217440%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217307217447%_))
                          (_%__kont220825220826%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217307217447%_))
                              (let ((_%e217314217351%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl217307217447%_))))
                                (let ((_%tl217316217358%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217314217351%_)))
                                      (_%hd217315217355%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217314217351%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd217315217355%_))
                                      (let ((_%e217317217361%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd217315217355%_))))
                                        (let ((_%tl217319217368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217317217361%_)))
                                              (_%hd217318217365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217317217361%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl217319217368%_))
                                              (let ((_%__splice220829220830%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl217319217368%_
                                                        '0))))
                                                (let ((_%tl217322217374%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220829220830%_
                                                          '1)))
                                                      (_%target217320217371%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220829220830%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl217322217374%_))
                                                      (_%__match220865220866%_
                                                       _%e217305217440%_
                                                       _%hd217306217444%_
                                                       _%tl217307217447%_
                                                       _%e217314217351%_
                                                       _%hd217315217355%_
                                                       _%tl217316217358%_
                                                       _%e217317217361%_
                                                       _%hd217318217365%_
                                                       _%tl217319217368%_
                                                       _%__splice220829220830%_
                                                       _%target217320217371%_
                                                       _%tl217322217374%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g217303217334%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g217303217334%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g217303217334%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g217303217334%_))))))
                  (let () (declare (not safe)) (_%g217303217334%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx217459%_)
        (let* ((_%__stx220868220869%_ _%$stx217459%_)
               (_%g217464217511%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220868220869%_)))))
          (let ((_%__kont220871220872%_
                 (lambda (_%L217673%_ _%L217675%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L217675%_
                               (let ((__tmp221300
                                      (lambda (_%g217695217698%_
                                               _%g217696217701%_)
                                        (cons _%g217695217698%_
                                              _%g217696217701%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp221300 '() _%L217673%_))))))
                (_%__kont220875220876%_
                 (lambda (_%L217568%_ _%L217570%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L217570%_
                               (let ((__tmp221301
                                      (lambda (_%g217587217590%_
                                               _%g217588217593%_)
                                        (cons _%g217587217590%_
                                              _%g217588217593%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp221301 '() _%L217568%_)))))))
            (let* ((_%__match220935220936%_
                    (lambda (_%e217491217518%_
                             _%hd217492217522%_
                             _%tl217493217525%_
                             _%e217494217528%_
                             _%hd217495217532%_
                             _%tl217496217535%_
                             _%__splice220877220878%_
                             _%target217497217538%_
                             _%tl217499217541%_)
                      (letrec ((_%loop217500217544%_
                                (lambda (_%hd217498217548%_
                                         _%sig217504217551%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd217498217548%_))
                                      (let ((_%e217501217554%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd217498217548%_))))
                                        (let ((_%lp-tl217503217561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217501217554%_)))
                                              (_%lp-hd217502217558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217501217554%_))))
                                          (_%loop217500217544%_
                                           _%lp-tl217503217561%_
                                           (cons _%lp-hd217502217558%_
                                                 _%sig217504217551%_))))
                                      (let ((_%sig217505217564%_
                                             (reverse _%sig217504217551%_)))
                                        (_%__kont220875220876%_
                                         _%sig217505217564%_
                                         _%hd217495217532%_))))))
                        (_%loop217500217544%_ _%target217497217538%_ '()))))
                   (_%__match220927220928%_
                    (lambda (_%e217491217518%_
                             _%hd217492217522%_
                             _%tl217493217525%_
                             _%e217494217528%_
                             _%hd217495217532%_
                             _%tl217496217535%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl217496217535%_))
                          (let ((_%__splice220877220878%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl217496217535%_
                                    '0))))
                            (let ((_%tl217499217541%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice220877220878%_
                                      '1)))
                                  (_%target217497217538%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice220877220878%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl217499217541%_))
                                  (_%__match220935220936%_
                                   _%e217491217518%_
                                   _%hd217492217522%_
                                   _%tl217493217525%_
                                   _%e217494217528%_
                                   _%hd217495217532%_
                                   _%tl217496217535%_
                                   _%__splice220877220878%_
                                   _%target217497217538%_
                                   _%tl217499217541%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g217464217511%_)))))
                          (let () (declare (not safe)) (_%g217464217511%_)))))
                   (_%__match220915220916%_
                    (lambda (_%e217468217603%_
                             _%hd217469217607%_
                             _%tl217470217610%_
                             _%e217471217613%_
                             _%hd217472217617%_
                             _%tl217473217620%_
                             _%e217474217623%_
                             _%hd217475217627%_
                             _%tl217476217630%_
                             _%e217477217633%_
                             _%hd217478217637%_
                             _%tl217479217640%_
                             _%__splice220873220874%_
                             _%target217480217643%_
                             _%tl217482217646%_)
                      (letrec ((_%loop217483217649%_
                                (lambda (_%hd217481217653%_
                                         _%sig217487217656%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd217481217653%_))
                                      (let ((_%e217484217659%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd217481217653%_))))
                                        (let ((_%lp-tl217486217666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217484217659%_)))
                                              (_%lp-hd217485217663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217484217659%_))))
                                          (_%loop217483217649%_
                                           _%lp-tl217486217666%_
                                           (cons _%lp-hd217485217663%_
                                                 _%sig217487217656%_))))
                                      (let ((_%sig217488217669%_
                                             (reverse _%sig217487217656%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl217476217630%_))
                                            (_%__kont220871220872%_
                                             _%sig217488217669%_
                                             _%hd217472217617%_)
                                            (_%__match220927220928%_
                                             _%e217468217603%_
                                             _%hd217469217607%_
                                             _%tl217470217610%_
                                             _%e217471217613%_
                                             _%hd217472217617%_
                                             _%tl217473217620%_)))))))
                        (_%loop217483217649%_ _%target217480217643%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220868220869%_))
                  (let ((_%e217468217603%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220868220869%_))))
                    (let ((_%tl217470217610%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217468217603%_)))
                          (_%hd217469217607%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217468217603%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl217470217610%_))
                          (let ((_%e217471217613%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl217470217610%_))))
                            (let ((_%tl217473217620%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e217471217613%_)))
                                  (_%hd217472217617%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e217471217613%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl217473217620%_))
                                  (let ((_%e217474217623%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl217473217620%_))))
                                    (let ((_%tl217476217630%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e217474217623%_)))
                                          (_%hd217475217627%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e217474217623%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd217475217627%_))
                                          (let ((_%e217477217633%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd217475217627%_))))
                                            (let ((_%tl217479217640%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e217477217633%_)))
                                                  (_%hd217478217637%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e217477217633%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd217478217637%_))
                                                  (if (let ((__tmp221302
                                                             |gxc[1]#_g221303_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp221302
                                                         _%hd217478217637%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl217479217640%_))
                                                          (let ((_%__splice220873220874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl217479217640%_
                            '0))))
                    (let ((_%tl217482217646%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220873220874%_ '1)))
                          (_%target217480217643%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220873220874%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217482217646%_))
                          (_%__match220915220916%_
                           _%e217468217603%_
                           _%hd217469217607%_
                           _%tl217470217610%_
                           _%e217471217613%_
                           _%hd217472217617%_
                           _%tl217473217620%_
                           _%e217474217623%_
                           _%hd217475217627%_
                           _%tl217476217630%_
                           _%e217477217633%_
                           _%hd217478217637%_
                           _%tl217479217640%_
                           _%__splice220873220874%_
                           _%target217480217643%_
                           _%tl217482217646%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl217473217620%_))
                              (let ((_%__splice220877220878%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl217473217620%_
                                        '0))))
                                (let ((_%tl217499217541%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice220877220878%_
                                          '1)))
                                      (_%target217497217538%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice220877220878%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl217499217541%_))
                                      (_%__match220935220936%_
                                       _%e217468217603%_
                                       _%hd217469217607%_
                                       _%tl217470217610%_
                                       _%e217471217613%_
                                       _%hd217472217617%_
                                       _%tl217473217620%_
                                       _%__splice220877220878%_
                                       _%target217497217538%_
                                       _%tl217499217541%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g217464217511%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g217464217511%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl217473217620%_))
                      (let ((_%__splice220877220878%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl217473217620%_
                                '0))))
                        (let ((_%tl217499217541%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220877220878%_ '1)))
                              (_%target217497217538%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220877220878%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl217499217541%_))
                              (_%__match220935220936%_
                               _%e217468217603%_
                               _%hd217469217607%_
                               _%tl217470217610%_
                               _%e217471217613%_
                               _%hd217472217617%_
                               _%tl217473217620%_
                               _%__splice220877220878%_
                               _%target217497217538%_
                               _%tl217499217541%_)
                              (let ()
                                (declare (not safe))
                                (_%g217464217511%_)))))
                      (let () (declare (not safe)) (_%g217464217511%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl217473217620%_))
                  (let ((_%__splice220877220878%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl217473217620%_
                            '0))))
                    (let ((_%tl217499217541%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220877220878%_ '1)))
                          (_%target217497217538%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice220877220878%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217499217541%_))
                          (_%__match220935220936%_
                           _%e217468217603%_
                           _%hd217469217607%_
                           _%tl217470217610%_
                           _%e217471217613%_
                           _%hd217472217617%_
                           _%tl217473217620%_
                           _%__splice220877220878%_
                           _%target217497217538%_
                           _%tl217499217541%_)
                          (let () (declare (not safe)) (_%g217464217511%_)))))
                  (let () (declare (not safe)) (_%g217464217511%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl217473217620%_))
                                                      (let ((_%__splice220877220878%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl217473217620%_
                        '0))))
                (let ((_%tl217499217541%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220877220878%_ '1)))
                      (_%target217497217538%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220877220878%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl217499217541%_))
                      (_%__match220935220936%_
                       _%e217468217603%_
                       _%hd217469217607%_
                       _%tl217470217610%_
                       _%e217471217613%_
                       _%hd217472217617%_
                       _%tl217473217620%_
                       _%__splice220877220878%_
                       _%target217497217538%_
                       _%tl217499217541%_)
                      (let () (declare (not safe)) (_%g217464217511%_)))))
              (let () (declare (not safe)) (_%g217464217511%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl217473217620%_))
                                              (let ((_%__splice220877220878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl217473217620%_
                                                        '0))))
                                                (let ((_%tl217499217541%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220877220878%_
                                                          '1)))
                                                      (_%target217497217538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220877220878%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl217499217541%_))
                                                      (_%__match220935220936%_
                                                       _%e217468217603%_
                                                       _%hd217469217607%_
                                                       _%tl217470217610%_
                                                       _%e217471217613%_
                                                       _%hd217472217617%_
                                                       _%tl217473217620%_
                                                       _%__splice220877220878%_
                                                       _%target217497217538%_
                                                       _%tl217499217541%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g217464217511%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g217464217511%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl217473217620%_))
                                      (let ((_%__splice220877220878%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl217473217620%_
                                                '0))))
                                        (let ((_%tl217499217541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220877220878%_
                                                  '1)))
                                              (_%target217497217538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220877220878%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl217499217541%_))
                                              (_%__match220935220936%_
                                               _%e217468217603%_
                                               _%hd217469217607%_
                                               _%tl217470217610%_
                                               _%e217471217613%_
                                               _%hd217472217617%_
                                               _%tl217473217620%_
                                               _%__splice220877220878%_
                                               _%target217497217538%_
                                               _%tl217499217541%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g217464217511%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g217464217511%_))))))
                          (let () (declare (not safe)) (_%g217464217511%_)))))
                  (let () (declare (not safe)) (_%g217464217511%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx218858%_ _%id218860%_)
        (let ((_%proc218864%_
               (let ((__tmp221304
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id218860%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp221304))))
          (if (procedure? _%proc218864%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx218858%_
                 _%id218860%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx218849%_ _%id218851%_)
        (let ((_%klass218855%_
               (let ((__tmp221305
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id218851%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp221305))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass218855%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx218849%_
                 _%id218851%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx218099%_ _%proc218101%_ _%sig218102%_)
        (letrec ((_%signature-arity218104%_
                  (lambda (_%args218781%_)
                    (let _%loop218784%_ ((_%rest218787%_ _%args218781%_)
                                         (_%count218789%_ '0))
                      (let* ((_%rest218790218801%_ _%rest218787%_)
                             (_%E218794218807%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest218790218801%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K218797218838%_
                               (lambda (_%rest218835%_)
                                 (_%loop218784%_
                                  _%rest218835%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count218789%_ '1)))))
                              (_%K218796218827%_ (lambda () _%count218789%_))
                              (_%K218795218815%_
                               (lambda () (cons _%count218789%_ '()))))
                          (let ((_%try-match218792218831%_
                                 (lambda ()
                                   (if (null? _%rest218790218801%_)
                                       (_%K218796218827%_)
                                       (_%K218795218815%_)))))
                            (if (pair? _%rest218790218801%_)
                                (let* ((_%tl218799218842%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest218790218801%_)))
                                       (_%rest218846%_ _%tl218799218842%_))
                                  (_%K218797218838%_ _%rest218846%_))
                                (_%try-match218792218831%_))))))))
                 (_%make-signature218106%_
                  (lambda (_%args218663%_
                           _%return218665%_
                           _%effect218666%_
                           _%unchecked218667%_)
                    (let ((__tmp221306
                           (lambda (_%g218668218670%_)
                             (|gxc[1]#verify-class!|
                              _%ctx218099%_
                              _%g218668218670%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp221306 _%args218663%_))
                    (|gxc[1]#verify-class!| _%ctx218099%_ _%return218665%_)
                    (if _%unchecked218667%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx218099%_
                         _%unchecked218667%_)
                        '#!void)
                    (let ((_%arity218674%_
                           (_%signature-arity218104%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args218663%_)))))
                      (if _%effect218666%_
                          (let ((_%effect218677%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect218666%_))))
                            (if (and (list? _%effect218677%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect218677%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx218099%_
                                   _%proc218101%_
                                   _%effect218677%_))))
                          '#!void)
                      (cons _%arity218674%_
                            (cons (let* ((_%g218680218703%_
                                          (lambda (_%g218681218699%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g218681218699%_))))
                                         (_%g218679218777%_
                                          (lambda (_%g218681218707%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g218681218707%_))
                                                (let ((_%e218686218710%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g218681218707%_))))
                                                  (let ((_%hd218687218714%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e218686218710%_)))
                                                        (_%tl218688218717%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e218686218710%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl218688218717%_))
                                                        (let ((_%e218689218720%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl218688218717%_))))
                  (let ((_%hd218690218724%_
                         (let ()
                           (declare (not safe))
                           (##car _%e218689218720%_)))
                        (_%tl218691218727%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e218689218720%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl218691218727%_))
                        (let ((_%e218692218730%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl218691218727%_))))
                          (let ((_%hd218693218734%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e218692218730%_)))
                                (_%tl218694218737%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e218692218730%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl218694218737%_))
                                (let ((_%e218695218740%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl218694218737%_))))
                                  (let ((_%hd218696218744%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e218695218740%_)))
                                        (_%tl218697218747%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e218695218740%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl218697218747%_))
                                        ((lambda (_%L218750%_
                                                  _%L218752%_
                                                  _%L218753%_
                                                  _%L218754%_)
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
                           (cons _%L218754%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L218753%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L218752%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L218750%_ '()))
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
                                         _%hd218696218744%_
                                         _%hd218693218734%_
                                         _%hd218690218724%_
                                         _%hd218687218714%_)
                                        (_%g218680218703%_
                                         _%g218681218707%_))))
                                (_%g218680218703%_ _%g218681218707%_))))
                        (_%g218680218703%_ _%g218681218707%_))))
                (_%g218680218703%_ _%g218681218707%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g218680218703%_
                                                 _%g218681218707%_)))))
                                    (_%g218679218777%_
                                     (list _%args218663%_
                                           _%return218665%_
                                           _%effect218666%_
                                           _%unchecked218667%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx218099%_ _%proc218101%_)
          (let* ((_%__stx220946220947%_ _%sig218102%_)
                 (_%g218113218216%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx220946220947%_)))))
            (let ((_%__kont220949220950%_
                   (lambda (_%L218644%_ _%L218646%_)
                     (_%make-signature218106%_
                      _%L218646%_
                      _%L218644%_
                      '#f
                      '#f)))
                  (_%__kont220951220952%_
                   (lambda (_%L218595%_ _%L218597%_ _%L218598%_)
                     (_%make-signature218106%_
                      _%L218598%_
                      _%L218597%_
                      _%L218595%_
                      '#f)))
                  (_%__kont220953220954%_
                   (lambda (_%L218519%_ _%L218521%_ _%L218522%_)
                     (_%make-signature218106%_
                      _%L218522%_
                      _%L218521%_
                      _%L218519%_
                      (let ((__tmp221307
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc218101%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp221307)))))
                  (_%__kont220955220956%_
                   (lambda (_%L218425%_ _%L218427%_ _%L218428%_ _%L218429%_)
                     (_%make-signature218106%_
                      _%L218429%_
                      _%L218428%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L218425%_)))))
                  (_%__kont220957220958%_
                   (lambda (_%L218332%_ _%L218334%_)
                     (_%make-signature218106%_
                      _%L218334%_
                      _%L218332%_
                      '#f
                      (let ((__tmp221308
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc218101%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp221308)))))
                  (_%__kont220959220960%_
                   (lambda (_%L218267%_ _%L218269%_ _%L218270%_)
                     (_%make-signature218106%_
                      _%L218270%_
                      _%L218269%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L218267%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220946220947%_))
                  (let ((_%e218117218624%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx220946220947%_))))
                    (let ((_%tl218119218631%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e218117218624%_)))
                          (_%hd218118218628%_
                           (let ()
                             (declare (not safe))
                             (##car _%e218117218624%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl218119218631%_))
                          (let ((_%e218120218634%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl218119218631%_))))
                            (let ((_%tl218122218641%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218120218634%_)))
                                  (_%hd218121218638%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218120218634%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218122218641%_))
                                  (_%__kont220949220950%_
                                   _%hd218121218638%_
                                   _%hd218118218628%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl218122218641%_))
                                      (let ((_%e218132218571%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl218122218641%_))))
                                        (let ((_%tl218134218578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218132218571%_)))
                                              (_%hd218133218575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218132218571%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd218133218575%_))
                                              (let ((_%e218135218581%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd218133218575%_))))
                                                (if (equal? _%e218135218581%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl218134218578%_))
                                                        (let ((_%e218136218585%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl218134218578%_))))
                  (let ((_%tl218138218592%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e218136218585%_)))
                        (_%hd218137218589%_
                         (let ()
                           (declare (not safe))
                           (##car _%e218136218585%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl218138218592%_))
                        (_%__kont220951220952%_
                         _%hd218137218589%_
                         _%hd218121218638%_
                         _%hd218118218628%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl218138218592%_))
                            (let ((_%e218155218505%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl218138218592%_))))
                              (let ((_%tl218157218512%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e218155218505%_)))
                                    (_%hd218156218509%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e218155218505%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd218156218509%_))
                                    (let ((_%e218158218515%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd218156218509%_))))
                                      (if (equal? _%e218158218515%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218157218512%_))
                                              (_%__kont220953220954%_
                                               _%hd218137218589%_
                                               _%hd218121218638%_
                                               _%hd218118218628%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl218157218512%_))
                                                  (let ((_%e218180218415%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl218157218512%_))))
                                                    (let ((_%tl218182218422%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e218180218415%_)))
                                                          (_%hd218181218419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e218180218415%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl218182218422%_))
                                                          (_%__kont220955220956%_
                                                           _%hd218181218419%_
                                                           _%hd218137218589%_
                                                           _%hd218121218638%_
                                                           _%hd218118218628%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g218113218216%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g218113218216%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g218113218216%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g218113218216%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g218113218216%_))))))
                (let () (declare (not safe)) (_%g218113218216%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e218135218581%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl218134218578%_))
                                                            (_%__kont220957220958%_
                                                             _%hd218121218638%_
                                                             _%hd218118218628%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl218134218578%_))
                        (let ((_%e218208218257%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl218134218578%_))))
                          (let ((_%tl218210218264%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e218208218257%_)))
                                (_%hd218209218261%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e218208218257%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl218210218264%_))
                                (_%__kont220959220960%_
                                 _%hd218209218261%_
                                 _%hd218121218638%_
                                 _%hd218118218628%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g218113218216%_)))))
                        (let () (declare (not safe)) (_%g218113218216%_))))
                (let () (declare (not safe)) (_%g218113218216%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g218113218216%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g218113218216%_))))))
                          (let () (declare (not safe)) (_%g218113218216%_)))))
                  (let () (declare (not safe)) (_%g218113218216%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig217710%_)
        (let* ((_%g217713217793%_
                (lambda (_%g217714217789%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g217714217789%_))))
               (_%g217712218095%_
                (lambda (_%g217714217797%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g217714217797%_))
                      (let ((_%e217720217800%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g217714217797%_))))
                        (let ((_%hd217721217804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217720217800%_)))
                              (_%tl217722217807%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217720217800%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217722217807%_))
                              (let ((_%e217723217810%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl217722217807%_))))
                                (let ((_%hd217724217814%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217723217810%_)))
                                      (_%tl217725217817%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217723217810%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd217724217814%_))
                                      (let ((_%e217726217820%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd217724217814%_))))
                                        (if (equal? _%e217726217820%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl217725217817%_))
                                                (let ((_%e217727217824%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl217725217817%_))))
                                                  (let ((_%hd217728217828%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e217727217824%_)))
                                                        (_%tl217729217831%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e217727217824%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd217728217828%_))
                                                        (let ((_%e217730217834%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd217728217828%_))))
                  (let ((_%hd217731217838%_
                         (let ()
                           (declare (not safe))
                           (##car _%e217730217834%_)))
                        (_%tl217732217841%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e217730217834%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd217731217838%_))
                        (if (let ((__tmp221309 |gxc[1]#_g221310_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp221309
                               _%hd217731217838%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl217732217841%_))
                                (let ((_%e217733217844%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl217732217841%_))))
                                  (let ((_%hd217734217848%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217733217844%_)))
                                        (_%tl217735217851%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217733217844%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl217735217851%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl217729217831%_))
                                            (let ((_%e217736217854%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl217729217831%_))))
                                              (let ((_%hd217737217858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217736217854%_)))
                                                    (_%tl217738217861%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217736217854%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd217737217858%_))
                                                    (let ((_%e217739217864%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd217737217858%_))))
                                                      (if (equal? _%e217739217864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl217738217861%_))
                      (let ((_%e217740217868%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl217738217861%_))))
                        (let ((_%hd217741217872%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217740217868%_)))
                              (_%tl217742217875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217740217868%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd217741217872%_))
                              (let ((_%e217743217878%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd217741217872%_))))
                                (let ((_%hd217744217882%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217743217878%_)))
                                      (_%tl217745217885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217743217878%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd217744217882%_))
                                      (if (let ((__tmp221311
                                                 |gxc[1]#_g221312_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp221311
                                             _%hd217744217882%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl217745217885%_))
                                              (let ((_%e217746217888%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl217745217885%_))))
                                                (let ((_%hd217747217892%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e217746217888%_)))
                                                      (_%tl217748217895%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e217746217888%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl217748217895%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl217742217875%_))
                                                          (let ((_%e217749217898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl217742217875%_))))
                    (let ((_%hd217750217902%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217749217898%_)))
                          (_%tl217751217905%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217749217898%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd217750217902%_))
                          (let ((_%e217752217908%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd217750217902%_))))
                            (if (equal? _%e217752217908%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl217751217905%_))
                                    (let ((_%e217753217912%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl217751217905%_))))
                                      (let ((_%hd217754217916%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e217753217912%_)))
                                            (_%tl217755217919%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e217753217912%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd217754217916%_))
                                            (let ((_%e217756217922%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd217754217916%_))))
                                              (let ((_%hd217757217926%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217756217922%_)))
                                                    (_%tl217758217929%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217756217922%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd217757217926%_))
                                                    (if (let ((__tmp221313
                                                               |gxc[1]#_g221314_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp221313
                                                           _%hd217757217926%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl217758217929%_))
                                                            (let ((_%e217759217932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl217758217929%_))))
                      (let ((_%hd217760217936%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217759217932%_)))
                            (_%tl217761217939%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217759217932%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl217761217939%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl217755217919%_))
                                (let ((_%e217762217942%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl217755217919%_))))
                                  (let ((_%hd217763217946%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217762217942%_)))
                                        (_%tl217764217949%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217762217942%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd217763217946%_))
                                        (let ((_%e217765217952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd217763217946%_))))
                                          (if (equal? _%e217765217952%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl217764217949%_))
                                                  (let ((_%e217766217956%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl217764217949%_))))
                                                    (let ((_%hd217767217960%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e217766217956%_)))
                                                          (_%tl217768217963%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e217766217956%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd217767217960%_))
                                                          (let ((_%e217769217966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd217767217960%_))))
                    (let ((_%hd217770217970%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217769217966%_)))
                          (_%tl217771217973%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217769217966%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd217770217970%_))
                          (if (let ((__tmp221315 |gxc[1]#_g221316_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp221315
                                 _%hd217770217970%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl217771217973%_))
                                  (let ((_%e217772217976%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl217771217973%_))))
                                    (let ((_%hd217773217980%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e217772217976%_)))
                                          (_%tl217774217983%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e217772217976%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl217774217983%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl217768217963%_))
                                              (let ((_%e217775217986%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl217768217963%_))))
                                                (let ((_%hd217776217990%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e217775217986%_)))
                                                      (_%tl217777217993%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e217775217986%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd217776217990%_))
                                                      (let ((_%e217778217996%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd217776217990%_))))
                (if (equal? _%e217778217996%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl217777217993%_))
                        (let ((_%e217779218000%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl217777217993%_))))
                          (let ((_%hd217780218004%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e217779218000%_)))
                                (_%tl217781218007%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e217779218000%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd217780218004%_))
                                (let ((_%e217782218010%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd217780218004%_))))
                                  (let ((_%hd217783218014%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217782218010%_)))
                                        (_%tl217784218017%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217782218010%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd217783218014%_))
                                        (if (let ((__tmp221317
                                                   |gxc[1]#_g221318_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp221317
                                               _%hd217783218014%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl217784218017%_))
                                                (let ((_%e217785218020%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl217784218017%_))))
                                                  (let ((_%hd217786218024%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e217785218020%_)))
                                                        (_%tl217787218027%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e217785218020%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl217787218027%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl217781218007%_))
                                                            ((lambda (_%L218030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L218032%_
                              _%L218033%_
                              _%L218034%_
                              _%L218035%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L218032%_))
                           (cons _%L218032%_
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
                       (cons _%L218034%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L218030%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd217786218024%_
                     _%hd217773217980%_
                     _%hd217760217936%_
                     _%hd217747217892%_
                     _%hd217734217848%_)
                    (_%g217713217793%_ _%g217714217797%_))
                (_%g217713217793%_ _%g217714217797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g217713217793%_
                                                 _%g217714217797%_))
                                            (_%g217713217793%_
                                             _%g217714217797%_))
                                        (_%g217713217793%_
                                         _%g217714217797%_))))
                                (_%g217713217793%_ _%g217714217797%_))))
                        (_%g217713217793%_ _%g217714217797%_))
                    (_%g217713217793%_ _%g217714217797%_)))
              (_%g217713217793%_ _%g217714217797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g217713217793%_
                                               _%g217714217797%_))
                                          (_%g217713217793%_
                                           _%g217714217797%_))))
                                  (_%g217713217793%_ _%g217714217797%_))
                              (_%g217713217793%_ _%g217714217797%_))
                          (_%g217713217793%_ _%g217714217797%_))))
                  (_%g217713217793%_ _%g217714217797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g217713217793%_
                                                   _%g217714217797%_))
                                              (_%g217713217793%_
                                               _%g217714217797%_)))
                                        (_%g217713217793%_
                                         _%g217714217797%_))))
                                (_%g217713217793%_ _%g217714217797%_))
                            (_%g217713217793%_ _%g217714217797%_))))
                    (_%g217713217793%_ _%g217714217797%_))
                (_%g217713217793%_ _%g217714217797%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g217713217793%_
                                                     _%g217714217797%_))))
                                            (_%g217713217793%_
                                             _%g217714217797%_))))
                                    (_%g217713217793%_ _%g217714217797%_))
                                (_%g217713217793%_ _%g217714217797%_)))
                          (_%g217713217793%_ _%g217714217797%_))))
                  (_%g217713217793%_ _%g217714217797%_))
              (_%g217713217793%_ _%g217714217797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g217713217793%_
                                               _%g217714217797%_))
                                          (_%g217713217793%_
                                           _%g217714217797%_))
                                      (_%g217713217793%_ _%g217714217797%_))))
                              (_%g217713217793%_ _%g217714217797%_))))
                      (_%g217713217793%_ _%g217714217797%_))
                  (_%g217713217793%_ _%g217714217797%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g217713217793%_
                                                     _%g217714217797%_))))
                                            (_%g217713217793%_
                                             _%g217714217797%_))
                                        (_%g217713217793%_
                                         _%g217714217797%_))))
                                (_%g217713217793%_ _%g217714217797%_))
                            (_%g217713217793%_ _%g217714217797%_))
                        (_%g217713217793%_ _%g217714217797%_))))
                (_%g217713217793%_ _%g217714217797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g217713217793%_
                                                 _%g217714217797%_))
                                            (_%g217713217793%_
                                             _%g217714217797%_)))
                                      (_%g217713217793%_ _%g217714217797%_))))
                              (_%g217713217793%_ _%g217714217797%_))))
                      (_%g217713217793%_ _%g217714217797%_)))))
          (_%g217712218095%_ _%sig217710%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx218867%_)
        (let* ((_%g218870218888%_
                (lambda (_%g218871218884%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218871218884%_))))
               (_%g218869218943%_
                (lambda (_%g218871218892%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218871218892%_))
                      (let ((_%e218874218895%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g218871218892%_))))
                        (let ((_%hd218875218899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218874218895%_)))
                              (_%tl218876218902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218874218895%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl218876218902%_))
                              (let ((_%e218877218905%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl218876218902%_))))
                                (let ((_%hd218878218909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e218877218905%_)))
                                      (_%tl218879218912%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e218877218905%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl218879218912%_))
                                      (let ((_%e218880218915%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl218879218912%_))))
                                        (let ((_%hd218881218919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218880218915%_)))
                                              (_%tl218882218922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218880218915%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218882218922%_))
                                              ((lambda (_%L218925%_
                                                        _%L218927%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L218927%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L218925%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx218867%_
                                                        _%L218927%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx218867%_
                                                        _%L218925%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L218927%_
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
                                                   (cons _%L218925%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g218870218888%_
                                                      _%g218871218892%_)))
                                               _%hd218881218919%_
                                               _%hd218878218909%_)
                                              (_%g218870218888%_
                                               _%g218871218892%_))))
                                      (_%g218870218888%_ _%g218871218892%_))))
                              (_%g218870218888%_ _%g218871218892%_))))
                      (_%g218870218888%_ _%g218871218892%_)))))
          (_%g218869218943%_ _%stx218867%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx218947%_)
        (let* ((_%g218950218974%_
                (lambda (_%g218951218970%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218951218970%_))))
               (_%g218949219257%_
                (lambda (_%g218951218978%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218951218978%_))
                      (let ((_%e218954218981%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g218951218978%_))))
                        (let ((_%hd218955218985%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218954218981%_)))
                              (_%tl218956218988%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218954218981%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl218956218988%_))
                              (let ((_%e218957218991%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl218956218988%_))))
                                (let ((_%hd218958218995%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e218957218991%_)))
                                      (_%tl218959218998%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e218957218991%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl218959218998%_))
                                      (let ((_g221319_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl218959218998%_
                                                '0))))
                                        (begin
                                          (let ((_g221320_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g221319_)
                                                       (##values-length
                                                        _g221319_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g221320_ 2)))
                                                (error "Context expects 2 values"
                                                       _g221320_)))
                                          (let ((_%target218960219001%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g221319_ 0)))
                                                (_%tl218962219004%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g221319_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl218962219004%_))
                                                (letrec ((_%loop218963219007%_
                                                          (lambda (_%hd218961219011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature218967219014%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd218961219011%_))
                        (let ((_%e218964219017%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd218961219011%_))))
                          (let ((_%lp-hd218965219021%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e218964219017%_)))
                                (_%lp-tl218966219024%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e218964219017%_))))
                            (_%loop218963219007%_
                             _%lp-tl218966219024%_
                             (cons _%lp-hd218965219021%_
                                   _%signature218967219014%_))))
                        (let ((_%signature218968219027%_
                               (reverse _%signature218967219014%_)))
                          ((lambda (_%L219031%_ _%L219033%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L219033%_))
                                 (let* ((_%g219051219066%_
                                         (lambda (_%g219052219062%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g219052219062%_))))
                                        (_%g219050219245%_
                                         (lambda (_%g219052219070%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g219052219070%_))
                                               (let ((_%e219055219073%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g219052219070%_))))
                                                 (let ((_%hd219056219077%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219055219073%_)))
                                                       (_%tl219057219080%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219055219073%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl219057219080%_))
                                                       (let ((_%e219058219083%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl219057219080%_))))
                 (let ((_%hd219059219087%_
                        (let ()
                          (declare (not safe))
                          (##car _%e219058219083%_)))
                       (_%tl219060219090%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e219058219083%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl219060219090%_))
                       ((lambda (_%L219093%_ _%L219095%_)
                          (let* ((_%g219111219119%_
                                  (lambda (_%g219112219115%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g219112219115%_))))
                                 (_%g219110219241%_
                                  (lambda (_%g219112219123%_)
                                    ((lambda (_%L219126%_)
                                       (let* ((_%unchecked219139%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L219093%_))
                                              (_%g219142219150%_
                                               (lambda (_%g219143219146%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g219143219146%_))))
                                              (_%g219141219173%_
                                               (lambda (_%g219143219154%_)
                                                 ((lambda (_%L219157%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L219126%_
                                                                (cons _%L219157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g219143219154%_))))
                                         (_%g219141219173%_
                                          (if _%unchecked219139%_
                                              (let* ((_%g219177219192%_
                                                      (lambda (_%g219178219188%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g219178219188%_))))
                                                     (_%g219176219237%_
                                                      (lambda (_%g219178219196%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g219178219196%_))
                                                            (let ((_%e219181219199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g219178219196%_))))
                      (let ((_%hd219182219203%_
                             (let ()
                               (declare (not safe))
                               (##car _%e219181219199%_)))
                            (_%tl219183219206%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e219181219199%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl219183219206%_))
                            (let ((_%e219184219209%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl219183219206%_))))
                              (let ((_%hd219185219213%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e219184219209%_)))
                                    (_%tl219186219216%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e219184219209%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl219186219216%_))
                                    ((lambda (_%L219219%_ _%L219221%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L219221%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L219095%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L219219%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd219185219213%_
                                     _%hd219182219203%_)
                                    (_%g219177219192%_ _%g219178219196%_))))
                            (_%g219177219192%_ _%g219178219196%_))))
                    (_%g219177219192%_ _%g219178219196%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g219176219237%_
                                                 _%unchecked219139%_))
                                              '(begin)))))
                                     _%g219112219123%_))))
                            (_%g219110219241%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L219033%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L219095%_ '()))
                   (cons '#f (cons 'signature: (cons _%L219093%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd219059219087%_
                        _%hd219056219077%_)
                       (_%g219051219066%_ _%g219052219070%_))))
               (_%g219051219066%_ _%g219052219070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219051219066%_
                                                _%g219052219070%_)))))
                                   (_%g219050219245%_
                                    (|gxc[1]#parse-signature|
                                     _%stx218947%_
                                     _%L219033%_
                                     (let ((__tmp221321
                                            (lambda (_%g219248219251%_
                                                     _%g219249219254%_)
                                              (cons _%g219248219251%_
                                                    _%g219249219254%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp221321
                                        '()
                                        _%L219031%_)))))
                                 (_%g218950218974%_ _%g218951218978%_)))
                           _%signature218968219027%_
                           _%hd218958218995%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop218963219007%_
                                                   _%target218960219001%_
                                                   '()))
                                                (_%g218950218974%_
                                                 _%g218951218978%_)))))
                                      (_%g218950218974%_ _%g218951218978%_))))
                              (_%g218950218974%_ _%g218951218978%_))))
                      (_%g218950218974%_ _%g218951218978%_)))))
          (_%g218949219257%_ _%stx218947%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx219262%_)
        (let* ((_%g219265219289%_
                (lambda (_%g219266219285%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219266219285%_))))
               (_%g219264220172%_
                (lambda (_%g219266219293%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219266219293%_))
                      (let ((_%e219269219296%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g219266219293%_))))
                        (let ((_%hd219270219300%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219269219296%_)))
                              (_%tl219271219303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219269219296%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219271219303%_))
                              (let ((_%e219272219306%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl219271219303%_))))
                                (let ((_%hd219273219310%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219272219306%_)))
                                      (_%tl219274219313%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219272219306%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl219274219313%_))
                                      (let ((_g221322_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl219274219313%_
                                                '0))))
                                        (begin
                                          (let ((_g221323_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g221322_)
                                                       (##values-length
                                                        _g221322_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g221323_ 2)))
                                                (error "Context expects 2 values"
                                                       _g221323_)))
                                          (let ((_%target219275219316%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g221322_ 0)))
                                                (_%tl219277219319%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g221322_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl219277219319%_))
                                                (letrec ((_%loop219278219322%_
                                                          (lambda (_%hd219276219326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature219282219329%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd219276219326%_))
                        (let ((_%e219279219332%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd219276219326%_))))
                          (let ((_%lp-hd219280219336%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e219279219332%_)))
                                (_%lp-tl219281219339%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e219279219332%_))))
                            (_%loop219278219322%_
                             _%lp-tl219281219339%_
                             (cons _%lp-hd219280219336%_
                                   _%case-signature219282219329%_))))
                        (let ((_%case-signature219283219342%_
                               (reverse _%case-signature219282219329%_)))
                          ((lambda (_%L219346%_ _%L219348%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L219348%_))
                                 (let* ((_%signatures219379%_
                                         (map (lambda (_%g219365219367%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx219262%_
                                                 _%L219348%_
                                                 _%g219365219367%_))
                                              (let ((__tmp221324
                                                     (lambda (_%g219370219373%_
                                                              _%g219371219376%_)
                                                       (cons _%g219370219373%_
                                                             _%g219371219376%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp221324
                                                 '()
                                                 _%L219346%_))))
                                        (_%g219382219408%_
                                         (lambda (_%g219383219404%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g219383219404%_))))
                                        (_%g219381220168%_
                                         (lambda (_%g219383219412%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g219383219412%_))
                                               (let ((_g221325_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g219383219412%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g221326_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g221325_)
                        (##values-length _g221325_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g221326_ 2)))
                 (error "Context expects 2 values" _g221326_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target219386219415%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g221325_
                                                             0)))
                                                         (_%tl219388219418%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g221325_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl219388219418%_))
                                                         (letrec ((_%loop219389219421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd219387219425%_
                                    _%sig219393219428%_
                                    _%arity219394219430%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd219387219425%_))
                                 (let ((_%e219390219433%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd219387219425%_))))
                                   (let ((_%lp-hd219391219437%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219390219433%_)))
                                         (_%lp-tl219392219440%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219390219433%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd219391219437%_))
                                         (let ((_%e219397219443%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd219391219437%_))))
                                           (let ((_%hd219398219447%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e219397219443%_)))
                                                 (_%tl219399219450%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e219397219443%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl219399219450%_))
                                                 (let ((_%e219400219453%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl219399219450%_))))
                                                   (let ((_%hd219401219457%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e219400219453%_)))
                                                         (_%tl219402219460%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e219400219453%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl219402219460%_))
                                                         (_%loop219389219421%_
                                                          _%lp-tl219392219440%_
                                                          (cons _%hd219401219457%_
                                                                _%sig219393219428%_)
                                                          (cons _%hd219398219447%_
                                                                _%arity219394219430%_))
                                                         (_%g219382219408%_
                                                          _%g219383219412%_))))
                                                 (_%g219382219408%_
                                                  _%g219383219412%_))))
                                         (_%g219382219408%_
                                          _%g219383219412%_))))
                                 (let ((_%sig219395219463%_
                                        (reverse _%sig219393219428%_))
                                       (_%arity219396219466%_
                                        (reverse _%arity219394219430%_)))
                                   ((lambda (_%L219469%_ _%L219471%_)
                                      (let* ((_%g219488219496%_
                                              (lambda (_%g219489219492%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g219489219492%_))))
                                             (_%g219487220153%_
                                              (lambda (_%g219489219500%_)
                                                ((lambda (_%L219503%_)
                                                   (let* ((_%g219516219524%_
                                                           (lambda (_%g219517219520%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g219517219520%_))))
                  (_%g219515219546%_
                   (lambda (_%g219517219528%_)
                     ((lambda (_%L219531%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L219503%_ (cons _%L219531%_ '()))))
                      _%g219517219528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g219515219546%_
                                                      (let ((_g221327_
                                                             (let _%loop219550%_ ((_%rest219553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures219379%_)
                                          (_%unchecked-proc219555%_ '#f)
                                          (_%unchecked-clauses219556%_ '()))
                       (let* ((_%rest219557219565%_ _%rest219553%_)
                              (_%else219559219577%_
                               (lambda ()
                                 (values _%unchecked-proc219555%_
                                         (reverse!
                                          _%unchecked-clauses219556%_))))
                              (_%K219561220018%_
                               (lambda (_%rest219581%_ _%hd219583%_)
                                 (let* ((_%g219585219672%_
                                         (lambda (_%g219586219668%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g219586219668%_))))
                                        (_%g219584220014%_
                                         (lambda (_%g219586219676%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g219586219676%_))
                                               (let ((_%e219593219679%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g219586219676%_))))
                                                 (let ((_%hd219594219683%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219593219679%_)))
                                                       (_%tl219595219686%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219593219679%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl219595219686%_))
                                                       (let ((_%e219596219689%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl219595219686%_))))
                 (let ((_%hd219597219693%_
                        (let ()
                          (declare (not safe))
                          (##car _%e219596219689%_)))
                       (_%tl219598219696%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e219596219689%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd219597219693%_))
                       (let ((_%e219599219699%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd219597219693%_))))
                         (let ((_%hd219600219703%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e219599219699%_)))
                               (_%tl219601219706%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e219599219699%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl219601219706%_))
                               (let ((_%e219602219709%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl219601219706%_))))
                                 (let ((_%hd219603219713%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e219602219709%_)))
                                       (_%tl219604219716%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e219602219709%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd219603219713%_))
                                       (let ((_%e219605219719%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd219603219713%_))))
                                         (if (equal? _%e219605219719%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl219604219716%_))
                                                 (let ((_%e219606219723%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl219604219716%_))))
                                                   (let ((_%hd219607219727%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e219606219723%_)))
                                                         (_%tl219608219730%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e219606219723%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd219607219727%_))
                                                         (let ((_%e219609219733%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd219607219727%_))))
                   (let ((_%hd219610219737%_
                          (let ()
                            (declare (not safe))
                            (##car _%e219609219733%_)))
                         (_%tl219611219740%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e219609219733%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd219610219737%_))
                         (if (let ((__tmp221329 |gxc[1]#_g221330_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp221329
                                _%hd219610219737%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl219611219740%_))
                                 (let ((_%e219612219743%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl219611219740%_))))
                                   (let ((_%hd219613219747%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219612219743%_)))
                                         (_%tl219614219750%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219612219743%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl219614219750%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl219608219730%_))
                                             (let ((_%e219615219753%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl219608219730%_))))
                                               (let ((_%hd219616219757%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e219615219753%_)))
                                                     (_%tl219617219760%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e219615219753%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd219616219757%_))
                                                     (let ((_%e219618219763%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd219616219757%_))))
                                                       (if (equal? _%e219618219763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl219617219760%_))
                       (let ((_%e219619219767%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl219617219760%_))))
                         (let ((_%hd219620219771%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e219619219767%_)))
                               (_%tl219621219774%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e219619219767%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd219620219771%_))
                               (let ((_%e219622219777%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd219620219771%_))))
                                 (let ((_%hd219623219781%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e219622219777%_)))
                                       (_%tl219624219784%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e219622219777%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd219623219781%_))
                                       (if (let ((__tmp221331
                                                  |gxc[1]#_g221332_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp221331
                                              _%hd219623219781%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl219624219784%_))
                                               (let ((_%e219625219787%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl219624219784%_))))
                                                 (let ((_%hd219626219791%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219625219787%_)))
                                                       (_%tl219627219794%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219625219787%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl219627219794%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl219621219774%_))
                                                           (let ((_%e219628219797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl219621219774%_))))
                     (let ((_%hd219629219801%_
                            (let ()
                              (declare (not safe))
                              (##car _%e219628219797%_)))
                           (_%tl219630219804%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e219628219797%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd219629219801%_))
                           (let ((_%e219631219807%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd219629219801%_))))
                             (if (equal? _%e219631219807%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl219630219804%_))
                                     (let ((_%e219632219811%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl219630219804%_))))
                                       (let ((_%hd219633219815%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e219632219811%_)))
                                             (_%tl219634219818%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e219632219811%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd219633219815%_))
                                             (let ((_%e219635219821%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd219633219815%_))))
                                               (let ((_%hd219636219825%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e219635219821%_)))
                                                     (_%tl219637219828%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e219635219821%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd219636219825%_))
                                                     (if (let ((__tmp221333
                                                                |gxc[1]#_g221334_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp221333
                                                            _%hd219636219825%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl219637219828%_))
                     (let ((_%e219638219831%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl219637219828%_))))
                       (let ((_%hd219639219835%_
                              (let ()
                                (declare (not safe))
                                (##car _%e219638219831%_)))
                             (_%tl219640219838%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e219638219831%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl219640219838%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl219634219818%_))
                                 (let ((_%e219641219841%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl219634219818%_))))
                                   (let ((_%hd219642219845%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219641219841%_)))
                                         (_%tl219643219848%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219641219841%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd219642219845%_))
                                         (let ((_%e219644219851%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd219642219845%_))))
                                           (if (equal? _%e219644219851%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl219643219848%_))
                                                   (let ((_%e219645219855%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl219643219848%_))))
                                                     (let ((_%hd219646219859%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e219645219855%_)))
                                                           (_%tl219647219862%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e219645219855%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd219646219859%_))
                                                           (let ((_%e219648219865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd219646219859%_))))
                     (let ((_%hd219649219869%_
                            (let ()
                              (declare (not safe))
                              (##car _%e219648219865%_)))
                           (_%tl219650219872%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e219648219865%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd219649219869%_))
                           (if (let ((__tmp221335 |gxc[1]#_g221336_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp221335
                                  _%hd219649219869%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl219650219872%_))
                                   (let ((_%e219651219875%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl219650219872%_))))
                                     (let ((_%hd219652219879%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e219651219875%_)))
                                           (_%tl219653219882%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e219651219875%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl219653219882%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl219647219862%_))
                                               (let ((_%e219654219885%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl219647219862%_))))
                                                 (let ((_%hd219655219889%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e219654219885%_)))
                                                       (_%tl219656219892%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e219654219885%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd219655219889%_))
                                                       (let ((_%e219657219895%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd219655219889%_))))
                 (if (equal? _%e219657219895%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl219656219892%_))
                         (let ((_%e219658219899%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl219656219892%_))))
                           (let ((_%hd219659219903%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e219658219899%_)))
                                 (_%tl219660219906%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e219658219899%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd219659219903%_))
                                 (let ((_%e219661219909%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd219659219903%_))))
                                   (let ((_%hd219662219913%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219661219909%_)))
                                         (_%tl219663219916%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219661219909%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd219662219913%_))
                                         (if (let ((__tmp221337
                                                    |gxc[1]#_g221338_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp221337
                                                _%hd219662219913%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl219663219916%_))
                                                 (let ((_%e219664219919%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl219663219916%_))))
                                                   (let ((_%hd219665219923%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e219664219919%_)))
                                                         (_%tl219666219926%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e219664219919%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl219666219926%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl219660219906%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl219598219696%_))
                         ((lambda (_%L219929%_
                                   _%L219931%_
                                   _%L219932%_
                                   _%L219933%_
                                   _%L219934%_
                                   _%L219935%_)
                            (let ((_%clause220006%_
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
                                                     (cons _%L219935%_ '()))
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
                                                 (cons _%L219933%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L219929%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked220008%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L219931%_))))
                              (_%loop219550%_
                               _%rest219581%_
                               (let ((_%$e220010%_ _%unchecked220008%_))
                                 (if _%$e220010%_
                                     _%$e220010%_
                                     _%unchecked-proc219555%_))
                               (cons _%clause220006%_
                                     _%unchecked-clauses219556%_))))
                          _%hd219665219923%_
                          _%hd219652219879%_
                          _%hd219639219835%_
                          _%hd219626219791%_
                          _%hd219613219747%_
                          _%hd219594219683%_)
                         (_%g219585219672%_ _%g219586219676%_))
                     (_%g219585219672%_ _%g219586219676%_))
                 (_%g219585219672%_ _%g219586219676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g219585219672%_
                                                  _%g219586219676%_))
                                             (_%g219585219672%_
                                              _%g219586219676%_))
                                         (_%g219585219672%_
                                          _%g219586219676%_))))
                                 (_%g219585219672%_ _%g219586219676%_))))
                         (_%g219585219672%_ _%g219586219676%_))
                     (_%g219585219672%_ _%g219586219676%_)))
               (_%g219585219672%_ _%g219586219676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219585219672%_
                                                _%g219586219676%_))
                                           (_%g219585219672%_
                                            _%g219586219676%_))))
                                   (_%g219585219672%_ _%g219586219676%_))
                               (_%g219585219672%_ _%g219586219676%_))
                           (_%g219585219672%_ _%g219586219676%_))))
                   (_%g219585219672%_ _%g219586219676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g219585219672%_
                                                    _%g219586219676%_))
                                               (_%g219585219672%_
                                                _%g219586219676%_)))
                                         (_%g219585219672%_
                                          _%g219586219676%_))))
                                 (_%g219585219672%_ _%g219586219676%_))
                             (_%g219585219672%_ _%g219586219676%_))))
                     (_%g219585219672%_ _%g219586219676%_))
                 (_%g219585219672%_ _%g219586219676%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g219585219672%_
                                                      _%g219586219676%_))))
                                             (_%g219585219672%_
                                              _%g219586219676%_))))
                                     (_%g219585219672%_ _%g219586219676%_))
                                 (_%g219585219672%_ _%g219586219676%_)))
                           (_%g219585219672%_ _%g219586219676%_))))
                   (_%g219585219672%_ _%g219586219676%_))
               (_%g219585219672%_ _%g219586219676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219585219672%_
                                                _%g219586219676%_))
                                           (_%g219585219672%_
                                            _%g219586219676%_))
                                       (_%g219585219672%_ _%g219586219676%_))))
                               (_%g219585219672%_ _%g219586219676%_))))
                       (_%g219585219672%_ _%g219586219676%_))
                   (_%g219585219672%_ _%g219586219676%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g219585219672%_
                                                      _%g219586219676%_))))
                                             (_%g219585219672%_
                                              _%g219586219676%_))
                                         (_%g219585219672%_
                                          _%g219586219676%_))))
                                 (_%g219585219672%_ _%g219586219676%_))
                             (_%g219585219672%_ _%g219586219676%_))
                         (_%g219585219672%_ _%g219586219676%_))))
                 (_%g219585219672%_ _%g219586219676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g219585219672%_
                                                  _%g219586219676%_))
                                             (_%g219585219672%_
                                              _%g219586219676%_)))
                                       (_%g219585219672%_ _%g219586219676%_))))
                               (_%g219585219672%_ _%g219586219676%_))))
                       (_%g219585219672%_ _%g219586219676%_))))
               (_%g219585219672%_ _%g219586219676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219585219672%_
                                                _%g219586219676%_)))))
                                   (_%g219584220014%_ _%hd219583%_)))))
                         (if (pair? _%rest219557219565%_)
                             (let ((_%hd219562220022%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest219557219565%_)))
                                   (_%tl219563220025%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest219557219565%_))))
                               (let* ((_%hd220028%_ _%hd219562220022%_)
                                      (_%rest220031%_ _%tl219563220025%_))
                                 (_%K219561220018%_
                                  _%rest220031%_
                                  _%hd220028%_)))
                             (_%else219559219577%_))))))
                (begin
                  (let ((_g221328_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g221327_)
                               (##values-length _g221327_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g221328_ 2)))
                        (error "Context expects 2 values" _g221328_)))
                  (let ((_%unchecked-proc220034%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221327_ 0)))
                        (_%unchecked-clauses220036%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221327_ 1))))
                    (if _%unchecked-proc220034%_
                        (let* ((_%g220038220062%_
                                (lambda (_%g220039220058%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g220039220058%_))))
                               (_%g220037220149%_
                                (lambda (_%g220039220066%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g220039220066%_))
                                      (let ((_%e220042220069%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g220039220066%_))))
                                        (let ((_%hd220043220073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e220042220069%_)))
                                              (_%tl220044220076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e220042220069%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl220044220076%_))
                                              (let ((_%e220045220079%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl220044220076%_))))
                                                (let ((_%hd220046220083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e220045220079%_)))
                                                      (_%tl220047220086%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e220045220079%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd220046220083%_))
                                                      (let ((_g221339_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd220046220083%_ '0))))
                (begin
                  (let ((_g221340_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g221339_)
                               (##values-length _g221339_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g221340_ 2)))
                        (error "Context expects 2 values" _g221340_)))
                  (let ((_%target220048220089%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221339_ 0)))
                        (_%tl220050220092%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g221339_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl220050220092%_))
                        (letrec ((_%loop220051220095%_
                                  (lambda (_%hd220049220099%_
                                           _%clause220055220102%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd220049220099%_))
                                        (let ((_%e220052220105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd220049220099%_))))
                                          (let ((_%lp-hd220053220109%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e220052220105%_)))
                                                (_%lp-tl220054220112%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e220052220105%_))))
                                            (_%loop220051220095%_
                                             _%lp-tl220054220112%_
                                             (cons _%lp-hd220053220109%_
                                                   _%clause220055220102%_))))
                                        (let ((_%clause220056220115%_
                                               (reverse _%clause220055220102%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl220047220086%_))
                                              ((lambda (_%L220119%_
                                                        _%L220121%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L220121%_
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
                                             (let ((__tmp221341
                                                    (lambda (_%g220140220143%_
                                                             _%g220141220146%_)
                                                      (cons _%g220140220143%_
                                                            _%g220141220146%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp221341
                                                '()
                                                _%L220119%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause220056220115%_
                                               _%hd220043220073%_)
                                              (_%g220038220062%_
                                               _%g220039220066%_)))))))
                          (_%loop220051220095%_ _%target220048220089%_ '()))
                        (_%g220038220062%_ _%g220039220066%_)))))
              (_%g220038220062%_ _%g220039220066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g220038220062%_
                                               _%g220039220066%_))))
                                      (_%g220038220062%_ _%g220039220066%_)))))
                          (_%g220037220149%_
                           (list _%unchecked-proc220034%_
                                 _%unchecked-clauses220036%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g219489219500%_))))
                                        (_%g219487220153%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L219348%_
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
                                          _%L219469%_
                                          _%L219471%_))
                                       (let ((__tmp221342
                                              (lambda (_%g220156220160%_
                                                       _%g220157220163%_
                                                       _%g220158220165%_)
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
                                (cons _%g220157220163%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g220156220160%_ '())))))
              _%g220158220165%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp221342
                                          '()
                                          _%L219469%_
                                          _%L219471%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig219395219463%_
                                    _%arity219396219466%_))))))
                   (_%loop219389219421%_ _%target219386219415%_ '() '()))
                 (_%g219382219408%_ _%g219383219412%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219382219408%_
                                                _%g219383219412%_)))))
                                   (_%g219381220168%_ _%signatures219379%_))
                                 (_%g219265219289%_ _%g219266219293%_)))
                           _%case-signature219283219342%_
                           _%hd219273219310%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop219278219322%_
                                                   _%target219275219316%_
                                                   '()))
                                                (_%g219265219289%_
                                                 _%g219266219293%_)))))
                                      (_%g219265219289%_ _%g219266219293%_))))
                              (_%g219265219289%_ _%g219266219293%_))))
                      (_%g219265219289%_ _%g219266219293%_)))))
          (_%g219264220172%_ _%stx219262%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx220180%_)
        (let* ((_%__stx221162221163%_ _%$stx220180%_)
               (_%g220186220246%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx221162221163%_)))))
          (let ((_%__kont221165221166%_
                 (lambda (_%L220468%_ _%L220470%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L220470%_ '()))
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
                                                       (cons _%L220470%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L220468%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont221167221168%_
                 (lambda (_%L220393%_ _%L220395%_ _%L220396%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L220396%_ '()))
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
                                                       (cons _%L220396%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L220395%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L220393%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont221169221170%_
                 (lambda (_%L220307%_ _%L220309%_ _%L220310%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L220310%_ '()))
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
                                                       (cons _%L220310%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L220309%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L220307%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx221162221163%_))
                (let ((_%e220190220424%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx221162221163%_))))
                  (let ((_%tl220192220431%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e220190220424%_)))
                        (_%hd220191220428%_
                         (let ()
                           (declare (not safe))
                           (##car _%e220190220424%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl220192220431%_))
                        (let ((_%e220193220434%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl220192220431%_))))
                          (let ((_%tl220195220441%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e220193220434%_)))
                                (_%hd220194220438%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e220193220434%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd220194220438%_))
                                (let ((_%e220196220444%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd220194220438%_))))
                                  (if (equal? _%e220196220444%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl220195220441%_))
                                          (let ((_%e220197220448%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl220195220441%_))))
                                            (let ((_%tl220199220455%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e220197220448%_)))
                                                  (_%hd220198220452%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e220197220448%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl220199220455%_))
                                                  (let ((_%e220200220458%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl220199220455%_))))
                                                    (let ((_%tl220202220465%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e220200220458%_)))
                                                          (_%hd220201220462%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e220200220458%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl220202220465%_))
                                                          (_%__kont221165221166%_
                                                           _%hd220201220462%_
                                                           _%hd220198220452%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g220186220246%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g220186220246%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g220186220246%_)))
                                      (if (equal? _%e220196220444%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl220195220441%_))
                                              (let ((_%e220213220363%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl220195220441%_))))
                                                (let ((_%tl220215220370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e220213220363%_)))
                                                      (_%hd220214220367%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e220213220363%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl220215220370%_))
                                                      (let ((_%e220216220373%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl220215220370%_))))
                (let ((_%tl220218220380%_
                       (let () (declare (not safe)) (##cdr _%e220216220373%_)))
                      (_%hd220217220377%_
                       (let ()
                         (declare (not safe))
                         (##car _%e220216220373%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl220218220380%_))
                      (let ((_%e220219220383%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl220218220380%_))))
                        (let ((_%tl220221220390%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e220219220383%_)))
                              (_%hd220220220387%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e220219220383%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl220221220390%_))
                              (_%__kont221167221168%_
                               _%hd220220220387%_
                               _%hd220217220377%_
                               _%hd220214220367%_)
                              (let ()
                                (declare (not safe))
                                (_%g220186220246%_)))))
                      (let () (declare (not safe)) (_%g220186220246%_)))))
              (let () (declare (not safe)) (_%g220186220246%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g220186220246%_)))
                                          (if (equal? _%e220196220444%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl220195220441%_))
                                                  (let ((_%e220232220277%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl220195220441%_))))
                                                    (let ((_%tl220234220284%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e220232220277%_)))
                                                          (_%hd220233220281%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e220232220277%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl220234220284%_))
                                                          (let ((_%e220235220287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl220234220284%_))))
                    (let ((_%tl220237220294%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e220235220287%_)))
                          (_%hd220236220291%_
                           (let ()
                             (declare (not safe))
                             (##car _%e220235220287%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl220237220294%_))
                          (let ((_%e220238220297%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl220237220294%_))))
                            (let ((_%tl220240220304%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e220238220297%_)))
                                  (_%hd220239220301%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e220238220297%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl220240220304%_))
                                  (_%__kont221169221170%_
                                   _%hd220239220301%_
                                   _%hd220236220291%_
                                   _%hd220233220281%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g220186220246%_)))))
                          (let () (declare (not safe)) (_%g220186220246%_)))))
                  (let () (declare (not safe)) (_%g220186220246%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g220186220246%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g220186220246%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g220186220246%_)))))
                        (let () (declare (not safe)) (_%g220186220246%_)))))
                (let () (declare (not safe)) (_%g220186220246%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx220492%_)
        (let* ((_%g220496220516%_
                (lambda (_%g220497220512%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g220497220512%_))))
               (_%g220495220587%_
                (lambda (_%g220497220520%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g220497220520%_))
                      (let ((_%e220499220523%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g220497220520%_))))
                        (let ((_%hd220500220527%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e220499220523%_)))
                              (_%tl220501220530%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e220499220523%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl220501220530%_))
                              (let ((_g221343_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl220501220530%_
                                        '0))))
                                (begin
                                  (let ((_g221344_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221343_)
                                               (##values-length _g221343_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221344_ 2)))
                                        (error "Context expects 2 values"
                                               _g221344_)))
                                  (let ((_%target220502220533%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221343_ 0)))
                                        (_%tl220504220536%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g221343_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl220504220536%_))
                                        (letrec ((_%loop220505220539%_
                                                  (lambda (_%hd220503220543%_
                                                           _%decl220509220546%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd220503220543%_))
                                                        (let ((_%e220506220549%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd220503220543%_))))
                  (let ((_%lp-hd220507220553%_
                         (let ()
                           (declare (not safe))
                           (##car _%e220506220549%_)))
                        (_%lp-tl220508220556%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e220506220549%_))))
                    (_%loop220505220539%_
                     _%lp-tl220508220556%_
                     (cons _%lp-hd220507220553%_ _%decl220509220546%_))))
                (let ((_%decl220510220559%_ (reverse _%decl220509220546%_)))
                  ((lambda (_%L220563%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp221345
                                  (lambda (_%g220578220581%_ _%g220579220584%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g220578220581%_)
                                          _%g220579220584%_))))
                             (declare (not safe))
                             (__foldr1 __tmp221345 '() _%L220563%_))))
                   _%decl220510220559%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop220505220539%_
                                           _%target220502220533%_
                                           '()))
                                        (_%g220496220516%_
                                         _%g220497220520%_)))))
                              (_%g220496220516%_ _%g220497220520%_))))
                      (_%g220496220516%_ _%g220497220520%_)))))
          (_%g220495220587%_ _%$stx220492%_))))))
