(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g266969_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266976_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266978_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266980_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266982_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266984_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266996_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266998_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267000_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267002_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267004_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx260427%_)
        (let* ((_%g260431260449%_
                (lambda (_%g260432260445%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260432260445%_))))
               (_%g260430260504%_
                (lambda (_%g260432260453%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260432260453%_))
                      (let ((_%e260435260456%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260432260453%_))))
                        (let ((_%hd260436260460%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260435260456%_)))
                              (_%tl260437260463%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260435260456%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260437260463%_))
                              (let ((_%e260438260466%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260437260463%_))))
                                (let ((_%hd260439260470%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260438260466%_)))
                                      (_%tl260440260473%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260438260466%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260440260473%_))
                                      (let ((_%e260441260476%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260440260473%_))))
                                        (let ((_%hd260442260480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260441260476%_)))
                                              (_%tl260443260483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260441260476%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260443260483%_))
                                              ((lambda (_%g260433260486%_
                                                        _%g260434260488%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g260434260488%_))
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
                               (cons _%g260434260488%_ '()))
                         (cons _%g260433260486%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g260431260449%_
                                                      _%g260432260453%_)))
                                               _%hd260442260480%_
                                               _%hd260439260470%_)
                                              (_%g260431260449%_
                                               _%g260432260453%_))))
                                      (_%g260431260449%_ _%g260432260453%_))))
                              (_%g260431260449%_ _%g260432260453%_))))
                      (_%g260431260449%_ _%g260432260453%_)))))
          (_%g260430260504%_ _%$stx260427%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx260508%_)
        (let* ((_%g260512260530%_
                (lambda (_%g260513260526%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260513260526%_))))
               (_%g260511260585%_
                (lambda (_%g260513260534%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260513260534%_))
                      (let ((_%e260516260537%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260513260534%_))))
                        (let ((_%hd260517260541%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260516260537%_)))
                              (_%tl260518260544%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260516260537%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260518260544%_))
                              (let ((_%e260519260547%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260518260544%_))))
                                (let ((_%hd260520260551%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260519260547%_)))
                                      (_%tl260521260554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260519260547%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260521260554%_))
                                      (let ((_%e260522260557%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260521260554%_))))
                                        (let ((_%hd260523260561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260522260557%_)))
                                              (_%tl260524260564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260522260557%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260524260564%_))
                                              ((lambda (_%g260514260567%_
                                                        _%g260515260569%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g260515260569%_))
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
                               (cons _%g260515260569%_ '()))
                         (cons _%g260514260567%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g260512260530%_
                                                      _%g260513260534%_)))
                                               _%hd260523260561%_
                                               _%hd260520260551%_)
                                              (_%g260512260530%_
                                               _%g260513260534%_))))
                                      (_%g260512260530%_ _%g260513260534%_))))
                              (_%g260512260530%_ _%g260513260534%_))))
                      (_%g260512260530%_ _%g260513260534%_)))))
          (_%g260511260585%_ _%$stx260508%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx260589%_)
        (let* ((_%g260593260622%_
                (lambda (_%g260594260618%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260594260618%_))))
               (_%g260592260718%_
                (lambda (_%g260594260626%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260594260626%_))
                      (let ((_%e260597260629%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260594260626%_))))
                        (let ((_%hd260598260633%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260597260629%_)))
                              (_%tl260599260636%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260597260629%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl260599260636%_))
                              (let ((_g266947_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl260599260636%_
                                        '0))))
                                (begin
                                  (let ((_g266948_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266947_)
                                               (##values-length _g266947_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266948_ 2)))
                                        (error "Context expects 2 values"
                                               _g266948_)))
                                  (let ((_%target260600260639%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266947_ 0)))
                                        (_%tl260602260642%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266947_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260602260642%_))
                                        (letrec ((_%loop260603260645%_
                                                  (lambda (_%hd260601260649%_
                                                           _%type260607260652%_
                                                           _%symbol260608260653%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd260601260649%_))
                                                        (let ((_%e260604260655%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd260601260649%_))))
                  (let ((_%lp-hd260605260659%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260604260655%_)))
                        (_%lp-tl260606260662%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260604260655%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd260605260659%_))
                        (let ((_%e260611260665%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd260605260659%_))))
                          (let ((_%hd260612260669%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260611260665%_)))
                                (_%tl260613260672%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260611260665%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl260613260672%_))
                                (let ((_%e260614260675%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl260613260672%_))))
                                  (let ((_%hd260615260679%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260614260675%_)))
                                        (_%tl260616260682%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260614260675%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260616260682%_))
                                        (_%loop260603260645%_
                                         _%lp-tl260606260662%_
                                         (cons _%hd260615260679%_
                                               _%type260607260652%_)
                                         (cons _%hd260612260669%_
                                               _%symbol260608260653%_))
                                        (_%g260593260622%_
                                         _%g260594260626%_))))
                                (_%g260593260622%_ _%g260594260626%_))))
                        (_%g260593260622%_ _%g260594260626%_))))
                (let ((_%type260609260685%_ (reverse _%type260607260652%_))
                      (_%symbol260610260687%_
                       (reverse _%symbol260608260653%_)))
                  ((lambda (_%g260595260689%_ _%g260596260691%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g260595260689%_
                                _%g260596260691%_))
                             (let ((__tmp266949
                                    (lambda (_%g260706260710%_
                                             _%g260707260713%_
                                             _%g260708260715%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g260707260713%_
                                                        (cons _%g260706260710%_
                                                              '())))
                                            _%g260708260715%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp266949
                                '()
                                _%g260595260689%_
                                _%g260596260691%_)))))
                   _%type260609260685%_
                   _%symbol260610260687%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop260603260645%_
                                           _%target260600260639%_
                                           '()
                                           '()))
                                        (_%g260593260622%_
                                         _%g260594260626%_)))))
                              (_%g260593260622%_ _%g260594260626%_))))
                      (_%g260593260622%_ _%g260594260626%_)))))
          (_%g260592260718%_ _%$stx260589%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx260723%_)
        (let* ((_%__stx266258266259%_ _%$stx260723%_)
               (_%g260728260770%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266258266259%_)))))
          (let ((_%__kont266261266262%_
                 (lambda (_%g260730260898%_
                          _%g260731260900%_
                          _%g260732260901%_
                          _%g260733260902%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g260733260902%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g260732260901%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g260731260900%_ '()))
                                           (cons _%g260730260898%_ '())))))))
                (_%__kont266263266264%_
                 (lambda (_%g260749260817%_
                          _%g260750260819%_
                          _%g260751260820%_
                          _%g260752260821%_)
                   (cons _%g260752260821%_
                         (cons _%g260751260820%_
                               (cons _%g260750260819%_
                                     (cons _%g260749260817%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match266297266298%_
                   (lambda (_%e260734260848%_
                            _%hd260735260852%_
                            _%tl260736260855%_
                            _%e260737260858%_
                            _%hd260738260862%_
                            _%tl260739260865%_
                            _%e260740260868%_
                            _%hd260741260872%_
                            _%tl260742260875%_
                            _%e260743260878%_
                            _%hd260744260882%_
                            _%tl260745260885%_
                            _%e260746260888%_
                            _%hd260747260892%_
                            _%tl260748260895%_)
                     (let ((_%g260730260898%_ _%hd260747260892%_)
                           (_%g260731260900%_ _%hd260744260882%_)
                           (_%g260732260901%_ _%hd260741260872%_)
                           (_%g260733260902%_ _%hd260738260862%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g260733260902%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g260732260901%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g260731260900%_)))
                           (_%__kont266261266262%_
                            _%g260730260898%_
                            _%g260731260900%_
                            _%g260732260901%_
                            _%g260733260902%_)
                           (let ()
                             (declare (not safe))
                             (_%g260728260770%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266258266259%_))
                  (let ((_%e260734260848%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266258266259%_))))
                    (let ((_%tl260736260855%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e260734260848%_)))
                          (_%hd260735260852%_
                           (let ()
                             (declare (not safe))
                             (##car _%e260734260848%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl260736260855%_))
                          (let ((_%e260737260858%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl260736260855%_))))
                            (let ((_%tl260739260865%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e260737260858%_)))
                                  (_%hd260738260862%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e260737260858%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl260739260865%_))
                                  (let ((_%e260740260868%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl260739260865%_))))
                                    (let ((_%tl260742260875%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e260740260868%_)))
                                          (_%hd260741260872%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e260740260868%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl260742260875%_))
                                          (let ((_%e260743260878%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl260742260875%_))))
                                            (let ((_%tl260745260885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e260743260878%_)))
                                                  (_%hd260744260882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e260743260878%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl260745260885%_))
                                                  (let ((_%e260746260888%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl260745260885%_))))
                                                    (let ((_%tl260748260895%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e260746260888%_)))
                                                          (_%hd260747260892%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e260746260888%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl260748260895%_))
                                                          (_%__match266297266298%_
                                                           _%e260734260848%_
                                                           _%hd260735260852%_
                                                           _%tl260736260855%_
                                                           _%e260737260858%_
                                                           _%hd260738260862%_
                                                           _%tl260739260865%_
                                                           _%e260740260868%_
                                                           _%hd260741260872%_
                                                           _%tl260742260875%_
                                                           _%e260743260878%_
                                                           _%hd260744260882%_
                                                           _%tl260745260885%_
                                                           _%e260746260888%_
                                                           _%hd260747260892%_
                                                           _%tl260748260895%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g260728260770%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl260745260885%_))
                                                      (_%__kont266263266264%_
                                                       _%hd260744260882%_
                                                       _%hd260741260872%_
                                                       _%hd260738260862%_
                                                       _%hd260735260852%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g260728260770%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g260728260770%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g260728260770%_)))))
                          (let () (declare (not safe)) (_%g260728260770%_)))))
                  (let () (declare (not safe)) (_%g260728260770%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx260927%_)
        (let* ((_%g260931260966%_
                (lambda (_%g260932260962%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260932260962%_))))
               (_%g260930261079%_
                (lambda (_%g260932260970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260932260970%_))
                      (let ((_%e260936260973%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260932260970%_))))
                        (let ((_%hd260937260977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260936260973%_)))
                              (_%tl260938260980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260936260973%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl260938260980%_))
                              (let ((_g266950_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl260938260980%_
                                        '0))))
                                (begin
                                  (let ((_g266951_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266950_)
                                               (##values-length _g266950_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266951_ 2)))
                                        (error "Context expects 2 values"
                                               _g266951_)))
                                  (let ((_%target260939260983%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266950_ 0)))
                                        (_%tl260941260986%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266950_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260941260986%_))
                                        (letrec ((_%loop260942260989%_
                                                  (lambda (_%hd260940260993%_
                                                           _%symbol260946260996%_
                                                           _%method260947260997%_
                                                           _%type-t260948260998%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd260940260993%_))
                                                        (let ((_%e260943261000%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd260940260993%_))))
                  (let ((_%lp-hd260944261004%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260943261000%_)))
                        (_%lp-tl260945261007%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260943261000%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd260944261004%_))
                        (let ((_%e260952261010%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd260944261004%_))))
                          (let ((_%hd260953261014%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260952261010%_)))
                                (_%tl260954261017%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260952261010%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl260954261017%_))
                                (let ((_%e260955261020%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl260954261017%_))))
                                  (let ((_%hd260956261024%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260955261020%_)))
                                        (_%tl260957261027%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260955261020%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl260957261027%_))
                                        (let ((_%e260958261030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl260957261027%_))))
                                          (let ((_%hd260959261034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e260958261030%_)))
                                                (_%tl260960261037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e260958261030%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl260960261037%_))
                                                (_%loop260942260989%_
                                                 _%lp-tl260945261007%_
                                                 (cons _%hd260959261034%_
                                                       _%symbol260946260996%_)
                                                 (cons _%hd260956261024%_
                                                       _%method260947260997%_)
                                                 (cons _%hd260953261014%_
                                                       _%type-t260948260998%_))
                                                (_%g260931260966%_
                                                 _%g260932260970%_))))
                                        (_%g260931260966%_
                                         _%g260932260970%_))))
                                (_%g260931260966%_ _%g260932260970%_))))
                        (_%g260931260966%_ _%g260932260970%_))))
                (let ((_%symbol260949261040%_ (reverse _%symbol260946260996%_))
                      (_%method260950261042%_ (reverse _%method260947260997%_))
                      (_%type-t260951261043%_
                       (reverse _%type-t260948260998%_)))
                  ((lambda (_%g260933261045%_
                            _%g260934261047%_
                            _%g260935261048%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g260933261045%_
                                _%g260934261047%_
                                _%g260935261048%_))
                             (let ((__tmp266952
                                    (lambda (_%g261064261069%_
                                             _%g261065261072%_
                                             _%g261066261074%_
                                             _%g261067261076%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g261066261074%_
                                                        (cons _%g261065261072%_
                                                              (cons _%g261064261069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g261067261076%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp266952
                                '()
                                _%g260933261045%_
                                _%g260934261047%_
                                _%g260935261048%_)))))
                   _%symbol260949261040%_
                   _%method260950261042%_
                   _%type-t260951261043%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop260942260989%_
                                           _%target260939260983%_
                                           '()
                                           '()
                                           '()))
                                        (_%g260931260966%_
                                         _%g260932260970%_)))))
                              (_%g260931260966%_ _%g260932260970%_))))
                      (_%g260931260966%_ _%g260932260970%_)))))
          (_%g260930261079%_ _%$stx260927%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx261084%_)
        (let* ((_%g261088261121%_
                (lambda (_%g261089261117%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261089261117%_))))
               (_%g261087261231%_
                (lambda (_%g261089261125%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261089261125%_))
                      (let ((_%e261093261128%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261089261125%_))))
                        (let ((_%hd261094261132%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261093261128%_)))
                              (_%tl261095261135%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261093261128%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261095261135%_))
                              (let ((_%e261096261138%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261095261135%_))))
                                (let ((_%hd261097261142%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261096261138%_)))
                                      (_%tl261098261145%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261096261138%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl261098261145%_))
                                      (let ((_g266953_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl261098261145%_
                                                '0))))
                                        (begin
                                          (let ((_g266954_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g266953_)
                                                       (##values-length
                                                        _g266953_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g266954_ 2)))
                                                (error "Context expects 2 values"
                                                       _g266954_)))
                                          (let ((_%target261099261148%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g266953_ 0)))
                                                (_%tl261101261151%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g266953_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261101261151%_))
                                                (letrec ((_%loop261102261154%_
                                                          (lambda (_%hd261100261158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol261106261161%_
                           _%method261107261162%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd261100261158%_))
                        (let ((_%e261103261164%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd261100261158%_))))
                          (let ((_%lp-hd261104261168%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261103261164%_)))
                                (_%lp-tl261105261171%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261103261164%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd261104261168%_))
                                (let ((_%e261110261174%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd261104261168%_))))
                                  (let ((_%hd261111261178%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261110261174%_)))
                                        (_%tl261112261181%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261110261174%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl261112261181%_))
                                        (let ((_%e261113261184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl261112261181%_))))
                                          (let ((_%hd261114261188%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e261113261184%_)))
                                                (_%tl261115261191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e261113261184%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261115261191%_))
                                                (_%loop261102261154%_
                                                 _%lp-tl261105261171%_
                                                 (cons _%hd261114261188%_
                                                       _%symbol261106261161%_)
                                                 (cons _%hd261111261178%_
                                                       _%method261107261162%_))
                                                (_%g261088261121%_
                                                 _%g261089261125%_))))
                                        (_%g261088261121%_
                                         _%g261089261125%_))))
                                (_%g261088261121%_ _%g261089261125%_))))
                        (let ((_%symbol261108261194%_
                               (reverse _%symbol261106261161%_))
                              (_%method261109261196%_
                               (reverse _%method261107261162%_)))
                          ((lambda (_%g261090261198%_
                                    _%g261091261200%_
                                    _%g261092261201%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g261090261198%_
                                        _%g261091261200%_))
                                     (let ((__tmp266955
                                            (lambda (_%g261219261223%_
                                                     _%g261220261226%_
                                                     _%g261221261228%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g261092261201%_
                                                                (cons _%g261220261226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g261219261223%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g261221261228%_))))
                                       (declare (not safe))
                                       (foldr__1
                                        __tmp266955
                                        '()
                                        _%g261090261198%_
                                        _%g261091261200%_)))))
                           _%symbol261108261194%_
                           _%method261109261196%_
                           _%hd261097261142%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop261102261154%_
                                                   _%target261099261148%_
                                                   '()
                                                   '()))
                                                (_%g261088261121%_
                                                 _%g261089261125%_)))))
                                      (_%g261088261121%_ _%g261089261125%_))))
                              (_%g261088261121%_ _%g261089261125%_))))
                      (_%g261088261121%_ _%g261089261125%_)))))
          (_%g261087261231%_ _%$stx261084%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx261236%_)
        (let* ((_%g261240261254%_
                (lambda (_%g261241261250%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261241261250%_))))
               (_%g261239261295%_
                (lambda (_%g261241261258%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261241261258%_))
                      (let ((_%e261243261261%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261241261258%_))))
                        (let ((_%hd261244261265%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261243261261%_)))
                              (_%tl261245261268%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261243261261%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261245261268%_))
                              (let ((_%e261246261271%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261245261268%_))))
                                (let ((_%hd261247261275%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261246261271%_)))
                                      (_%tl261248261278%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261246261271%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261248261278%_))
                                      ((lambda (_%g261242261281%_)
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
                                                           (cons _%g261242261281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261247261275%_)
                                      (_%g261240261254%_ _%g261241261258%_))))
                              (_%g261240261254%_ _%g261241261258%_))))
                      (_%g261240261254%_ _%g261241261258%_)))))
          (_%g261239261295%_ _%$stx261236%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx261299%_)
        (let* ((_%g261303261357%_
                (lambda (_%g261304261353%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261304261353%_))))
               (_%g261302261538%_
                (lambda (_%g261304261361%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261304261361%_))
                      (let ((_%e261316261364%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261304261361%_))))
                        (let ((_%hd261317261368%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261316261364%_)))
                              (_%tl261318261371%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261316261364%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261318261371%_))
                              (let ((_%e261319261374%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261318261371%_))))
                                (let ((_%hd261320261378%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261319261374%_)))
                                      (_%tl261321261381%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261319261374%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261321261381%_))
                                      (let ((_%e261322261384%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261321261381%_))))
                                        (let ((_%hd261323261388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261322261384%_)))
                                              (_%tl261324261391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261322261384%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261324261391%_))
                                              (let ((_%e261325261394%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261324261391%_))))
                                                (let ((_%hd261326261398%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261325261394%_)))
                                                      (_%tl261327261401%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261325261394%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl261327261401%_))
                                                      (let ((_%e261328261404%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl261327261401%_))))
                (let ((_%hd261329261408%_
                       (let () (declare (not safe)) (##car _%e261328261404%_)))
                      (_%tl261330261411%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e261328261404%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl261330261411%_))
                      (let ((_%e261331261414%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl261330261411%_))))
                        (let ((_%hd261332261418%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261331261414%_)))
                              (_%tl261333261421%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261331261414%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261333261421%_))
                              (let ((_%e261334261424%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261333261421%_))))
                                (let ((_%hd261335261428%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261334261424%_)))
                                      (_%tl261336261431%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261334261424%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261336261431%_))
                                      (let ((_%e261337261434%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261336261431%_))))
                                        (let ((_%hd261338261438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261337261434%_)))
                                              (_%tl261339261441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261337261434%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261339261441%_))
                                              (let ((_%e261340261444%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261339261441%_))))
                                                (let ((_%hd261341261448%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261340261444%_)))
                                                      (_%tl261342261451%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261340261444%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl261342261451%_))
                                                      (let ((_%e261343261454%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl261342261451%_))))
                (let ((_%hd261344261458%_
                       (let () (declare (not safe)) (##car _%e261343261454%_)))
                      (_%tl261345261461%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e261343261454%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl261345261461%_))
                      (let ((_%e261346261464%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl261345261461%_))))
                        (let ((_%hd261347261468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261346261464%_)))
                              (_%tl261348261471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261346261464%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261348261471%_))
                              (let ((_%e261349261474%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261348261471%_))))
                                (let ((_%hd261350261478%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261349261474%_)))
                                      (_%tl261351261481%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261349261474%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261351261481%_))
                                      ((lambda (_%g261305261484%_
                                                _%g261306261486%_
                                                _%g261307261487%_
                                                _%g261308261488%_
                                                _%g261309261489%_
                                                _%g261310261490%_
                                                _%g261311261491%_
                                                _%g261312261492%_
                                                _%g261313261493%_
                                                _%g261314261494%_
                                                _%g261315261495%_)
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
                                                           (cons _%g261315261495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g261314261494%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g261313261493%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g261312261492%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g261311261491%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g261310261490%_ '()))
                                           (cons _%g261309261489%_
                                                 (cons _%g261308261488%_
                                                       (cons _%g261307261487%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g261306261486%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g261305261484%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd261350261478%_
                                       _%hd261347261468%_
                                       _%hd261344261458%_
                                       _%hd261341261448%_
                                       _%hd261338261438%_
                                       _%hd261335261428%_
                                       _%hd261332261418%_
                                       _%hd261329261408%_
                                       _%hd261326261398%_
                                       _%hd261323261388%_
                                       _%hd261320261378%_)
                                      (_%g261303261357%_ _%g261304261361%_))))
                              (_%g261303261357%_ _%g261304261361%_))))
                      (_%g261303261357%_ _%g261304261361%_))))
              (_%g261303261357%_ _%g261304261361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261303261357%_
                                               _%g261304261361%_))))
                                      (_%g261303261357%_ _%g261304261361%_))))
                              (_%g261303261357%_ _%g261304261361%_))))
                      (_%g261303261357%_ _%g261304261361%_))))
              (_%g261303261357%_ _%g261304261361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261303261357%_
                                               _%g261304261361%_))))
                                      (_%g261303261357%_ _%g261304261361%_))))
                              (_%g261303261357%_ _%g261304261361%_))))
                      (_%g261303261357%_ _%g261304261361%_)))))
          (_%g261302261538%_ _%$stx261299%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx261542%_)
        (let* ((_%g261546261560%_
                (lambda (_%g261547261556%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261547261556%_))))
               (_%g261545261601%_
                (lambda (_%g261547261564%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261547261564%_))
                      (let ((_%e261549261567%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261547261564%_))))
                        (let ((_%hd261550261571%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261549261567%_)))
                              (_%tl261551261574%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261549261567%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261551261574%_))
                              (let ((_%e261552261577%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261551261574%_))))
                                (let ((_%hd261553261581%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261552261577%_)))
                                      (_%tl261554261584%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261552261577%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261554261584%_))
                                      ((lambda (_%g261548261587%_)
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
                                                           (cons _%g261548261587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261553261581%_)
                                      (_%g261546261560%_ _%g261547261564%_))))
                              (_%g261546261560%_ _%g261547261564%_))))
                      (_%g261546261560%_ _%g261547261564%_)))))
          (_%g261545261601%_ _%$stx261542%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx261605%_)
        (let* ((_%g261609261623%_
                (lambda (_%g261610261619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261610261619%_))))
               (_%g261608261664%_
                (lambda (_%g261610261627%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261610261627%_))
                      (let ((_%e261612261630%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261610261627%_))))
                        (let ((_%hd261613261634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261612261630%_)))
                              (_%tl261614261637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261612261630%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261614261637%_))
                              (let ((_%e261615261640%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261614261637%_))))
                                (let ((_%hd261616261644%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261615261640%_)))
                                      (_%tl261617261647%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261615261640%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261617261647%_))
                                      ((lambda (_%g261611261650%_)
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
                                                           (cons _%g261611261650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261616261644%_)
                                      (_%g261609261623%_ _%g261610261627%_))))
                              (_%g261609261623%_ _%g261610261627%_))))
                      (_%g261609261623%_ _%g261610261627%_)))))
          (_%g261608261664%_ _%$stx261605%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx261668%_)
        (let* ((_%g261672261694%_
                (lambda (_%g261673261690%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261673261690%_))))
               (_%g261671261763%_
                (lambda (_%g261673261698%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261673261698%_))
                      (let ((_%e261677261701%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261673261698%_))))
                        (let ((_%hd261678261705%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261677261701%_)))
                              (_%tl261679261708%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261677261701%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261679261708%_))
                              (let ((_%e261680261711%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261679261708%_))))
                                (let ((_%hd261681261715%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261680261711%_)))
                                      (_%tl261682261718%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261680261711%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261682261718%_))
                                      (let ((_%e261683261721%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261682261718%_))))
                                        (let ((_%hd261684261725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261683261721%_)))
                                              (_%tl261685261728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261683261721%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261685261728%_))
                                              (let ((_%e261686261731%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261685261728%_))))
                                                (let ((_%hd261687261735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261686261731%_)))
                                                      (_%tl261688261738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261686261731%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl261688261738%_))
                                                      ((lambda (_%g261674261741%_
                                                                _%g261675261743%_
                                                                _%g261676261744%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g261676261744%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g261675261743%_ '()))
                                   (cons _%g261674261741%_ '())))))
               _%hd261687261735%_
               _%hd261684261725%_
               _%hd261681261715%_)
              (_%g261672261694%_ _%g261673261698%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261672261694%_
                                               _%g261673261698%_))))
                                      (_%g261672261694%_ _%g261673261698%_))))
                              (_%g261672261694%_ _%g261673261698%_))))
                      (_%g261672261694%_ _%g261673261698%_)))))
          (_%g261671261763%_ _%$stx261668%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx261767%_)
        (let* ((_%g261771261793%_
                (lambda (_%g261772261789%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261772261789%_))))
               (_%g261770261862%_
                (lambda (_%g261772261797%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261772261797%_))
                      (let ((_%e261776261800%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261772261797%_))))
                        (let ((_%hd261777261804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261776261800%_)))
                              (_%tl261778261807%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261776261800%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261778261807%_))
                              (let ((_%e261779261810%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261778261807%_))))
                                (let ((_%hd261780261814%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261779261810%_)))
                                      (_%tl261781261817%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261779261810%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261781261817%_))
                                      (let ((_%e261782261820%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261781261817%_))))
                                        (let ((_%hd261783261824%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261782261820%_)))
                                              (_%tl261784261827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261782261820%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261784261827%_))
                                              (let ((_%e261785261830%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261784261827%_))))
                                                (let ((_%hd261786261834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261785261830%_)))
                                                      (_%tl261787261837%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261785261830%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl261787261837%_))
                                                      ((lambda (_%g261773261840%_
                                                                _%g261774261842%_
                                                                _%g261775261843%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g261775261843%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g261774261842%_ '()))
                                   (cons _%g261773261840%_ '())))))
               _%hd261786261834%_
               _%hd261783261824%_
               _%hd261780261814%_)
              (_%g261771261793%_ _%g261772261797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261771261793%_
                                               _%g261772261797%_))))
                                      (_%g261771261793%_ _%g261772261797%_))))
                              (_%g261771261793%_ _%g261772261797%_))))
                      (_%g261771261793%_ _%g261772261797%_)))))
          (_%g261770261862%_ _%$stx261767%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx261866%_)
        (let* ((_%g261870261884%_
                (lambda (_%g261871261880%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261871261880%_))))
               (_%g261869261925%_
                (lambda (_%g261871261888%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261871261888%_))
                      (let ((_%e261873261891%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261871261888%_))))
                        (let ((_%hd261874261895%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261873261891%_)))
                              (_%tl261875261898%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261873261891%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261875261898%_))
                              (let ((_%e261876261901%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261875261898%_))))
                                (let ((_%hd261877261905%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261876261901%_)))
                                      (_%tl261878261908%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261876261901%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261878261908%_))
                                      ((lambda (_%g261872261911%_)
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
                                                           (cons _%g261872261911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261877261905%_)
                                      (_%g261870261884%_ _%g261871261888%_))))
                              (_%g261870261884%_ _%g261871261888%_))))
                      (_%g261870261884%_ _%g261871261888%_)))))
          (_%g261869261925%_ _%$stx261866%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx261929%_)
        (let* ((_%g261933261951%_
                (lambda (_%g261934261947%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261934261947%_))))
               (_%g261932262006%_
                (lambda (_%g261934261955%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261934261955%_))
                      (let ((_%e261937261958%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261934261955%_))))
                        (let ((_%hd261938261962%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261937261958%_)))
                              (_%tl261939261965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261937261958%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261939261965%_))
                              (let ((_%e261940261968%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261939261965%_))))
                                (let ((_%hd261941261972%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261940261968%_)))
                                      (_%tl261942261975%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261940261968%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261942261975%_))
                                      (let ((_%e261943261978%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261942261975%_))))
                                        (let ((_%hd261944261982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261943261978%_)))
                                              (_%tl261945261985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261943261978%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261945261985%_))
                                              ((lambda (_%g261935261988%_
                                                        _%g261936261990%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g261936261990%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g261935261988%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd261944261982%_
                                               _%hd261941261972%_)
                                              (_%g261933261951%_
                                               _%g261934261955%_))))
                                      (_%g261933261951%_ _%g261934261955%_))))
                              (_%g261933261951%_ _%g261934261955%_))))
                      (_%g261933261951%_ _%g261934261955%_)))))
          (_%g261932262006%_ _%$stx261929%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx262010%_)
        (let* ((_%__stx266326266327%_ _%$stx262010%_)
               (_%g262017262078%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266326266327%_)))))
          (let ((_%__kont266329266330%_
                 (lambda (_%g262019262316%_ _%g262020262318%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262020262318%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g262019262316%_ '()))
                                     '())))))
                (_%__kont266331266332%_
                 (lambda (_%g262030262255%_
                          _%g262031262257%_
                          _%g262032262258%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262032262258%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g262031262257%_ '()))
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
                                 (cons _%g262030262255%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont266333266334%_
                 (lambda (_%g262049262179%_ _%g262050262181%_)
                   (cons _%g262050262181%_
                         (cons _%g262049262179%_ (cons '#f '())))))
                (_%__kont266335266336%_
                 (lambda (_%g262057262129%_
                          _%g262058262131%_
                          _%g262059262132%_)
                   (cons _%g262059262132%_
                         (cons _%g262058262131%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g262057262129%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx266326266327%_))
                (let ((_%e262021262286%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx266326266327%_))))
                  (let ((_%tl262023262293%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262021262286%_)))
                        (_%hd262022262290%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262021262286%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl262023262293%_))
                        (let ((_%e262024262296%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl262023262293%_))))
                          (let ((_%tl262026262303%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262024262296%_)))
                                (_%hd262025262300%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262024262296%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl262026262303%_))
                                (let ((_%e262027262306%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl262026262303%_))))
                                  (let ((_%tl262029262313%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262027262306%_)))
                                        (_%hd262028262310%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262027262306%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262029262313%_))
                                        (_%__kont266329266330%_
                                         _%hd262028262310%_
                                         _%hd262025262300%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl262029262313%_))
                                            (let ((_%e262042262231%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl262029262313%_))))
                                              (let ((_%tl262044262238%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e262042262231%_)))
                                                    (_%hd262043262235%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e262042262231%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd262043262235%_))
                                                    (let ((_%e262045262241%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd262043262235%_))))
                                                      (if (equal? _%e262045262241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl262044262238%_))
                      (let ((_%e262046262245%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl262044262238%_))))
                        (let ((_%tl262048262252%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262046262245%_)))
                              (_%hd262047262249%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262046262245%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl262048262252%_))
                              (_%__kont266331266332%_
                               _%hd262047262249%_
                               _%hd262028262310%_
                               _%hd262025262300%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd262028262310%_))
                                  (let ((_%e262069262115%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd262028262310%_))))
                                    (declare (not safe))
                                    (_%g262017262078%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g262017262078%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd262028262310%_))
                          (let ((_%e262069262115%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd262028262310%_))))
                            (if (equal? _%e262069262115%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl262044262238%_))
                                    (_%__kont266335266336%_
                                     _%hd262043262235%_
                                     _%hd262025262300%_
                                     _%hd262022262290%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g262017262078%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g262017262078%_))))
                          (let () (declare (not safe)) (_%g262017262078%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd262028262310%_))
                      (let ((_%e262069262115%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd262028262310%_))))
                        (if (equal? _%e262069262115%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl262044262238%_))
                                (_%__kont266335266336%_
                                 _%hd262043262235%_
                                 _%hd262025262300%_
                                 _%hd262022262290%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g262017262078%_)))
                            (let () (declare (not safe)) (_%g262017262078%_))))
                      (let () (declare (not safe)) (_%g262017262078%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd262028262310%_))
                                                        (let ((_%e262069262115%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd262028262310%_))))
                  (if (equal? _%e262069262115%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl262044262238%_))
                          (_%__kont266335266336%_
                           _%hd262043262235%_
                           _%hd262025262300%_
                           _%hd262022262290%_)
                          (let () (declare (not safe)) (_%g262017262078%_)))
                      (let () (declare (not safe)) (_%g262017262078%_))))
                (let () (declare (not safe)) (_%g262017262078%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd262028262310%_))
                                                (let ((_%e262069262115%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd262028262310%_))))
                                                  (declare (not safe))
                                                  (_%g262017262078%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g262017262078%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl262026262303%_))
                                    (_%__kont266333266334%_
                                     _%hd262025262300%_
                                     _%hd262022262290%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g262017262078%_))))))
                        (let () (declare (not safe)) (_%g262017262078%_)))))
                (let () (declare (not safe)) (_%g262017262078%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx262337%_)
        (let* ((_%g262341262370%_
                (lambda (_%g262342262366%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262342262366%_))))
               (_%g262340262475%_
                (lambda (_%g262342262374%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262342262374%_))
                      (let ((_%e262344262377%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262342262374%_))))
                        (let ((_%hd262345262381%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262344262377%_)))
                              (_%tl262346262384%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262344262377%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl262346262384%_))
                              (let ((_g266956_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl262346262384%_
                                        '0))))
                                (begin
                                  (let ((_g266957_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266956_)
                                               (##values-length _g266956_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266957_ 2)))
                                        (error "Context expects 2 values"
                                               _g266957_)))
                                  (let ((_%target262347262387%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266956_ 0)))
                                        (_%tl262349262390%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266956_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262349262390%_))
                                        (letrec ((_%loop262350262393%_
                                                  (lambda (_%hd262348262397%_
                                                           _%clause262354262400%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd262348262397%_))
                                                        (let ((_%e262351262402%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd262348262397%_))))
                  (let ((_%lp-hd262352262406%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262351262402%_)))
                        (_%lp-tl262353262409%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262351262402%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd262352262406%_))
                        (let ((_g266958_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd262352262406%_
                                  '0))))
                          (begin
                            (let ((_g266959_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g266958_)
                                         (##values-length _g266958_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g266959_ 2)))
                                  (error "Context expects 2 values"
                                         _g266959_)))
                            (let ((_%target262356262412%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g266958_ 0)))
                                  (_%tl262358262415%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g266958_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl262358262415%_))
                                  (letrec ((_%loop262359262418%_
                                            (lambda (_%hd262357262422%_
                                                     _%clause262363262425%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd262357262422%_))
                                                  (let ((_%e262360262427%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd262357262422%_))))
                                                    (let ((_%lp-hd262361262431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262360262427%_)))
                                                          (_%lp-tl262362262434%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262360262427%_))))
                                                      (_%loop262359262418%_
                                                       _%lp-tl262362262434%_
                                                       (cons _%lp-hd262361262431%_
                                                             _%clause262363262425%_))))
                                                  (let ((_%clause262364262437%_
                                                         (reverse _%clause262363262425%_)))
                                                    (_%loop262350262393%_
                                                     _%lp-tl262353262409%_
                                                     (cons _%clause262364262437%_
                                                           _%clause262354262400%_)))))))
                                    (_%loop262359262418%_
                                     _%target262356262412%_
                                     '()))
                                  (_%g262341262370%_ _%g262342262374%_)))))
                        (_%g262341262370%_ _%g262342262374%_))))
                (let ((_%clause262355262440%_
                       (reverse _%clause262354262400%_)))
                  ((lambda (_%g262343262443%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp266960
                                              (lambda (_%g262458262463%_
                                                       _%g262459262466%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp266961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g262460262469%_ _%g262461262472%_)
                             (cons _%g262460262469%_ _%g262461262472%_))))
                      (declare (not safe))
                      (foldr__0 __tmp266961 '() _%g262458262463%_)))
              _%g262459262466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp266960
                                          '()
                                          _%g262343262443%_)))
                                 '())))
                   _%clause262355262440%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop262350262393%_
                                           _%target262347262387%_
                                           '()))
                                        (_%g262341262370%_
                                         _%g262342262374%_)))))
                              (_%g262341262370%_ _%g262342262374%_))))
                      (_%g262341262370%_ _%g262342262374%_)))))
          (_%g262340262475%_ _%$stx262337%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx262481%_)
        (let* ((_%g262485262503%_
                (lambda (_%g262486262499%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262486262499%_))))
               (_%g262484262558%_
                (lambda (_%g262486262507%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262486262507%_))
                      (let ((_%e262489262510%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262486262507%_))))
                        (let ((_%hd262490262514%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262489262510%_)))
                              (_%tl262491262517%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262489262510%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262491262517%_))
                              (let ((_%e262492262520%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262491262517%_))))
                                (let ((_%hd262493262524%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262492262520%_)))
                                      (_%tl262494262527%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262492262520%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262494262527%_))
                                      (let ((_%e262495262530%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262494262527%_))))
                                        (let ((_%hd262496262534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262495262530%_)))
                                              (_%tl262497262537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262495262530%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262497262537%_))
                                              ((lambda (_%g262487262540%_
                                                        _%g262488262542%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262488262542%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g262487262540%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262496262534%_
                                               _%hd262493262524%_)
                                              (_%g262485262503%_
                                               _%g262486262507%_))))
                                      (_%g262485262503%_ _%g262486262507%_))))
                              (_%g262485262503%_ _%g262486262507%_))))
                      (_%g262485262503%_ _%g262486262507%_)))))
          (_%g262484262558%_ _%$stx262481%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx262562%_)
        (let* ((_%g262566262584%_
                (lambda (_%g262567262580%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262567262580%_))))
               (_%g262565262639%_
                (lambda (_%g262567262588%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262567262588%_))
                      (let ((_%e262570262591%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262567262588%_))))
                        (let ((_%hd262571262595%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262570262591%_)))
                              (_%tl262572262598%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262570262591%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262572262598%_))
                              (let ((_%e262573262601%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262572262598%_))))
                                (let ((_%hd262574262605%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262573262601%_)))
                                      (_%tl262575262608%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262573262601%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262575262608%_))
                                      (let ((_%e262576262611%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262575262608%_))))
                                        (let ((_%hd262577262615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262576262611%_)))
                                              (_%tl262578262618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262576262611%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262578262618%_))
                                              ((lambda (_%g262568262621%_
                                                        _%g262569262623%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262569262623%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g262568262621%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262577262615%_
                                               _%hd262574262605%_)
                                              (_%g262566262584%_
                                               _%g262567262588%_))))
                                      (_%g262566262584%_ _%g262567262588%_))))
                              (_%g262566262584%_ _%g262567262588%_))))
                      (_%g262566262584%_ _%g262567262588%_)))))
          (_%g262565262639%_ _%$stx262562%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx262643%_)
        (let* ((_%g262647262676%_
                (lambda (_%g262648262672%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262648262672%_))))
               (_%g262646262772%_
                (lambda (_%g262648262680%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262648262680%_))
                      (let ((_%e262651262683%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262648262680%_))))
                        (let ((_%hd262652262687%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262651262683%_)))
                              (_%tl262653262690%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262651262683%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl262653262690%_))
                              (let ((_g266962_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl262653262690%_
                                        '0))))
                                (begin
                                  (let ((_g266963_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266962_)
                                               (##values-length _g266962_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266963_ 2)))
                                        (error "Context expects 2 values"
                                               _g266963_)))
                                  (let ((_%target262654262693%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266962_ 0)))
                                        (_%tl262656262696%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266962_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262656262696%_))
                                        (letrec ((_%loop262657262699%_
                                                  (lambda (_%hd262655262703%_
                                                           _%rule262661262706%_
                                                           _%proc262662262707%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd262655262703%_))
                                                        (let ((_%e262658262709%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd262655262703%_))))
                  (let ((_%lp-hd262659262713%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262658262709%_)))
                        (_%lp-tl262660262716%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262658262709%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd262659262713%_))
                        (let ((_%e262665262719%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd262659262713%_))))
                          (let ((_%hd262666262723%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262665262719%_)))
                                (_%tl262667262726%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262665262719%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl262667262726%_))
                                (let ((_%e262668262729%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl262667262726%_))))
                                  (let ((_%hd262669262733%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262668262729%_)))
                                        (_%tl262670262736%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262668262729%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262670262736%_))
                                        (_%loop262657262699%_
                                         _%lp-tl262660262716%_
                                         (cons _%hd262669262733%_
                                               _%rule262661262706%_)
                                         (cons _%hd262666262723%_
                                               _%proc262662262707%_))
                                        (_%g262647262676%_
                                         _%g262648262680%_))))
                                (_%g262647262676%_ _%g262648262680%_))))
                        (_%g262647262676%_ _%g262648262680%_))))
                (let ((_%rule262663262739%_ (reverse _%rule262661262706%_))
                      (_%proc262664262741%_ (reverse _%proc262662262707%_)))
                  ((lambda (_%g262649262743%_ _%g262650262745%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g262649262743%_
                                _%g262650262745%_))
                             (let ((__tmp266964
                                    (lambda (_%g262760262764%_
                                             _%g262761262767%_
                                             _%g262762262769%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g262761262767%_
                                                        (cons _%g262760262764%_
                                                              '())))
                                            _%g262762262769%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp266964
                                '()
                                _%g262649262743%_
                                _%g262650262745%_)))))
                   _%rule262663262739%_
                   _%proc262664262741%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop262657262699%_
                                           _%target262654262693%_
                                           '()
                                           '()))
                                        (_%g262647262676%_
                                         _%g262648262680%_)))))
                              (_%g262647262676%_ _%g262648262680%_))))
                      (_%g262647262676%_ _%g262648262680%_)))))
          (_%g262646262772%_ _%$stx262643%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx262777%_)
        (let* ((_%g262781262799%_
                (lambda (_%g262782262795%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262782262795%_))))
               (_%g262780262854%_
                (lambda (_%g262782262803%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262782262803%_))
                      (let ((_%e262785262806%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262782262803%_))))
                        (let ((_%hd262786262810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262785262806%_)))
                              (_%tl262787262813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262785262806%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262787262813%_))
                              (let ((_%e262788262816%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262787262813%_))))
                                (let ((_%hd262789262820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262788262816%_)))
                                      (_%tl262790262823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262788262816%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262790262823%_))
                                      (let ((_%e262791262826%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262790262823%_))))
                                        (let ((_%hd262792262830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262791262826%_)))
                                              (_%tl262793262833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262791262826%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262793262833%_))
                                              ((lambda (_%g262783262836%_
                                                        _%g262784262838%_)
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
                                                   (cons _%g262784262838%_
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
                 (cons _%g262783262836%_ '())))
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
                                   (cons _%g262784262838%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262792262830%_
                                               _%hd262789262820%_)
                                              (_%g262781262799%_
                                               _%g262782262803%_))))
                                      (_%g262781262799%_ _%g262782262803%_))))
                              (_%g262781262799%_ _%g262782262803%_))))
                      (_%g262781262799%_ _%g262782262803%_)))))
          (_%g262780262854%_ _%$stx262777%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx262858%_)
        (let* ((_%__stx266444266445%_ _%$stx262858%_)
               (_%g262863262888%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266444266445%_)))))
          (let ((_%__kont266447266448%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont266449266450%_
                 (lambda (_%g262868262935%_
                          _%g262869262937%_
                          _%g262870262938%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g262870262938%_
                                           (cons _%g262869262937%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g262868262935%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx266444266445%_))
                (let ((_%e262865262964%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx266444266445%_))))
                  (let ((_%tl262867262971%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262865262964%_)))
                        (_%hd262866262968%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262865262964%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl262867262971%_))
                        (_%__kont266447266448%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl262867262971%_))
                            (let ((_%e262874262905%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl262867262971%_))))
                              (let ((_%tl262876262912%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e262874262905%_)))
                                    (_%hd262875262909%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e262874262905%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd262875262909%_))
                                    (let ((_%e262877262915%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd262875262909%_))))
                                      (let ((_%tl262879262922%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e262877262915%_)))
                                            (_%hd262878262919%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e262877262915%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl262879262922%_))
                                            (let ((_%e262880262925%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl262879262922%_))))
                                              (let ((_%tl262882262932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e262880262925%_)))
                                                    (_%hd262881262929%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e262880262925%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl262882262932%_))
                                                    (_%__kont266449266450%_
                                                     _%tl262876262912%_
                                                     _%hd262881262929%_
                                                     _%hd262878262919%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g262863262888%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g262863262888%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g262863262888%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g262863262888%_))))))
                (let () (declare (not safe)) (_%g262863262888%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx262982%_)
        (let* ((_%__stx266488266489%_ _%$stx262982%_)
               (_%g262987263018%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266488266489%_)))))
          (let ((_%__kont266491266492%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont266493266494%_
                 (lambda (_%g262992263083%_
                          _%g262993263085%_
                          _%g262994263086%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g262994263086%_
                                           (let ((__tmp266965
                                                  (lambda (_%g263106263109%_
                                                           _%g263107263112%_)
                                                    (cons _%g263106263109%_
                                                          _%g263107263112%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp266965
                                              '()
                                              _%g262993263085%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g262992263083%_)
                                     '()))))))
            (let ((_%__match266531266532%_
                   (lambda (_%e262995263025%_
                            _%hd262996263029%_
                            _%tl262997263032%_
                            _%e262998263035%_
                            _%hd262999263039%_
                            _%tl263000263042%_
                            _%e263001263045%_
                            _%hd263002263049%_
                            _%tl263003263052%_
                            _%__splice266495266496%_
                            _%target263004263055%_
                            _%tl263006263058%_)
                     (letrec ((_%loop263007263061%_
                               (lambda (_%hd263005263065%_ _%sig263011263068%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd263005263065%_))
                                     (let ((_%e263008263070%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd263005263065%_))))
                                       (let ((_%lp-tl263010263077%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e263008263070%_)))
                                             (_%lp-hd263009263074%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e263008263070%_))))
                                         (_%loop263007263061%_
                                          _%lp-tl263010263077%_
                                          (cons _%lp-hd263009263074%_
                                                _%sig263011263068%_))))
                                     (let ((_%sig263012263080%_
                                            (reverse _%sig263011263068%_)))
                                       (_%__kont266493266494%_
                                        _%tl263000263042%_
                                        _%sig263012263080%_
                                        _%hd263002263049%_))))))
                       (_%loop263007263061%_ _%target263004263055%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266488266489%_))
                  (let ((_%e262989263122%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266488266489%_))))
                    (let ((_%tl262991263129%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262989263122%_)))
                          (_%hd262990263126%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262989263122%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl262991263129%_))
                          (_%__kont266491266492%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262991263129%_))
                              (let ((_%e262998263035%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262991263129%_))))
                                (let ((_%tl263000263042%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262998263035%_)))
                                      (_%hd262999263039%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262998263035%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd262999263039%_))
                                      (let ((_%e263001263045%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd262999263039%_))))
                                        (let ((_%tl263003263052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263001263045%_)))
                                              (_%hd263002263049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263001263045%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl263003263052%_))
                                              (let ((_%__splice266495266496%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl263003263052%_
                                                        '0))))
                                                (let ((_%tl263006263058%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266495266496%_
                                                          '1)))
                                                      (_%target263004263055%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266495266496%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl263006263058%_))
                                                      (_%__match266531266532%_
                                                       _%e262989263122%_
                                                       _%hd262990263126%_
                                                       _%tl262991263129%_
                                                       _%e262998263035%_
                                                       _%hd262999263039%_
                                                       _%tl263000263042%_
                                                       _%e263001263045%_
                                                       _%hd263002263049%_
                                                       _%tl263003263052%_
                                                       _%__splice266495266496%_
                                                       _%target263004263055%_
                                                       _%tl263006263058%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g262987263018%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g262987263018%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g262987263018%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g262987263018%_))))))
                  (let () (declare (not safe)) (_%g262987263018%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx263141%_)
        (let* ((_%__stx266534266535%_ _%$stx263141%_)
               (_%g263146263193%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266534266535%_)))))
          (let ((_%__kont266537266538%_
                 (lambda (_%g263148263351%_ _%g263149263353%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g263149263353%_
                               (let ((__tmp266966
                                      (lambda (_%g263373263376%_
                                               _%g263374263379%_)
                                        (cons _%g263373263376%_
                                              _%g263374263379%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp266966
                                  '()
                                  _%g263148263351%_))))))
                (_%__kont266541266542%_
                 (lambda (_%g263171263248%_ _%g263172263250%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g263172263250%_
                               (let ((__tmp266967
                                      (lambda (_%g263267263270%_
                                               _%g263268263273%_)
                                        (cons _%g263267263270%_
                                              _%g263268263273%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp266967
                                  '()
                                  _%g263171263248%_)))))))
            (let* ((_%__match266601266602%_
                    (lambda (_%e263173263200%_
                             _%hd263174263204%_
                             _%tl263175263207%_
                             _%e263176263210%_
                             _%hd263177263214%_
                             _%tl263178263217%_
                             _%__splice266543266544%_
                             _%target263179263220%_
                             _%tl263181263223%_)
                      (letrec ((_%loop263182263226%_
                                (lambda (_%hd263180263230%_
                                         _%sig263186263233%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd263180263230%_))
                                      (let ((_%e263183263235%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd263180263230%_))))
                                        (let ((_%lp-tl263185263242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263183263235%_)))
                                              (_%lp-hd263184263239%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263183263235%_))))
                                          (_%loop263182263226%_
                                           _%lp-tl263185263242%_
                                           (cons _%lp-hd263184263239%_
                                                 _%sig263186263233%_))))
                                      (let ((_%sig263187263245%_
                                             (reverse _%sig263186263233%_)))
                                        (_%__kont266541266542%_
                                         _%sig263187263245%_
                                         _%hd263177263214%_))))))
                        (_%loop263182263226%_ _%target263179263220%_ '()))))
                   (_%__match266593266594%_
                    (lambda (_%e263173263200%_
                             _%hd263174263204%_
                             _%tl263175263207%_
                             _%e263176263210%_
                             _%hd263177263214%_
                             _%tl263178263217%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl263178263217%_))
                          (let ((_%__splice266543266544%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl263178263217%_
                                    '0))))
                            (let ((_%tl263181263223%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice266543266544%_
                                      '1)))
                                  (_%target263179263220%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice266543266544%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl263181263223%_))
                                  (_%__match266601266602%_
                                   _%e263173263200%_
                                   _%hd263174263204%_
                                   _%tl263175263207%_
                                   _%e263176263210%_
                                   _%hd263177263214%_
                                   _%tl263178263217%_
                                   _%__splice266543266544%_
                                   _%target263179263220%_
                                   _%tl263181263223%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g263146263193%_)))))
                          (let () (declare (not safe)) (_%g263146263193%_)))))
                   (_%__match266581266582%_
                    (lambda (_%e263150263283%_
                             _%hd263151263287%_
                             _%tl263152263290%_
                             _%e263153263293%_
                             _%hd263154263297%_
                             _%tl263155263300%_
                             _%e263156263303%_
                             _%hd263157263307%_
                             _%tl263158263310%_
                             _%e263159263313%_
                             _%hd263160263317%_
                             _%tl263161263320%_
                             _%__splice266539266540%_
                             _%target263162263323%_
                             _%tl263164263326%_)
                      (letrec ((_%loop263165263329%_
                                (lambda (_%hd263163263333%_
                                         _%sig263169263336%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd263163263333%_))
                                      (let ((_%e263166263338%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd263163263333%_))))
                                        (let ((_%lp-tl263168263345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263166263338%_)))
                                              (_%lp-hd263167263342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263166263338%_))))
                                          (_%loop263165263329%_
                                           _%lp-tl263168263345%_
                                           (cons _%lp-hd263167263342%_
                                                 _%sig263169263336%_))))
                                      (let ((_%sig263170263348%_
                                             (reverse _%sig263169263336%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl263158263310%_))
                                            (_%__kont266537266538%_
                                             _%sig263170263348%_
                                             _%hd263154263297%_)
                                            (_%__match266593266594%_
                                             _%e263150263283%_
                                             _%hd263151263287%_
                                             _%tl263152263290%_
                                             _%e263153263293%_
                                             _%hd263154263297%_
                                             _%tl263155263300%_)))))))
                        (_%loop263165263329%_ _%target263162263323%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266534266535%_))
                  (let ((_%e263150263283%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266534266535%_))))
                    (let ((_%tl263152263290%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263150263283%_)))
                          (_%hd263151263287%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263150263283%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl263152263290%_))
                          (let ((_%e263153263293%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl263152263290%_))))
                            (let ((_%tl263155263300%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e263153263293%_)))
                                  (_%hd263154263297%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e263153263293%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl263155263300%_))
                                  (let ((_%e263156263303%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl263155263300%_))))
                                    (let ((_%tl263158263310%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e263156263303%_)))
                                          (_%hd263157263307%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e263156263303%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd263157263307%_))
                                          (let ((_%e263159263313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd263157263307%_))))
                                            (let ((_%tl263161263320%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e263159263313%_)))
                                                  (_%hd263160263317%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e263159263313%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd263160263317%_))
                                                  (if (let ((__tmp266968
                                                             |gxc[1]#_g266969_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp266968
                                                         _%hd263160263317%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl263161263320%_))
                                                          (let ((_%__splice266539266540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl263161263320%_
                            '0))))
                    (let ((_%tl263164263326%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266539266540%_ '1)))
                          (_%target263162263323%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266539266540%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl263164263326%_))
                          (_%__match266581266582%_
                           _%e263150263283%_
                           _%hd263151263287%_
                           _%tl263152263290%_
                           _%e263153263293%_
                           _%hd263154263297%_
                           _%tl263155263300%_
                           _%e263156263303%_
                           _%hd263157263307%_
                           _%tl263158263310%_
                           _%e263159263313%_
                           _%hd263160263317%_
                           _%tl263161263320%_
                           _%__splice266539266540%_
                           _%target263162263323%_
                           _%tl263164263326%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl263155263300%_))
                              (let ((_%__splice266543266544%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl263155263300%_
                                        '0))))
                                (let ((_%tl263181263223%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice266543266544%_
                                          '1)))
                                      (_%target263179263220%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice266543266544%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl263181263223%_))
                                      (_%__match266601266602%_
                                       _%e263150263283%_
                                       _%hd263151263287%_
                                       _%tl263152263290%_
                                       _%e263153263293%_
                                       _%hd263154263297%_
                                       _%tl263155263300%_
                                       _%__splice266543266544%_
                                       _%target263179263220%_
                                       _%tl263181263223%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g263146263193%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g263146263193%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl263155263300%_))
                      (let ((_%__splice266543266544%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl263155263300%_
                                '0))))
                        (let ((_%tl263181263223%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice266543266544%_ '1)))
                              (_%target263179263220%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice266543266544%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl263181263223%_))
                              (_%__match266601266602%_
                               _%e263150263283%_
                               _%hd263151263287%_
                               _%tl263152263290%_
                               _%e263153263293%_
                               _%hd263154263297%_
                               _%tl263155263300%_
                               _%__splice266543266544%_
                               _%target263179263220%_
                               _%tl263181263223%_)
                              (let ()
                                (declare (not safe))
                                (_%g263146263193%_)))))
                      (let () (declare (not safe)) (_%g263146263193%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl263155263300%_))
                  (let ((_%__splice266543266544%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl263155263300%_
                            '0))))
                    (let ((_%tl263181263223%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266543266544%_ '1)))
                          (_%target263179263220%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266543266544%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl263181263223%_))
                          (_%__match266601266602%_
                           _%e263150263283%_
                           _%hd263151263287%_
                           _%tl263152263290%_
                           _%e263153263293%_
                           _%hd263154263297%_
                           _%tl263155263300%_
                           _%__splice266543266544%_
                           _%target263179263220%_
                           _%tl263181263223%_)
                          (let () (declare (not safe)) (_%g263146263193%_)))))
                  (let () (declare (not safe)) (_%g263146263193%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl263155263300%_))
                                                      (let ((_%__splice266543266544%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl263155263300%_
                        '0))))
                (let ((_%tl263181263223%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice266543266544%_ '1)))
                      (_%target263179263220%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice266543266544%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl263181263223%_))
                      (_%__match266601266602%_
                       _%e263150263283%_
                       _%hd263151263287%_
                       _%tl263152263290%_
                       _%e263153263293%_
                       _%hd263154263297%_
                       _%tl263155263300%_
                       _%__splice266543266544%_
                       _%target263179263220%_
                       _%tl263181263223%_)
                      (let () (declare (not safe)) (_%g263146263193%_)))))
              (let () (declare (not safe)) (_%g263146263193%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl263155263300%_))
                                              (let ((_%__splice266543266544%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl263155263300%_
                                                        '0))))
                                                (let ((_%tl263181263223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266543266544%_
                                                          '1)))
                                                      (_%target263179263220%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266543266544%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl263181263223%_))
                                                      (_%__match266601266602%_
                                                       _%e263150263283%_
                                                       _%hd263151263287%_
                                                       _%tl263152263290%_
                                                       _%e263153263293%_
                                                       _%hd263154263297%_
                                                       _%tl263155263300%_
                                                       _%__splice266543266544%_
                                                       _%target263179263220%_
                                                       _%tl263181263223%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g263146263193%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g263146263193%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl263155263300%_))
                                      (let ((_%__splice266543266544%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl263155263300%_
                                                '0))))
                                        (let ((_%tl263181263223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice266543266544%_
                                                  '1)))
                                              (_%target263179263220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice266543266544%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263181263223%_))
                                              (_%__match266601266602%_
                                               _%e263150263283%_
                                               _%hd263151263287%_
                                               _%tl263152263290%_
                                               _%e263153263293%_
                                               _%hd263154263297%_
                                               _%tl263155263300%_
                                               _%__splice266543266544%_
                                               _%target263179263220%_
                                               _%tl263181263223%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g263146263193%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g263146263193%_))))))
                          (let () (declare (not safe)) (_%g263146263193%_)))))
                  (let () (declare (not safe)) (_%g263146263193%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx264536%_ _%id264538%_)
        (let ((_%proc264542%_
               (let ((__tmp266970
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id264538%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp266970))))
          (if (procedure? _%proc264542%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx264536%_
                 _%id264538%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx264527%_ _%id264529%_)
        (let ((_%klass264533%_
               (let ((__tmp266971
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id264529%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp266971))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass264533%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx264527%_
                 _%id264529%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx263777%_ _%proc263779%_ _%sig263780%_)
        (letrec ((_%signature-arity263782%_
                  (lambda (_%args264459%_)
                    (let _%loop264462%_ ((_%rest264465%_ _%args264459%_)
                                         (_%count264467%_ '0))
                      (let* ((_%rest264468264479%_ _%rest264465%_)
                             (_%E264472264485%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest264468264479%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K264475264516%_
                               (lambda (_%rest264513%_)
                                 (_%loop264462%_
                                  _%rest264513%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count264467%_ '1)))))
                              (_%K264474264505%_ (lambda () _%count264467%_))
                              (_%K264473264493%_
                               (lambda () (cons _%count264467%_ '()))))
                          (let ((_%try-match264470264509%_
                                 (lambda ()
                                   (if (null? _%rest264468264479%_)
                                       (_%K264474264505%_)
                                       (_%K264473264493%_)))))
                            (if (pair? _%rest264468264479%_)
                                (let* ((_%tl264477264520%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest264468264479%_)))
                                       (_%rest264524%_ _%tl264477264520%_))
                                  (_%K264475264516%_ _%rest264524%_))
                                (_%try-match264470264509%_))))))))
                 (_%make-signature263784%_
                  (lambda (_%args264341%_
                           _%return264343%_
                           _%effect264344%_
                           _%unchecked264345%_)
                    (let ((__tmp266972
                           (lambda (_%g264346264348%_)
                             (|gxc[1]#verify-class!|
                              _%ctx263777%_
                              _%g264346264348%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp266972 _%args264341%_))
                    (|gxc[1]#verify-class!| _%ctx263777%_ _%return264343%_)
                    (if _%unchecked264345%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx263777%_
                         _%unchecked264345%_)
                        '#!void)
                    (let ((_%arity264352%_
                           (_%signature-arity263782%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args264341%_)))))
                      (if _%effect264344%_
                          (let ((_%effect264355%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect264344%_))))
                            (if (and (list? _%effect264355%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect264355%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx263777%_
                                   _%proc263779%_
                                   _%effect264355%_))))
                          '#!void)
                      (cons _%arity264352%_
                            (cons (let* ((_%g264358264381%_
                                          (lambda (_%g264359264377%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g264359264377%_))))
                                         (_%g264357264455%_
                                          (lambda (_%g264359264385%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g264359264385%_))
                                                (let ((_%e264364264388%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g264359264385%_))))
                                                  (let ((_%hd264365264392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e264364264388%_)))
                                                        (_%tl264366264395%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e264364264388%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl264366264395%_))
                                                        (let ((_%e264367264398%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl264366264395%_))))
                  (let ((_%hd264368264402%_
                         (let ()
                           (declare (not safe))
                           (##car _%e264367264398%_)))
                        (_%tl264369264405%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e264367264398%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl264369264405%_))
                        (let ((_%e264370264408%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl264369264405%_))))
                          (let ((_%hd264371264412%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264370264408%_)))
                                (_%tl264372264415%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264370264408%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl264372264415%_))
                                (let ((_%e264373264418%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl264372264415%_))))
                                  (let ((_%hd264374264422%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e264373264418%_)))
                                        (_%tl264375264425%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e264373264418%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl264375264425%_))
                                        ((lambda (_%g264360264428%_
                                                  _%g264361264430%_
                                                  _%g264362264431%_
                                                  _%g264363264432%_)
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
                           (cons _%g264363264432%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g264362264431%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g264361264430%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g264360264428%_ '()))
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
                                         _%hd264374264422%_
                                         _%hd264371264412%_
                                         _%hd264368264402%_
                                         _%hd264365264392%_)
                                        (_%g264358264381%_
                                         _%g264359264385%_))))
                                (_%g264358264381%_ _%g264359264385%_))))
                        (_%g264358264381%_ _%g264359264385%_))))
                (_%g264358264381%_ _%g264359264385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g264358264381%_
                                                 _%g264359264385%_)))))
                                    (_%g264357264455%_
                                     (list _%args264341%_
                                           _%return264343%_
                                           _%effect264344%_
                                           _%unchecked264345%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx263777%_ _%proc263779%_)
          (let* ((_%__stx266612266613%_ _%sig263780%_)
                 (_%g263791263894%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx266612266613%_)))))
            (let ((_%__kont266615266616%_
                   (lambda (_%g263793264322%_ _%g263794264324%_)
                     (_%make-signature263784%_
                      _%g263794264324%_
                      _%g263793264322%_
                      '#f
                      '#f)))
                  (_%__kont266617266618%_
                   (lambda (_%g263801264273%_
                            _%g263802264275%_
                            _%g263803264276%_)
                     (_%make-signature263784%_
                      _%g263803264276%_
                      _%g263802264275%_
                      _%g263801264273%_
                      '#f)))
                  (_%__kont266619266620%_
                   (lambda (_%g263817264197%_
                            _%g263818264199%_
                            _%g263819264200%_)
                     (_%make-signature263784%_
                      _%g263819264200%_
                      _%g263818264199%_
                      _%g263817264197%_
                      (let ((__tmp266973
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc263779%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp266973)))))
                  (_%__kont266621266622%_
                   (lambda (_%g263837264103%_
                            _%g263838264105%_
                            _%g263839264106%_
                            _%g263840264107%_)
                     (_%make-signature263784%_
                      _%g263840264107%_
                      _%g263839264106%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g263837264103%_)))))
                  (_%__kont266623266624%_
                   (lambda (_%g263861264010%_ _%g263862264012%_)
                     (_%make-signature263784%_
                      _%g263862264012%_
                      _%g263861264010%_
                      '#f
                      (let ((__tmp266974
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc263779%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp266974)))))
                  (_%__kont266625266626%_
                   (lambda (_%g263873263945%_
                            _%g263874263947%_
                            _%g263875263948%_)
                     (_%make-signature263784%_
                      _%g263875263948%_
                      _%g263874263947%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g263873263945%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266612266613%_))
                  (let ((_%e263795264302%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266612266613%_))))
                    (let ((_%tl263797264309%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263795264302%_)))
                          (_%hd263796264306%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263795264302%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl263797264309%_))
                          (let ((_%e263798264312%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl263797264309%_))))
                            (let ((_%tl263800264319%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e263798264312%_)))
                                  (_%hd263799264316%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e263798264312%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl263800264319%_))
                                  (_%__kont266615266616%_
                                   _%hd263799264316%_
                                   _%hd263796264306%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263800264319%_))
                                      (let ((_%e263810264249%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263800264319%_))))
                                        (let ((_%tl263812264256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263810264249%_)))
                                              (_%hd263811264253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263810264249%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd263811264253%_))
                                              (let ((_%e263813264259%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd263811264253%_))))
                                                (if (equal? _%e263813264259%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl263812264256%_))
                                                        (let ((_%e263814264263%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl263812264256%_))))
                  (let ((_%tl263816264270%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263814264263%_)))
                        (_%hd263815264267%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263814264263%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl263816264270%_))
                        (_%__kont266617266618%_
                         _%hd263815264267%_
                         _%hd263799264316%_
                         _%hd263796264306%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl263816264270%_))
                            (let ((_%e263833264183%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl263816264270%_))))
                              (let ((_%tl263835264190%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e263833264183%_)))
                                    (_%hd263834264187%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e263833264183%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd263834264187%_))
                                    (let ((_%e263836264193%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd263834264187%_))))
                                      (if (equal? _%e263836264193%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263835264190%_))
                                              (_%__kont266619266620%_
                                               _%hd263815264267%_
                                               _%hd263799264316%_
                                               _%hd263796264306%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl263835264190%_))
                                                  (let ((_%e263858264093%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl263835264190%_))))
                                                    (let ((_%tl263860264100%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e263858264093%_)))
                                                          (_%hd263859264097%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e263858264093%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl263860264100%_))
                                                          (_%__kont266621266622%_
                                                           _%hd263859264097%_
                                                           _%hd263815264267%_
                                                           _%hd263799264316%_
                                                           _%hd263796264306%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g263791263894%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g263791263894%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g263791263894%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g263791263894%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g263791263894%_))))))
                (let () (declare (not safe)) (_%g263791263894%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e263813264259%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl263812264256%_))
                                                            (_%__kont266623266624%_
                                                             _%hd263799264316%_
                                                             _%hd263796264306%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl263812264256%_))
                        (let ((_%e263886263935%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl263812264256%_))))
                          (let ((_%tl263888263942%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263886263935%_)))
                                (_%hd263887263939%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263886263935%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl263888263942%_))
                                (_%__kont266625266626%_
                                 _%hd263887263939%_
                                 _%hd263799264316%_
                                 _%hd263796264306%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g263791263894%_)))))
                        (let () (declare (not safe)) (_%g263791263894%_))))
                (let () (declare (not safe)) (_%g263791263894%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g263791263894%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g263791263894%_))))))
                          (let () (declare (not safe)) (_%g263791263894%_)))))
                  (let () (declare (not safe)) (_%g263791263894%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig263388%_)
        (let* ((_%g263391263471%_
                (lambda (_%g263392263467%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263392263467%_))))
               (_%g263390263773%_
                (lambda (_%g263392263475%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263392263475%_))
                      (let ((_%e263398263478%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263392263475%_))))
                        (let ((_%hd263399263482%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263398263478%_)))
                              (_%tl263400263485%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263398263478%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263400263485%_))
                              (let ((_%e263401263488%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263400263485%_))))
                                (let ((_%hd263402263492%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263401263488%_)))
                                      (_%tl263403263495%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263401263488%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd263402263492%_))
                                      (let ((_%e263404263498%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd263402263492%_))))
                                        (if (equal? _%e263404263498%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl263403263495%_))
                                                (let ((_%e263405263502%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl263403263495%_))))
                                                  (let ((_%hd263406263506%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e263405263502%_)))
                                                        (_%tl263407263509%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e263405263502%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd263406263506%_))
                                                        (let ((_%e263408263512%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd263406263506%_))))
                  (let ((_%hd263409263516%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263408263512%_)))
                        (_%tl263410263519%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263408263512%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd263409263516%_))
                        (if (let ((__tmp266975 |gxc[1]#_g266976_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp266975
                               _%hd263409263516%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263410263519%_))
                                (let ((_%e263411263522%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263410263519%_))))
                                  (let ((_%hd263412263526%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263411263522%_)))
                                        (_%tl263413263529%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263411263522%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263413263529%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl263407263509%_))
                                            (let ((_%e263414263532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl263407263509%_))))
                                              (let ((_%hd263415263536%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e263414263532%_)))
                                                    (_%tl263416263539%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e263414263532%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd263415263536%_))
                                                    (let ((_%e263417263542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd263415263536%_))))
                                                      (if (equal? _%e263417263542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl263416263539%_))
                      (let ((_%e263418263546%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl263416263539%_))))
                        (let ((_%hd263419263550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263418263546%_)))
                              (_%tl263420263553%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263418263546%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd263419263550%_))
                              (let ((_%e263421263556%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd263419263550%_))))
                                (let ((_%hd263422263560%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263421263556%_)))
                                      (_%tl263423263563%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263421263556%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd263422263560%_))
                                      (if (let ((__tmp266977
                                                 |gxc[1]#_g266978_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp266977
                                             _%hd263422263560%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl263423263563%_))
                                              (let ((_%e263424263566%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl263423263563%_))))
                                                (let ((_%hd263425263570%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e263424263566%_)))
                                                      (_%tl263426263573%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e263424263566%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl263426263573%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl263420263553%_))
                                                          (let ((_%e263427263576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl263420263553%_))))
                    (let ((_%hd263428263580%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263427263576%_)))
                          (_%tl263429263583%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263427263576%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd263428263580%_))
                          (let ((_%e263430263586%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd263428263580%_))))
                            (if (equal? _%e263430263586%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl263429263583%_))
                                    (let ((_%e263431263590%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl263429263583%_))))
                                      (let ((_%hd263432263594%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e263431263590%_)))
                                            (_%tl263433263597%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e263431263590%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd263432263594%_))
                                            (let ((_%e263434263600%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd263432263594%_))))
                                              (let ((_%hd263435263604%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e263434263600%_)))
                                                    (_%tl263436263607%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e263434263600%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd263435263604%_))
                                                    (if (let ((__tmp266979
                                                               |gxc[1]#_g266980_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp266979
                                                           _%hd263435263604%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl263436263607%_))
                                                            (let ((_%e263437263610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl263436263607%_))))
                      (let ((_%hd263438263614%_
                             (let ()
                               (declare (not safe))
                               (##car _%e263437263610%_)))
                            (_%tl263439263617%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e263437263610%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl263439263617%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263433263597%_))
                                (let ((_%e263440263620%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263433263597%_))))
                                  (let ((_%hd263441263624%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263440263620%_)))
                                        (_%tl263442263627%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263440263620%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd263441263624%_))
                                        (let ((_%e263443263630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd263441263624%_))))
                                          (if (equal? _%e263443263630%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl263442263627%_))
                                                  (let ((_%e263444263634%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl263442263627%_))))
                                                    (let ((_%hd263445263638%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e263444263634%_)))
                                                          (_%tl263446263641%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e263444263634%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd263445263638%_))
                                                          (let ((_%e263447263644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd263445263638%_))))
                    (let ((_%hd263448263648%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263447263644%_)))
                          (_%tl263449263651%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263447263644%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd263448263648%_))
                          (if (let ((__tmp266981 |gxc[1]#_g266982_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp266981
                                 _%hd263448263648%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl263449263651%_))
                                  (let ((_%e263450263654%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl263449263651%_))))
                                    (let ((_%hd263451263658%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e263450263654%_)))
                                          (_%tl263452263661%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e263450263654%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl263452263661%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl263446263641%_))
                                              (let ((_%e263453263664%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl263446263641%_))))
                                                (let ((_%hd263454263668%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e263453263664%_)))
                                                      (_%tl263455263671%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e263453263664%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd263454263668%_))
                                                      (let ((_%e263456263674%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd263454263668%_))))
                (if (equal? _%e263456263674%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl263455263671%_))
                        (let ((_%e263457263678%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl263455263671%_))))
                          (let ((_%hd263458263682%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263457263678%_)))
                                (_%tl263459263685%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263457263678%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd263458263682%_))
                                (let ((_%e263460263688%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd263458263682%_))))
                                  (let ((_%hd263461263692%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263460263688%_)))
                                        (_%tl263462263695%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263460263688%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd263461263692%_))
                                        (if (let ((__tmp266983
                                                   |gxc[1]#_g266984_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp266983
                                               _%hd263461263692%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl263462263695%_))
                                                (let ((_%e263463263698%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl263462263695%_))))
                                                  (let ((_%hd263464263702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e263463263698%_)))
                                                        (_%tl263465263705%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e263463263698%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl263465263705%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl263459263685%_))
                                                            ((lambda (_%g263393263708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g263394263710%_
                              _%g263395263711%_
                              _%g263396263712%_
                              _%g263397263713%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g263394263710%_))
                           (cons _%g263394263710%_
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
                       (cons _%g263396263712%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g263393263708%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd263464263702%_
                     _%hd263451263658%_
                     _%hd263438263614%_
                     _%hd263425263570%_
                     _%hd263412263526%_)
                    (_%g263391263471%_ _%g263392263475%_))
                (_%g263391263471%_ _%g263392263475%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g263391263471%_
                                                 _%g263392263475%_))
                                            (_%g263391263471%_
                                             _%g263392263475%_))
                                        (_%g263391263471%_
                                         _%g263392263475%_))))
                                (_%g263391263471%_ _%g263392263475%_))))
                        (_%g263391263471%_ _%g263392263475%_))
                    (_%g263391263471%_ _%g263392263475%_)))
              (_%g263391263471%_ _%g263392263475%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g263391263471%_
                                               _%g263392263475%_))
                                          (_%g263391263471%_
                                           _%g263392263475%_))))
                                  (_%g263391263471%_ _%g263392263475%_))
                              (_%g263391263471%_ _%g263392263475%_))
                          (_%g263391263471%_ _%g263392263475%_))))
                  (_%g263391263471%_ _%g263392263475%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g263391263471%_
                                                   _%g263392263475%_))
                                              (_%g263391263471%_
                                               _%g263392263475%_)))
                                        (_%g263391263471%_
                                         _%g263392263475%_))))
                                (_%g263391263471%_ _%g263392263475%_))
                            (_%g263391263471%_ _%g263392263475%_))))
                    (_%g263391263471%_ _%g263392263475%_))
                (_%g263391263471%_ _%g263392263475%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g263391263471%_
                                                     _%g263392263475%_))))
                                            (_%g263391263471%_
                                             _%g263392263475%_))))
                                    (_%g263391263471%_ _%g263392263475%_))
                                (_%g263391263471%_ _%g263392263475%_)))
                          (_%g263391263471%_ _%g263392263475%_))))
                  (_%g263391263471%_ _%g263392263475%_))
              (_%g263391263471%_ _%g263392263475%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g263391263471%_
                                               _%g263392263475%_))
                                          (_%g263391263471%_
                                           _%g263392263475%_))
                                      (_%g263391263471%_ _%g263392263475%_))))
                              (_%g263391263471%_ _%g263392263475%_))))
                      (_%g263391263471%_ _%g263392263475%_))
                  (_%g263391263471%_ _%g263392263475%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g263391263471%_
                                                     _%g263392263475%_))))
                                            (_%g263391263471%_
                                             _%g263392263475%_))
                                        (_%g263391263471%_
                                         _%g263392263475%_))))
                                (_%g263391263471%_ _%g263392263475%_))
                            (_%g263391263471%_ _%g263392263475%_))
                        (_%g263391263471%_ _%g263392263475%_))))
                (_%g263391263471%_ _%g263392263475%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g263391263471%_
                                                 _%g263392263475%_))
                                            (_%g263391263471%_
                                             _%g263392263475%_)))
                                      (_%g263391263471%_ _%g263392263475%_))))
                              (_%g263391263471%_ _%g263392263475%_))))
                      (_%g263391263471%_ _%g263392263475%_)))))
          (_%g263390263773%_ _%sig263388%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx264545%_)
        (let* ((_%g264548264566%_
                (lambda (_%g264549264562%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264549264562%_))))
               (_%g264547264621%_
                (lambda (_%g264549264570%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264549264570%_))
                      (let ((_%e264552264573%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264549264570%_))))
                        (let ((_%hd264553264577%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264552264573%_)))
                              (_%tl264554264580%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264552264573%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264554264580%_))
                              (let ((_%e264555264583%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264554264580%_))))
                                (let ((_%hd264556264587%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264555264583%_)))
                                      (_%tl264557264590%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264555264583%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264557264590%_))
                                      (let ((_%e264558264593%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264557264590%_))))
                                        (let ((_%hd264559264597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264558264593%_)))
                                              (_%tl264560264600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264558264593%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl264560264600%_))
                                              ((lambda (_%g264550264603%_
                                                        _%g264551264605%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g264551264605%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g264550264603%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx264545%_
                                                        _%g264551264605%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx264545%_
                                                        _%g264550264603%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g264551264605%_
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
                                                   (cons _%g264550264603%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g264548264566%_
                                                      _%g264549264570%_)))
                                               _%hd264559264597%_
                                               _%hd264556264587%_)
                                              (_%g264548264566%_
                                               _%g264549264570%_))))
                                      (_%g264548264566%_ _%g264549264570%_))))
                              (_%g264548264566%_ _%g264549264570%_))))
                      (_%g264548264566%_ _%g264549264570%_)))))
          (_%g264547264621%_ _%stx264545%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx264625%_)
        (let* ((_%g264628264652%_
                (lambda (_%g264629264648%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264629264648%_))))
               (_%g264627264933%_
                (lambda (_%g264629264656%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264629264656%_))
                      (let ((_%e264632264659%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264629264656%_))))
                        (let ((_%hd264633264663%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264632264659%_)))
                              (_%tl264634264666%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264632264659%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264634264666%_))
                              (let ((_%e264635264669%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264634264666%_))))
                                (let ((_%hd264636264673%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264635264669%_)))
                                      (_%tl264637264676%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264635264669%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl264637264676%_))
                                      (let ((_g266985_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl264637264676%_
                                                '0))))
                                        (begin
                                          (let ((_g266986_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g266985_)
                                                       (##values-length
                                                        _g266985_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g266986_ 2)))
                                                (error "Context expects 2 values"
                                                       _g266986_)))
                                          (let ((_%target264638264679%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g266985_ 0)))
                                                (_%tl264640264682%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g266985_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl264640264682%_))
                                                (letrec ((_%loop264641264685%_
                                                          (lambda (_%hd264639264689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature264645264692%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd264639264689%_))
                        (let ((_%e264642264694%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd264639264689%_))))
                          (let ((_%lp-hd264643264698%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264642264694%_)))
                                (_%lp-tl264644264701%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264642264694%_))))
                            (_%loop264641264685%_
                             _%lp-tl264644264701%_
                             (cons _%lp-hd264643264698%_
                                   _%signature264645264692%_))))
                        (let ((_%signature264646264704%_
                               (reverse _%signature264645264692%_)))
                          ((lambda (_%g264630264707%_ _%g264631264709%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g264631264709%_))
                                 (let* ((_%g264727264742%_
                                         (lambda (_%g264728264738%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g264728264738%_))))
                                        (_%g264726264921%_
                                         (lambda (_%g264728264746%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g264728264746%_))
                                               (let ((_%e264731264749%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g264728264746%_))))
                                                 (let ((_%hd264732264753%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e264731264749%_)))
                                                       (_%tl264733264756%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e264731264749%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl264733264756%_))
                                                       (let ((_%e264734264759%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl264733264756%_))))
                 (let ((_%hd264735264763%_
                        (let ()
                          (declare (not safe))
                          (##car _%e264734264759%_)))
                       (_%tl264736264766%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e264734264759%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl264736264766%_))
                       ((lambda (_%g264729264769%_ _%g264730264771%_)
                          (let* ((_%g264787264795%_
                                  (lambda (_%g264788264791%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g264788264791%_))))
                                 (_%g264786264917%_
                                  (lambda (_%g264788264799%_)
                                    ((lambda (_%g264789264802%_)
                                       (let* ((_%unchecked264815%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g264729264769%_))
                                              (_%g264818264826%_
                                               (lambda (_%g264819264822%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g264819264822%_))))
                                              (_%g264817264849%_
                                               (lambda (_%g264819264830%_)
                                                 ((lambda (_%g264820264833%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g264789264802%_
                                                                (cons _%g264820264833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g264819264830%_))))
                                         (_%g264817264849%_
                                          (if _%unchecked264815%_
                                              (let* ((_%g264853264868%_
                                                      (lambda (_%g264854264864%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g264854264864%_))))
                                                     (_%g264852264913%_
                                                      (lambda (_%g264854264872%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g264854264872%_))
                                                            (let ((_%e264857264875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g264854264872%_))))
                      (let ((_%hd264858264879%_
                             (let ()
                               (declare (not safe))
                               (##car _%e264857264875%_)))
                            (_%tl264859264882%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e264857264875%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl264859264882%_))
                            (let ((_%e264860264885%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl264859264882%_))))
                              (let ((_%hd264861264889%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e264860264885%_)))
                                    (_%tl264862264892%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e264860264885%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl264862264892%_))
                                    ((lambda (_%g264855264895%_
                                              _%g264856264897%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g264856264897%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g264730264771%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g264855264895%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd264861264889%_
                                     _%hd264858264879%_)
                                    (_%g264853264868%_ _%g264854264872%_))))
                            (_%g264853264868%_ _%g264854264872%_))))
                    (_%g264853264868%_ _%g264854264872%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g264852264913%_
                                                 _%unchecked264815%_))
                                              '(begin)))))
                                     _%g264788264799%_))))
                            (_%g264786264917%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g264631264709%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g264730264771%_ '()))
                   (cons '#f (cons 'signature: (cons _%g264729264769%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd264735264763%_
                        _%hd264732264753%_)
                       (_%g264727264742%_ _%g264728264746%_))))
               (_%g264727264742%_ _%g264728264746%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264727264742%_
                                                _%g264728264746%_)))))
                                   (_%g264726264921%_
                                    (|gxc[1]#parse-signature|
                                     _%stx264625%_
                                     _%g264631264709%_
                                     (let ((__tmp266987
                                            (lambda (_%g264924264927%_
                                                     _%g264925264930%_)
                                              (cons _%g264924264927%_
                                                    _%g264925264930%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp266987
                                        '()
                                        _%g264630264707%_)))))
                                 (_%g264628264652%_ _%g264629264656%_)))
                           _%signature264646264704%_
                           _%hd264636264673%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop264641264685%_
                                                   _%target264638264679%_
                                                   '()))
                                                (_%g264628264652%_
                                                 _%g264629264656%_)))))
                                      (_%g264628264652%_ _%g264629264656%_))))
                              (_%g264628264652%_ _%g264629264656%_))))
                      (_%g264628264652%_ _%g264629264656%_)))))
          (_%g264627264933%_ _%stx264625%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx264938%_)
        (let* ((_%g264941264965%_
                (lambda (_%g264942264961%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264942264961%_))))
               (_%g264940265840%_
                (lambda (_%g264942264969%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264942264969%_))
                      (let ((_%e264945264972%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264942264969%_))))
                        (let ((_%hd264946264976%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264945264972%_)))
                              (_%tl264947264979%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264945264972%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264947264979%_))
                              (let ((_%e264948264982%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264947264979%_))))
                                (let ((_%hd264949264986%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264948264982%_)))
                                      (_%tl264950264989%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264948264982%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl264950264989%_))
                                      (let ((_g266988_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl264950264989%_
                                                '0))))
                                        (begin
                                          (let ((_g266989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g266988_)
                                                       (##values-length
                                                        _g266988_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g266989_ 2)))
                                                (error "Context expects 2 values"
                                                       _g266989_)))
                                          (let ((_%target264951264992%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g266988_ 0)))
                                                (_%tl264953264995%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g266988_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl264953264995%_))
                                                (letrec ((_%loop264954264998%_
                                                          (lambda (_%hd264952265002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature264958265005%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd264952265002%_))
                        (let ((_%e264955265007%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd264952265002%_))))
                          (let ((_%lp-hd264956265011%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264955265007%_)))
                                (_%lp-tl264957265014%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264955265007%_))))
                            (_%loop264954264998%_
                             _%lp-tl264957265014%_
                             (cons _%lp-hd264956265011%_
                                   _%case-signature264958265005%_))))
                        (let ((_%case-signature264959265017%_
                               (reverse _%case-signature264958265005%_)))
                          ((lambda (_%g264943265020%_ _%g264944265022%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g264944265022%_))
                                 (let* ((_%signatures265053%_
                                         (map (lambda (_%g265039265041%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx264938%_
                                                 _%g264944265022%_
                                                 _%g265039265041%_))
                                              (let ((__tmp266990
                                                     (lambda (_%g265044265047%_
                                                              _%g265045265050%_)
                                                       (cons _%g265044265047%_
                                                             _%g265045265050%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp266990
                                                 '()
                                                 _%g264943265020%_))))
                                        (_%g265056265082%_
                                         (lambda (_%g265057265078%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g265057265078%_))))
                                        (_%g265055265836%_
                                         (lambda (_%g265057265086%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g265057265086%_))
                                               (let ((_g266991_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g265057265086%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g266992_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g266991_)
                        (##values-length _g266991_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g266992_ 2)))
                 (error "Context expects 2 values" _g266992_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target265060265089%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g266991_
                                                             0)))
                                                         (_%tl265062265092%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g266991_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl265062265092%_))
                                                         (letrec ((_%loop265063265095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd265061265099%_
                                    _%sig265067265102%_
                                    _%arity265068265103%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd265061265099%_))
                                 (let ((_%e265064265105%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd265061265099%_))))
                                   (let ((_%lp-hd265065265109%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265064265105%_)))
                                         (_%lp-tl265066265112%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265064265105%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd265065265109%_))
                                         (let ((_%e265071265115%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd265065265109%_))))
                                           (let ((_%hd265072265119%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e265071265115%_)))
                                                 (_%tl265073265122%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e265071265115%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl265073265122%_))
                                                 (let ((_%e265074265125%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl265073265122%_))))
                                                   (let ((_%hd265075265129%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e265074265125%_)))
                                                         (_%tl265076265132%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e265074265125%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl265076265132%_))
                                                         (_%loop265063265095%_
                                                          _%lp-tl265066265112%_
                                                          (cons _%hd265075265129%_
                                                                _%sig265067265102%_)
                                                          (cons _%hd265072265119%_
                                                                _%arity265068265103%_))
                                                         (_%g265056265082%_
                                                          _%g265057265086%_))))
                                                 (_%g265056265082%_
                                                  _%g265057265086%_))))
                                         (_%g265056265082%_
                                          _%g265057265086%_))))
                                 (let ((_%sig265069265135%_
                                        (reverse _%sig265067265102%_))
                                       (_%arity265070265137%_
                                        (reverse _%arity265068265103%_)))
                                   ((lambda (_%g265058265139%_
                                             _%g265059265141%_)
                                      (let* ((_%g265158265166%_
                                              (lambda (_%g265159265162%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g265159265162%_))))
                                             (_%g265157265821%_
                                              (lambda (_%g265159265170%_)
                                                ((lambda (_%g265160265173%_)
                                                   (let* ((_%g265186265194%_
                                                           (lambda (_%g265187265190%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g265187265190%_))))
                  (_%g265185265216%_
                   (lambda (_%g265187265198%_)
                     ((lambda (_%g265188265201%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g265160265173%_
                                    (cons _%g265188265201%_ '()))))
                      _%g265187265198%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265185265216%_
                                                      (let ((_g266993_
                                                             (let _%loop265220%_ ((_%rest265223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures265053%_)
                                          (_%unchecked-proc265225%_ '#f)
                                          (_%unchecked-clauses265226%_ '()))
                       (let* ((_%rest265227265235%_ _%rest265223%_)
                              (_%else265229265247%_
                               (lambda ()
                                 (values _%unchecked-proc265225%_
                                         (reverse!
                                          _%unchecked-clauses265226%_))))
                              (_%K265231265688%_
                               (lambda (_%rest265251%_ _%hd265253%_)
                                 (let* ((_%g265255265342%_
                                         (lambda (_%g265256265338%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g265256265338%_))))
                                        (_%g265254265684%_
                                         (lambda (_%g265256265346%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g265256265346%_))
                                               (let ((_%e265263265349%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g265256265346%_))))
                                                 (let ((_%hd265264265353%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265263265349%_)))
                                                       (_%tl265265265356%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265263265349%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl265265265356%_))
                                                       (let ((_%e265266265359%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl265265265356%_))))
                 (let ((_%hd265267265363%_
                        (let ()
                          (declare (not safe))
                          (##car _%e265266265359%_)))
                       (_%tl265268265366%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e265266265359%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd265267265363%_))
                       (let ((_%e265269265369%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd265267265363%_))))
                         (let ((_%hd265270265373%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e265269265369%_)))
                               (_%tl265271265376%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e265269265369%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl265271265376%_))
                               (let ((_%e265272265379%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl265271265376%_))))
                                 (let ((_%hd265273265383%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e265272265379%_)))
                                       (_%tl265274265386%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e265272265379%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd265273265383%_))
                                       (let ((_%e265275265389%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd265273265383%_))))
                                         (if (equal? _%e265275265389%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl265274265386%_))
                                                 (let ((_%e265276265393%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl265274265386%_))))
                                                   (let ((_%hd265277265397%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e265276265393%_)))
                                                         (_%tl265278265400%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e265276265393%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd265277265397%_))
                                                         (let ((_%e265279265403%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd265277265397%_))))
                   (let ((_%hd265280265407%_
                          (let ()
                            (declare (not safe))
                            (##car _%e265279265403%_)))
                         (_%tl265281265410%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e265279265403%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd265280265407%_))
                         (if (let ((__tmp266995 |gxc[1]#_g266996_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp266995
                                _%hd265280265407%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl265281265410%_))
                                 (let ((_%e265282265413%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl265281265410%_))))
                                   (let ((_%hd265283265417%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265282265413%_)))
                                         (_%tl265284265420%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265282265413%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl265284265420%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl265278265400%_))
                                             (let ((_%e265285265423%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl265278265400%_))))
                                               (let ((_%hd265286265427%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e265285265423%_)))
                                                     (_%tl265287265430%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e265285265423%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd265286265427%_))
                                                     (let ((_%e265288265433%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd265286265427%_))))
                                                       (if (equal? _%e265288265433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl265287265430%_))
                       (let ((_%e265289265437%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl265287265430%_))))
                         (let ((_%hd265290265441%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e265289265437%_)))
                               (_%tl265291265444%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e265289265437%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd265290265441%_))
                               (let ((_%e265292265447%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd265290265441%_))))
                                 (let ((_%hd265293265451%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e265292265447%_)))
                                       (_%tl265294265454%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e265292265447%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd265293265451%_))
                                       (if (let ((__tmp266997
                                                  |gxc[1]#_g266998_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp266997
                                              _%hd265293265451%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl265294265454%_))
                                               (let ((_%e265295265457%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl265294265454%_))))
                                                 (let ((_%hd265296265461%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265295265457%_)))
                                                       (_%tl265297265464%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265295265457%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl265297265464%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl265291265444%_))
                                                           (let ((_%e265298265467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl265291265444%_))))
                     (let ((_%hd265299265471%_
                            (let ()
                              (declare (not safe))
                              (##car _%e265298265467%_)))
                           (_%tl265300265474%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e265298265467%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd265299265471%_))
                           (let ((_%e265301265477%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd265299265471%_))))
                             (if (equal? _%e265301265477%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl265300265474%_))
                                     (let ((_%e265302265481%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl265300265474%_))))
                                       (let ((_%hd265303265485%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e265302265481%_)))
                                             (_%tl265304265488%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e265302265481%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd265303265485%_))
                                             (let ((_%e265305265491%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd265303265485%_))))
                                               (let ((_%hd265306265495%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e265305265491%_)))
                                                     (_%tl265307265498%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e265305265491%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd265306265495%_))
                                                     (if (let ((__tmp266999
                                                                |gxc[1]#_g267000_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp266999
                                                            _%hd265306265495%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl265307265498%_))
                     (let ((_%e265308265501%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl265307265498%_))))
                       (let ((_%hd265309265505%_
                              (let ()
                                (declare (not safe))
                                (##car _%e265308265501%_)))
                             (_%tl265310265508%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e265308265501%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl265310265508%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl265304265488%_))
                                 (let ((_%e265311265511%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl265304265488%_))))
                                   (let ((_%hd265312265515%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265311265511%_)))
                                         (_%tl265313265518%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265311265511%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd265312265515%_))
                                         (let ((_%e265314265521%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd265312265515%_))))
                                           (if (equal? _%e265314265521%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl265313265518%_))
                                                   (let ((_%e265315265525%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl265313265518%_))))
                                                     (let ((_%hd265316265529%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e265315265525%_)))
                                                           (_%tl265317265532%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e265315265525%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd265316265529%_))
                                                           (let ((_%e265318265535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd265316265529%_))))
                     (let ((_%hd265319265539%_
                            (let ()
                              (declare (not safe))
                              (##car _%e265318265535%_)))
                           (_%tl265320265542%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e265318265535%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd265319265539%_))
                           (if (let ((__tmp267001 |gxc[1]#_g267002_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp267001
                                  _%hd265319265539%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl265320265542%_))
                                   (let ((_%e265321265545%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl265320265542%_))))
                                     (let ((_%hd265322265549%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e265321265545%_)))
                                           (_%tl265323265552%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e265321265545%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl265323265552%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl265317265532%_))
                                               (let ((_%e265324265555%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl265317265532%_))))
                                                 (let ((_%hd265325265559%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265324265555%_)))
                                                       (_%tl265326265562%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265324265555%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd265325265559%_))
                                                       (let ((_%e265327265565%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd265325265559%_))))
                 (if (equal? _%e265327265565%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl265326265562%_))
                         (let ((_%e265328265569%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl265326265562%_))))
                           (let ((_%hd265329265573%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e265328265569%_)))
                                 (_%tl265330265576%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e265328265569%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd265329265573%_))
                                 (let ((_%e265331265579%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd265329265573%_))))
                                   (let ((_%hd265332265583%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265331265579%_)))
                                         (_%tl265333265586%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265331265579%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd265332265583%_))
                                         (if (let ((__tmp267003
                                                    |gxc[1]#_g267004_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp267003
                                                _%hd265332265583%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl265333265586%_))
                                                 (let ((_%e265334265589%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl265333265586%_))))
                                                   (let ((_%hd265335265593%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e265334265589%_)))
                                                         (_%tl265336265596%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e265334265589%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl265336265596%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl265330265576%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl265268265366%_))
                         ((lambda (_%g265257265599%_
                                   _%g265258265601%_
                                   _%g265259265602%_
                                   _%g265260265603%_
                                   _%g265261265604%_
                                   _%g265262265605%_)
                            (let ((_%clause265676%_
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
                                                     (cons _%g265262265605%_
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
                                                 (cons _%g265260265603%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265257265599%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked265678%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g265258265601%_))))
                              (_%loop265220%_
                               _%rest265251%_
                               (let ((_%$e265680%_ _%unchecked265678%_))
                                 (if _%$e265680%_
                                     _%$e265680%_
                                     _%unchecked-proc265225%_))
                               (cons _%clause265676%_
                                     _%unchecked-clauses265226%_))))
                          _%hd265335265593%_
                          _%hd265322265549%_
                          _%hd265309265505%_
                          _%hd265296265461%_
                          _%hd265283265417%_
                          _%hd265264265353%_)
                         (_%g265255265342%_ _%g265256265346%_))
                     (_%g265255265342%_ _%g265256265346%_))
                 (_%g265255265342%_ _%g265256265346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g265255265342%_
                                                  _%g265256265346%_))
                                             (_%g265255265342%_
                                              _%g265256265346%_))
                                         (_%g265255265342%_
                                          _%g265256265346%_))))
                                 (_%g265255265342%_ _%g265256265346%_))))
                         (_%g265255265342%_ _%g265256265346%_))
                     (_%g265255265342%_ _%g265256265346%_)))
               (_%g265255265342%_ _%g265256265346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265255265342%_
                                                _%g265256265346%_))
                                           (_%g265255265342%_
                                            _%g265256265346%_))))
                                   (_%g265255265342%_ _%g265256265346%_))
                               (_%g265255265342%_ _%g265256265346%_))
                           (_%g265255265342%_ _%g265256265346%_))))
                   (_%g265255265342%_ _%g265256265346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g265255265342%_
                                                    _%g265256265346%_))
                                               (_%g265255265342%_
                                                _%g265256265346%_)))
                                         (_%g265255265342%_
                                          _%g265256265346%_))))
                                 (_%g265255265342%_ _%g265256265346%_))
                             (_%g265255265342%_ _%g265256265346%_))))
                     (_%g265255265342%_ _%g265256265346%_))
                 (_%g265255265342%_ _%g265256265346%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265255265342%_
                                                      _%g265256265346%_))))
                                             (_%g265255265342%_
                                              _%g265256265346%_))))
                                     (_%g265255265342%_ _%g265256265346%_))
                                 (_%g265255265342%_ _%g265256265346%_)))
                           (_%g265255265342%_ _%g265256265346%_))))
                   (_%g265255265342%_ _%g265256265346%_))
               (_%g265255265342%_ _%g265256265346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265255265342%_
                                                _%g265256265346%_))
                                           (_%g265255265342%_
                                            _%g265256265346%_))
                                       (_%g265255265342%_ _%g265256265346%_))))
                               (_%g265255265342%_ _%g265256265346%_))))
                       (_%g265255265342%_ _%g265256265346%_))
                   (_%g265255265342%_ _%g265256265346%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265255265342%_
                                                      _%g265256265346%_))))
                                             (_%g265255265342%_
                                              _%g265256265346%_))
                                         (_%g265255265342%_
                                          _%g265256265346%_))))
                                 (_%g265255265342%_ _%g265256265346%_))
                             (_%g265255265342%_ _%g265256265346%_))
                         (_%g265255265342%_ _%g265256265346%_))))
                 (_%g265255265342%_ _%g265256265346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g265255265342%_
                                                  _%g265256265346%_))
                                             (_%g265255265342%_
                                              _%g265256265346%_)))
                                       (_%g265255265342%_ _%g265256265346%_))))
                               (_%g265255265342%_ _%g265256265346%_))))
                       (_%g265255265342%_ _%g265256265346%_))))
               (_%g265255265342%_ _%g265256265346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265255265342%_
                                                _%g265256265346%_)))))
                                   (_%g265254265684%_ _%hd265253%_)))))
                         (if (pair? _%rest265227265235%_)
                             (let ((_%hd265232265692%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest265227265235%_)))
                                   (_%tl265233265695%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest265227265235%_))))
                               (let* ((_%hd265698%_ _%hd265232265692%_)
                                      (_%rest265701%_ _%tl265233265695%_))
                                 (_%K265231265688%_
                                  _%rest265701%_
                                  _%hd265698%_)))
                             (_%else265229265247%_))))))
                (begin
                  (let ((_g266994_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g266993_)
                               (##values-length _g266993_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g266994_ 2)))
                        (error "Context expects 2 values" _g266994_)))
                  (let ((_%unchecked-proc265704%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g266993_ 0)))
                        (_%unchecked-clauses265706%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g266993_ 1))))
                    (if _%unchecked-proc265704%_
                        (let* ((_%g265708265732%_
                                (lambda (_%g265709265728%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g265709265728%_))))
                               (_%g265707265817%_
                                (lambda (_%g265709265736%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g265709265736%_))
                                      (let ((_%e265712265739%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g265709265736%_))))
                                        (let ((_%hd265713265743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265712265739%_)))
                                              (_%tl265714265746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265712265739%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl265714265746%_))
                                              (let ((_%e265715265749%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl265714265746%_))))
                                                (let ((_%hd265716265753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e265715265749%_)))
                                                      (_%tl265717265756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e265715265749%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd265716265753%_))
                                                      (let ((_g267005_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd265716265753%_ '0))))
                (begin
                  (let ((_g267006_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g267005_)
                               (##values-length _g267005_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g267006_ 2)))
                        (error "Context expects 2 values" _g267006_)))
                  (let ((_%target265718265759%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g267005_ 0)))
                        (_%tl265720265762%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g267005_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl265720265762%_))
                        (letrec ((_%loop265721265765%_
                                  (lambda (_%hd265719265769%_
                                           _%clause265725265772%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd265719265769%_))
                                        (let ((_%e265722265774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd265719265769%_))))
                                          (let ((_%lp-hd265723265778%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e265722265774%_)))
                                                (_%lp-tl265724265781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e265722265774%_))))
                                            (_%loop265721265765%_
                                             _%lp-tl265724265781%_
                                             (cons _%lp-hd265723265778%_
                                                   _%clause265725265772%_))))
                                        (let ((_%clause265726265784%_
                                               (reverse _%clause265725265772%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265717265756%_))
                                              ((lambda (_%g265710265787%_
                                                        _%g265711265789%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g265711265789%_
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
                                             (let ((__tmp267007
                                                    (lambda (_%g265808265811%_
                                                             _%g265809265814%_)
                                                      (cons _%g265808265811%_
                                                            _%g265809265814%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp267007
                                                '()
                                                _%g265710265787%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause265726265784%_
                                               _%hd265713265743%_)
                                              (_%g265708265732%_
                                               _%g265709265736%_)))))))
                          (_%loop265721265765%_ _%target265718265759%_ '()))
                        (_%g265708265732%_ _%g265709265736%_)))))
              (_%g265708265732%_ _%g265709265736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g265708265732%_
                                               _%g265709265736%_))))
                                      (_%g265708265732%_ _%g265709265736%_)))))
                          (_%g265707265817%_
                           (list _%unchecked-proc265704%_
                                 _%unchecked-clauses265706%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g265159265170%_))))
                                        (_%g265157265821%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g264944265022%_
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
                                          _%g265058265139%_
                                          _%g265059265141%_))
                                       (let ((__tmp267008
                                              (lambda (_%g265824265828%_
                                                       _%g265825265831%_
                                                       _%g265826265833%_)
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
                                (cons _%g265825265831%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g265824265828%_ '())))))
              _%g265826265833%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__1
                                          __tmp267008
                                          '()
                                          _%g265058265139%_
                                          _%g265059265141%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig265069265135%_
                                    _%arity265070265137%_))))))
                   (_%loop265063265095%_ _%target265060265089%_ '() '()))
                 (_%g265056265082%_ _%g265057265086%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265056265082%_
                                                _%g265057265086%_)))))
                                   (_%g265055265836%_ _%signatures265053%_))
                                 (_%g264941264965%_ _%g264942264969%_)))
                           _%case-signature264959265017%_
                           _%hd264949264986%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop264954264998%_
                                                   _%target264951264992%_
                                                   '()))
                                                (_%g264941264965%_
                                                 _%g264942264969%_)))))
                                      (_%g264941264965%_ _%g264942264969%_))))
                              (_%g264941264965%_ _%g264942264969%_))))
                      (_%g264941264965%_ _%g264942264969%_)))))
          (_%g264940265840%_ _%stx264938%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx265848%_)
        (let* ((_%__stx266828266829%_ _%$stx265848%_)
               (_%g265854265914%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266828266829%_)))))
          (let ((_%__kont266831266832%_
                 (lambda (_%g265856266136%_ _%g265857266138%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g265857266138%_ '()))
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
                                                       (cons _%g265857266138%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265856266136%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont266833266834%_
                 (lambda (_%g265871266061%_
                          _%g265872266063%_
                          _%g265873266064%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g265873266064%_ '()))
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
                                                       (cons _%g265873266064%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265872266063%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g265871266061%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont266835266836%_
                 (lambda (_%g265890265975%_
                          _%g265891265977%_
                          _%g265892265978%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g265892265978%_ '()))
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
                                                       (cons _%g265892265978%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265891265977%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g265890265975%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx266828266829%_))
                (let ((_%e265858266092%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx266828266829%_))))
                  (let ((_%tl265860266099%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265858266092%_)))
                        (_%hd265859266096%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265858266092%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl265860266099%_))
                        (let ((_%e265861266102%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl265860266099%_))))
                          (let ((_%tl265863266109%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265861266102%_)))
                                (_%hd265862266106%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265861266102%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd265862266106%_))
                                (let ((_%e265864266112%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd265862266106%_))))
                                  (if (equal? _%e265864266112%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl265863266109%_))
                                          (let ((_%e265865266116%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl265863266109%_))))
                                            (let ((_%tl265867266123%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e265865266116%_)))
                                                  (_%hd265866266120%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e265865266116%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl265867266123%_))
                                                  (let ((_%e265868266126%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl265867266123%_))))
                                                    (let ((_%tl265870266133%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e265868266126%_)))
                                                          (_%hd265869266130%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e265868266126%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl265870266133%_))
                                                          (_%__kont266831266832%_
                                                           _%hd265869266130%_
                                                           _%hd265866266120%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g265854265914%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g265854265914%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g265854265914%_)))
                                      (if (equal? _%e265864266112%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl265863266109%_))
                                              (let ((_%e265881266031%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl265863266109%_))))
                                                (let ((_%tl265883266038%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e265881266031%_)))
                                                      (_%hd265882266035%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e265881266031%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl265883266038%_))
                                                      (let ((_%e265884266041%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl265883266038%_))))
                (let ((_%tl265886266048%_
                       (let () (declare (not safe)) (##cdr _%e265884266041%_)))
                      (_%hd265885266045%_
                       (let ()
                         (declare (not safe))
                         (##car _%e265884266041%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl265886266048%_))
                      (let ((_%e265887266051%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl265886266048%_))))
                        (let ((_%tl265889266058%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265887266051%_)))
                              (_%hd265888266055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265887266051%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl265889266058%_))
                              (_%__kont266833266834%_
                               _%hd265888266055%_
                               _%hd265885266045%_
                               _%hd265882266035%_)
                              (let ()
                                (declare (not safe))
                                (_%g265854265914%_)))))
                      (let () (declare (not safe)) (_%g265854265914%_)))))
              (let () (declare (not safe)) (_%g265854265914%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g265854265914%_)))
                                          (if (equal? _%e265864266112%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl265863266109%_))
                                                  (let ((_%e265900265945%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl265863266109%_))))
                                                    (let ((_%tl265902265952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e265900265945%_)))
                                                          (_%hd265901265949%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e265900265945%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl265902265952%_))
                                                          (let ((_%e265903265955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl265902265952%_))))
                    (let ((_%tl265905265962%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e265903265955%_)))
                          (_%hd265904265959%_
                           (let ()
                             (declare (not safe))
                             (##car _%e265903265955%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl265905265962%_))
                          (let ((_%e265906265965%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl265905265962%_))))
                            (let ((_%tl265908265972%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e265906265965%_)))
                                  (_%hd265907265969%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e265906265965%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl265908265972%_))
                                  (_%__kont266835266836%_
                                   _%hd265907265969%_
                                   _%hd265904265959%_
                                   _%hd265901265949%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g265854265914%_)))))
                          (let () (declare (not safe)) (_%g265854265914%_)))))
                  (let () (declare (not safe)) (_%g265854265914%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g265854265914%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g265854265914%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g265854265914%_)))))
                        (let () (declare (not safe)) (_%g265854265914%_)))))
                (let () (declare (not safe)) (_%g265854265914%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx266160%_)
        (let* ((_%g266164266184%_
                (lambda (_%g266165266180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g266165266180%_))))
               (_%g266163266253%_
                (lambda (_%g266165266188%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g266165266188%_))
                      (let ((_%e266167266191%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g266165266188%_))))
                        (let ((_%hd266168266195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e266167266191%_)))
                              (_%tl266169266198%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e266167266191%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl266169266198%_))
                              (let ((_g267009_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl266169266198%_
                                        '0))))
                                (begin
                                  (let ((_g267010_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267009_)
                                               (##values-length _g267009_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267010_ 2)))
                                        (error "Context expects 2 values"
                                               _g267010_)))
                                  (let ((_%target266170266201%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267009_ 0)))
                                        (_%tl266172266204%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267009_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl266172266204%_))
                                        (letrec ((_%loop266173266207%_
                                                  (lambda (_%hd266171266211%_
                                                           _%decl266177266214%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd266171266211%_))
                                                        (let ((_%e266174266216%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd266171266211%_))))
                  (let ((_%lp-hd266175266220%_
                         (let ()
                           (declare (not safe))
                           (##car _%e266174266216%_)))
                        (_%lp-tl266176266223%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e266174266216%_))))
                    (_%loop266173266207%_
                     _%lp-tl266176266223%_
                     (cons _%lp-hd266175266220%_ _%decl266177266214%_))))
                (let ((_%decl266178266226%_ (reverse _%decl266177266214%_)))
                  ((lambda (_%g266166266229%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp267011
                                  (lambda (_%g266244266247%_ _%g266245266250%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g266244266247%_)
                                          _%g266245266250%_))))
                             (declare (not safe))
                             (foldr__0 __tmp267011 '() _%g266166266229%_))))
                   _%decl266178266226%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop266173266207%_
                                           _%target266170266201%_
                                           '()))
                                        (_%g266164266184%_
                                         _%g266165266188%_)))))
                              (_%g266164266184%_ _%g266165266188%_))))
                      (_%g266164266184%_ _%g266165266188%_)))))
          (_%g266163266253%_ _%$stx266160%_))))))
