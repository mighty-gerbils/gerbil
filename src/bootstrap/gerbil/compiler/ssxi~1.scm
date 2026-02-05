(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g232886_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232893_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232895_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232897_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232899_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232901_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232913_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232915_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232917_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232919_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232921_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx226344%_)
        (let* ((_%g226348226366%_
                (lambda (_%g226349226362%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226349226362%_))))
               (_%g226347226421%_
                (lambda (_%g226349226370%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226349226370%_))
                      (let ((_%e226352226373%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226349226370%_))))
                        (let ((_%hd226353226377%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226352226373%_)))
                              (_%tl226354226380%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226352226373%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226354226380%_))
                              (let ((_%e226355226383%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226354226380%_))))
                                (let ((_%hd226356226387%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226355226383%_)))
                                      (_%tl226357226390%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226355226383%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226357226390%_))
                                      (let ((_%e226358226393%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226357226390%_))))
                                        (let ((_%hd226359226397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226358226393%_)))
                                              (_%tl226360226400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226358226393%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226360226400%_))
                                              ((lambda (_%g226350226403%_
                                                        _%g226351226405%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g226351226405%_))
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
                               (cons _%g226351226405%_ '()))
                         (cons _%g226350226403%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g226348226366%_
                                                      _%g226349226370%_)))
                                               _%hd226359226397%_
                                               _%hd226356226387%_)
                                              (_%g226348226366%_
                                               _%g226349226370%_))))
                                      (_%g226348226366%_ _%g226349226370%_))))
                              (_%g226348226366%_ _%g226349226370%_))))
                      (_%g226348226366%_ _%g226349226370%_)))))
          (_%g226347226421%_ _%$stx226344%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx226425%_)
        (let* ((_%g226429226447%_
                (lambda (_%g226430226443%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226430226443%_))))
               (_%g226428226502%_
                (lambda (_%g226430226451%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226430226451%_))
                      (let ((_%e226433226454%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226430226451%_))))
                        (let ((_%hd226434226458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226433226454%_)))
                              (_%tl226435226461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226433226454%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226435226461%_))
                              (let ((_%e226436226464%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226435226461%_))))
                                (let ((_%hd226437226468%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226436226464%_)))
                                      (_%tl226438226471%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226436226464%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226438226471%_))
                                      (let ((_%e226439226474%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226438226471%_))))
                                        (let ((_%hd226440226478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226439226474%_)))
                                              (_%tl226441226481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226439226474%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226441226481%_))
                                              ((lambda (_%g226431226484%_
                                                        _%g226432226486%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g226432226486%_))
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
                               (cons _%g226432226486%_ '()))
                         (cons _%g226431226484%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g226429226447%_
                                                      _%g226430226451%_)))
                                               _%hd226440226478%_
                                               _%hd226437226468%_)
                                              (_%g226429226447%_
                                               _%g226430226451%_))))
                                      (_%g226429226447%_ _%g226430226451%_))))
                              (_%g226429226447%_ _%g226430226451%_))))
                      (_%g226429226447%_ _%g226430226451%_)))))
          (_%g226428226502%_ _%$stx226425%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx226506%_)
        (let* ((_%g226510226539%_
                (lambda (_%g226511226535%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226511226535%_))))
               (_%g226509226635%_
                (lambda (_%g226511226543%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226511226543%_))
                      (let ((_%e226514226546%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226511226543%_))))
                        (let ((_%hd226515226550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226514226546%_)))
                              (_%tl226516226553%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226514226546%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl226516226553%_))
                              (let ((_g232864_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl226516226553%_
                                        '0))))
                                (begin
                                  (let ((_g232865_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232864_)
                                               (##values-length _g232864_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232865_ 2)))
                                        (error "Context expects 2 values"
                                               _g232865_)))
                                  (let ((_%target226517226556%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232864_ 0)))
                                        (_%tl226519226559%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232864_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226519226559%_))
                                        (letrec ((_%loop226520226562%_
                                                  (lambda (_%hd226518226566%_
                                                           _%type226524226569%_
                                                           _%symbol226525226570%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd226518226566%_))
                                                        (let ((_%e226521226572%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd226518226566%_))))
                  (let ((_%lp-hd226522226576%_
                         (let ()
                           (declare (not safe))
                           (##car _%e226521226572%_)))
                        (_%lp-tl226523226579%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e226521226572%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd226522226576%_))
                        (let ((_%e226528226582%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd226522226576%_))))
                          (let ((_%hd226529226586%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226528226582%_)))
                                (_%tl226530226589%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226528226582%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226530226589%_))
                                (let ((_%e226531226592%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl226530226589%_))))
                                  (let ((_%hd226532226596%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226531226592%_)))
                                        (_%tl226533226599%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226531226592%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226533226599%_))
                                        (_%loop226520226562%_
                                         _%lp-tl226523226579%_
                                         (cons _%hd226532226596%_
                                               _%type226524226569%_)
                                         (cons _%hd226529226586%_
                                               _%symbol226525226570%_))
                                        (_%g226510226539%_
                                         _%g226511226543%_))))
                                (_%g226510226539%_ _%g226511226543%_))))
                        (_%g226510226539%_ _%g226511226543%_))))
                (let ((_%type226526226602%_ (reverse _%type226524226569%_))
                      (_%symbol226527226604%_
                       (reverse _%symbol226525226570%_)))
                  ((lambda (_%g226512226606%_ _%g226513226608%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g226512226606%_
                                _%g226513226608%_))
                             (let ((__tmp232866
                                    (lambda (_%g226623226627%_
                                             _%g226624226630%_
                                             _%g226625226632%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g226624226630%_
                                                        (cons _%g226623226627%_
                                                              '())))
                                            _%g226625226632%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp232866
                                '()
                                _%g226512226606%_
                                _%g226513226608%_)))))
                   _%type226526226602%_
                   _%symbol226527226604%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop226520226562%_
                                           _%target226517226556%_
                                           '()
                                           '()))
                                        (_%g226510226539%_
                                         _%g226511226543%_)))))
                              (_%g226510226539%_ _%g226511226543%_))))
                      (_%g226510226539%_ _%g226511226543%_)))))
          (_%g226509226635%_ _%$stx226506%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx226640%_)
        (let* ((_%__stx232175232176%_ _%$stx226640%_)
               (_%g226645226687%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232175232176%_)))))
          (let ((_%__kont232178232179%_
                 (lambda (_%g226647226815%_
                          _%g226648226817%_
                          _%g226649226818%_
                          _%g226650226819%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g226650226819%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g226649226818%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g226648226817%_ '()))
                                           (cons _%g226647226815%_ '())))))))
                (_%__kont232180232181%_
                 (lambda (_%g226666226734%_
                          _%g226667226736%_
                          _%g226668226737%_
                          _%g226669226738%_)
                   (cons _%g226669226738%_
                         (cons _%g226668226737%_
                               (cons _%g226667226736%_
                                     (cons _%g226666226734%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match232214232215%_
                   (lambda (_%e226651226765%_
                            _%hd226652226769%_
                            _%tl226653226772%_
                            _%e226654226775%_
                            _%hd226655226779%_
                            _%tl226656226782%_
                            _%e226657226785%_
                            _%hd226658226789%_
                            _%tl226659226792%_
                            _%e226660226795%_
                            _%hd226661226799%_
                            _%tl226662226802%_
                            _%e226663226805%_
                            _%hd226664226809%_
                            _%tl226665226812%_)
                     (let ((_%g226647226815%_ _%hd226664226809%_)
                           (_%g226648226817%_ _%hd226661226799%_)
                           (_%g226649226818%_ _%hd226658226789%_)
                           (_%g226650226819%_ _%hd226655226779%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226650226819%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226649226818%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226648226817%_)))
                           (_%__kont232178232179%_
                            _%g226647226815%_
                            _%g226648226817%_
                            _%g226649226818%_
                            _%g226650226819%_)
                           (let ()
                             (declare (not safe))
                             (_%g226645226687%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232175232176%_))
                  (let ((_%e226651226765%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232175232176%_))))
                    (let ((_%tl226653226772%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e226651226765%_)))
                          (_%hd226652226769%_
                           (let ()
                             (declare (not safe))
                             (##car _%e226651226765%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226653226772%_))
                          (let ((_%e226654226775%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl226653226772%_))))
                            (let ((_%tl226656226782%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226654226775%_)))
                                  (_%hd226655226779%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226654226775%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl226656226782%_))
                                  (let ((_%e226657226785%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl226656226782%_))))
                                    (let ((_%tl226659226792%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e226657226785%_)))
                                          (_%hd226658226789%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e226657226785%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl226659226792%_))
                                          (let ((_%e226660226795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl226659226792%_))))
                                            (let ((_%tl226662226802%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e226660226795%_)))
                                                  (_%hd226661226799%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e226660226795%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl226662226802%_))
                                                  (let ((_%e226663226805%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl226662226802%_))))
                                                    (let ((_%tl226665226812%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e226663226805%_)))
                                                          (_%hd226664226809%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e226663226805%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl226665226812%_))
                                                          (_%__match232214232215%_
                                                           _%e226651226765%_
                                                           _%hd226652226769%_
                                                           _%tl226653226772%_
                                                           _%e226654226775%_
                                                           _%hd226655226779%_
                                                           _%tl226656226782%_
                                                           _%e226657226785%_
                                                           _%hd226658226789%_
                                                           _%tl226659226792%_
                                                           _%e226660226795%_
                                                           _%hd226661226799%_
                                                           _%tl226662226802%_
                                                           _%e226663226805%_
                                                           _%hd226664226809%_
                                                           _%tl226665226812%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g226645226687%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl226662226802%_))
                                                      (_%__kont232180232181%_
                                                       _%hd226661226799%_
                                                       _%hd226658226789%_
                                                       _%hd226655226779%_
                                                       _%hd226652226769%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g226645226687%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g226645226687%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g226645226687%_)))))
                          (let () (declare (not safe)) (_%g226645226687%_)))))
                  (let () (declare (not safe)) (_%g226645226687%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx226844%_)
        (let* ((_%g226848226883%_
                (lambda (_%g226849226879%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226849226879%_))))
               (_%g226847226996%_
                (lambda (_%g226849226887%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226849226887%_))
                      (let ((_%e226853226890%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226849226887%_))))
                        (let ((_%hd226854226894%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226853226890%_)))
                              (_%tl226855226897%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226853226890%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl226855226897%_))
                              (let ((_g232867_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl226855226897%_
                                        '0))))
                                (begin
                                  (let ((_g232868_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232867_)
                                               (##values-length _g232867_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232868_ 2)))
                                        (error "Context expects 2 values"
                                               _g232868_)))
                                  (let ((_%target226856226900%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232867_ 0)))
                                        (_%tl226858226903%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232867_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226858226903%_))
                                        (letrec ((_%loop226859226906%_
                                                  (lambda (_%hd226857226910%_
                                                           _%symbol226863226913%_
                                                           _%method226864226914%_
                                                           _%type-t226865226915%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd226857226910%_))
                                                        (let ((_%e226860226917%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd226857226910%_))))
                  (let ((_%lp-hd226861226921%_
                         (let ()
                           (declare (not safe))
                           (##car _%e226860226917%_)))
                        (_%lp-tl226862226924%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e226860226917%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd226861226921%_))
                        (let ((_%e226869226927%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd226861226921%_))))
                          (let ((_%hd226870226931%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226869226927%_)))
                                (_%tl226871226934%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226869226927%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226871226934%_))
                                (let ((_%e226872226937%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl226871226934%_))))
                                  (let ((_%hd226873226941%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226872226937%_)))
                                        (_%tl226874226944%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226872226937%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl226874226944%_))
                                        (let ((_%e226875226947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl226874226944%_))))
                                          (let ((_%hd226876226951%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e226875226947%_)))
                                                (_%tl226877226954%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e226875226947%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl226877226954%_))
                                                (_%loop226859226906%_
                                                 _%lp-tl226862226924%_
                                                 (cons _%hd226876226951%_
                                                       _%symbol226863226913%_)
                                                 (cons _%hd226873226941%_
                                                       _%method226864226914%_)
                                                 (cons _%hd226870226931%_
                                                       _%type-t226865226915%_))
                                                (_%g226848226883%_
                                                 _%g226849226887%_))))
                                        (_%g226848226883%_
                                         _%g226849226887%_))))
                                (_%g226848226883%_ _%g226849226887%_))))
                        (_%g226848226883%_ _%g226849226887%_))))
                (let ((_%symbol226866226957%_ (reverse _%symbol226863226913%_))
                      (_%method226867226959%_ (reverse _%method226864226914%_))
                      (_%type-t226868226960%_
                       (reverse _%type-t226865226915%_)))
                  ((lambda (_%g226850226962%_
                            _%g226851226964%_
                            _%g226852226965%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g226850226962%_
                                _%g226851226964%_
                                _%g226852226965%_))
                             (let ((__tmp232869
                                    (lambda (_%g226981226986%_
                                             _%g226982226989%_
                                             _%g226983226991%_
                                             _%g226984226993%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g226983226991%_
                                                        (cons _%g226982226989%_
                                                              (cons _%g226981226986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g226984226993%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp232869
                                '()
                                _%g226850226962%_
                                _%g226851226964%_
                                _%g226852226965%_)))))
                   _%symbol226866226957%_
                   _%method226867226959%_
                   _%type-t226868226960%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop226859226906%_
                                           _%target226856226900%_
                                           '()
                                           '()
                                           '()))
                                        (_%g226848226883%_
                                         _%g226849226887%_)))))
                              (_%g226848226883%_ _%g226849226887%_))))
                      (_%g226848226883%_ _%g226849226887%_)))))
          (_%g226847226996%_ _%$stx226844%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx227001%_)
        (let* ((_%g227005227038%_
                (lambda (_%g227006227034%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227006227034%_))))
               (_%g227004227148%_
                (lambda (_%g227006227042%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227006227042%_))
                      (let ((_%e227010227045%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227006227042%_))))
                        (let ((_%hd227011227049%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227010227045%_)))
                              (_%tl227012227052%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227010227045%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227012227052%_))
                              (let ((_%e227013227055%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227012227052%_))))
                                (let ((_%hd227014227059%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227013227055%_)))
                                      (_%tl227015227062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227013227055%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl227015227062%_))
                                      (let ((_g232870_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl227015227062%_
                                                '0))))
                                        (begin
                                          (let ((_g232871_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232870_)
                                                       (##values-length
                                                        _g232870_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232871_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232871_)))
                                          (let ((_%target227016227065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232870_ 0)))
                                                (_%tl227018227068%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232870_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl227018227068%_))
                                                (letrec ((_%loop227019227071%_
                                                          (lambda (_%hd227017227075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol227023227078%_
                           _%method227024227079%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd227017227075%_))
                        (let ((_%e227020227081%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd227017227075%_))))
                          (let ((_%lp-hd227021227085%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227020227081%_)))
                                (_%lp-tl227022227088%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227020227081%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd227021227085%_))
                                (let ((_%e227027227091%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd227021227085%_))))
                                  (let ((_%hd227028227095%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227027227091%_)))
                                        (_%tl227029227098%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227027227091%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl227029227098%_))
                                        (let ((_%e227030227101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl227029227098%_))))
                                          (let ((_%hd227031227105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e227030227101%_)))
                                                (_%tl227032227108%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e227030227101%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl227032227108%_))
                                                (_%loop227019227071%_
                                                 _%lp-tl227022227088%_
                                                 (cons _%hd227031227105%_
                                                       _%symbol227023227078%_)
                                                 (cons _%hd227028227095%_
                                                       _%method227024227079%_))
                                                (_%g227005227038%_
                                                 _%g227006227042%_))))
                                        (_%g227005227038%_
                                         _%g227006227042%_))))
                                (_%g227005227038%_ _%g227006227042%_))))
                        (let ((_%symbol227025227111%_
                               (reverse _%symbol227023227078%_))
                              (_%method227026227113%_
                               (reverse _%method227024227079%_)))
                          ((lambda (_%g227007227115%_
                                    _%g227008227117%_
                                    _%g227009227118%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g227007227115%_
                                        _%g227008227117%_))
                                     (let ((__tmp232872
                                            (lambda (_%g227136227140%_
                                                     _%g227137227143%_
                                                     _%g227138227145%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g227009227118%_
                                                                (cons _%g227137227143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g227136227140%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g227138227145%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp232872
                                        '()
                                        _%g227007227115%_
                                        _%g227008227117%_)))))
                           _%symbol227025227111%_
                           _%method227026227113%_
                           _%hd227014227059%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop227019227071%_
                                                   _%target227016227065%_
                                                   '()
                                                   '()))
                                                (_%g227005227038%_
                                                 _%g227006227042%_)))))
                                      (_%g227005227038%_ _%g227006227042%_))))
                              (_%g227005227038%_ _%g227006227042%_))))
                      (_%g227005227038%_ _%g227006227042%_)))))
          (_%g227004227148%_ _%$stx227001%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx227153%_)
        (let* ((_%g227157227171%_
                (lambda (_%g227158227167%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227158227167%_))))
               (_%g227156227212%_
                (lambda (_%g227158227175%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227158227175%_))
                      (let ((_%e227160227178%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227158227175%_))))
                        (let ((_%hd227161227182%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227160227178%_)))
                              (_%tl227162227185%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227160227178%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227162227185%_))
                              (let ((_%e227163227188%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227162227185%_))))
                                (let ((_%hd227164227192%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227163227188%_)))
                                      (_%tl227165227195%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227163227188%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227165227195%_))
                                      ((lambda (_%g227159227198%_)
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
                                                           (cons _%g227159227198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227164227192%_)
                                      (_%g227157227171%_ _%g227158227175%_))))
                              (_%g227157227171%_ _%g227158227175%_))))
                      (_%g227157227171%_ _%g227158227175%_)))))
          (_%g227156227212%_ _%$stx227153%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx227216%_)
        (let* ((_%g227220227274%_
                (lambda (_%g227221227270%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227221227270%_))))
               (_%g227219227455%_
                (lambda (_%g227221227278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227221227278%_))
                      (let ((_%e227233227281%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227221227278%_))))
                        (let ((_%hd227234227285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227233227281%_)))
                              (_%tl227235227288%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227233227281%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227235227288%_))
                              (let ((_%e227236227291%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227235227288%_))))
                                (let ((_%hd227237227295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227236227291%_)))
                                      (_%tl227238227298%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227236227291%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227238227298%_))
                                      (let ((_%e227239227301%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227238227298%_))))
                                        (let ((_%hd227240227305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227239227301%_)))
                                              (_%tl227241227308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227239227301%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227241227308%_))
                                              (let ((_%e227242227311%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227241227308%_))))
                                                (let ((_%hd227243227315%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227242227311%_)))
                                                      (_%tl227244227318%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227242227311%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl227244227318%_))
                                                      (let ((_%e227245227321%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl227244227318%_))))
                (let ((_%hd227246227325%_
                       (let () (declare (not safe)) (##car _%e227245227321%_)))
                      (_%tl227247227328%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e227245227321%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227247227328%_))
                      (let ((_%e227248227331%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227247227328%_))))
                        (let ((_%hd227249227335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227248227331%_)))
                              (_%tl227250227338%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227248227331%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227250227338%_))
                              (let ((_%e227251227341%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227250227338%_))))
                                (let ((_%hd227252227345%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227251227341%_)))
                                      (_%tl227253227348%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227251227341%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227253227348%_))
                                      (let ((_%e227254227351%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227253227348%_))))
                                        (let ((_%hd227255227355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227254227351%_)))
                                              (_%tl227256227358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227254227351%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227256227358%_))
                                              (let ((_%e227257227361%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227256227358%_))))
                                                (let ((_%hd227258227365%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227257227361%_)))
                                                      (_%tl227259227368%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227257227361%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl227259227368%_))
                                                      (let ((_%e227260227371%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl227259227368%_))))
                (let ((_%hd227261227375%_
                       (let () (declare (not safe)) (##car _%e227260227371%_)))
                      (_%tl227262227378%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e227260227371%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227262227378%_))
                      (let ((_%e227263227381%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227262227378%_))))
                        (let ((_%hd227264227385%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227263227381%_)))
                              (_%tl227265227388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227263227381%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227265227388%_))
                              (let ((_%e227266227391%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227265227388%_))))
                                (let ((_%hd227267227395%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227266227391%_)))
                                      (_%tl227268227398%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227266227391%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227268227398%_))
                                      ((lambda (_%g227222227401%_
                                                _%g227223227403%_
                                                _%g227224227404%_
                                                _%g227225227405%_
                                                _%g227226227406%_
                                                _%g227227227407%_
                                                _%g227228227408%_
                                                _%g227229227409%_
                                                _%g227230227410%_
                                                _%g227231227411%_
                                                _%g227232227412%_)
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
                                                           (cons _%g227232227412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g227231227411%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g227230227410%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227229227409%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227228227408%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g227227227407%_ '()))
                                           (cons _%g227226227406%_
                                                 (cons _%g227225227405%_
                                                       (cons _%g227224227404%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g227223227403%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g227222227401%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd227267227395%_
                                       _%hd227264227385%_
                                       _%hd227261227375%_
                                       _%hd227258227365%_
                                       _%hd227255227355%_
                                       _%hd227252227345%_
                                       _%hd227249227335%_
                                       _%hd227246227325%_
                                       _%hd227243227315%_
                                       _%hd227240227305%_
                                       _%hd227237227295%_)
                                      (_%g227220227274%_ _%g227221227278%_))))
                              (_%g227220227274%_ _%g227221227278%_))))
                      (_%g227220227274%_ _%g227221227278%_))))
              (_%g227220227274%_ _%g227221227278%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227220227274%_
                                               _%g227221227278%_))))
                                      (_%g227220227274%_ _%g227221227278%_))))
                              (_%g227220227274%_ _%g227221227278%_))))
                      (_%g227220227274%_ _%g227221227278%_))))
              (_%g227220227274%_ _%g227221227278%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227220227274%_
                                               _%g227221227278%_))))
                                      (_%g227220227274%_ _%g227221227278%_))))
                              (_%g227220227274%_ _%g227221227278%_))))
                      (_%g227220227274%_ _%g227221227278%_)))))
          (_%g227219227455%_ _%$stx227216%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx227459%_)
        (let* ((_%g227463227477%_
                (lambda (_%g227464227473%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227464227473%_))))
               (_%g227462227518%_
                (lambda (_%g227464227481%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227464227481%_))
                      (let ((_%e227466227484%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227464227481%_))))
                        (let ((_%hd227467227488%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227466227484%_)))
                              (_%tl227468227491%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227466227484%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227468227491%_))
                              (let ((_%e227469227494%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227468227491%_))))
                                (let ((_%hd227470227498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227469227494%_)))
                                      (_%tl227471227501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227469227494%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227471227501%_))
                                      ((lambda (_%g227465227504%_)
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
                                                           (cons _%g227465227504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227470227498%_)
                                      (_%g227463227477%_ _%g227464227481%_))))
                              (_%g227463227477%_ _%g227464227481%_))))
                      (_%g227463227477%_ _%g227464227481%_)))))
          (_%g227462227518%_ _%$stx227459%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx227522%_)
        (let* ((_%g227526227540%_
                (lambda (_%g227527227536%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227527227536%_))))
               (_%g227525227581%_
                (lambda (_%g227527227544%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227527227544%_))
                      (let ((_%e227529227547%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227527227544%_))))
                        (let ((_%hd227530227551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227529227547%_)))
                              (_%tl227531227554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227529227547%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227531227554%_))
                              (let ((_%e227532227557%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227531227554%_))))
                                (let ((_%hd227533227561%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227532227557%_)))
                                      (_%tl227534227564%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227532227557%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227534227564%_))
                                      ((lambda (_%g227528227567%_)
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
                                                           (cons _%g227528227567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227533227561%_)
                                      (_%g227526227540%_ _%g227527227544%_))))
                              (_%g227526227540%_ _%g227527227544%_))))
                      (_%g227526227540%_ _%g227527227544%_)))))
          (_%g227525227581%_ _%$stx227522%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx227585%_)
        (let* ((_%g227589227611%_
                (lambda (_%g227590227607%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227590227607%_))))
               (_%g227588227680%_
                (lambda (_%g227590227615%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227590227615%_))
                      (let ((_%e227594227618%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227590227615%_))))
                        (let ((_%hd227595227622%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227594227618%_)))
                              (_%tl227596227625%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227594227618%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227596227625%_))
                              (let ((_%e227597227628%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227596227625%_))))
                                (let ((_%hd227598227632%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227597227628%_)))
                                      (_%tl227599227635%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227597227628%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227599227635%_))
                                      (let ((_%e227600227638%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227599227635%_))))
                                        (let ((_%hd227601227642%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227600227638%_)))
                                              (_%tl227602227645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227600227638%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227602227645%_))
                                              (let ((_%e227603227648%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227602227645%_))))
                                                (let ((_%hd227604227652%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227603227648%_)))
                                                      (_%tl227605227655%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227603227648%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227605227655%_))
                                                      ((lambda (_%g227591227658%_
                                                                _%g227592227660%_
                                                                _%g227593227661%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g227593227661%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g227592227660%_ '()))
                                   (cons _%g227591227658%_ '())))))
               _%hd227604227652%_
               _%hd227601227642%_
               _%hd227598227632%_)
              (_%g227589227611%_ _%g227590227615%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227589227611%_
                                               _%g227590227615%_))))
                                      (_%g227589227611%_ _%g227590227615%_))))
                              (_%g227589227611%_ _%g227590227615%_))))
                      (_%g227589227611%_ _%g227590227615%_)))))
          (_%g227588227680%_ _%$stx227585%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx227684%_)
        (let* ((_%g227688227710%_
                (lambda (_%g227689227706%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227689227706%_))))
               (_%g227687227779%_
                (lambda (_%g227689227714%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227689227714%_))
                      (let ((_%e227693227717%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227689227714%_))))
                        (let ((_%hd227694227721%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227693227717%_)))
                              (_%tl227695227724%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227693227717%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227695227724%_))
                              (let ((_%e227696227727%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227695227724%_))))
                                (let ((_%hd227697227731%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227696227727%_)))
                                      (_%tl227698227734%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227696227727%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227698227734%_))
                                      (let ((_%e227699227737%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227698227734%_))))
                                        (let ((_%hd227700227741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227699227737%_)))
                                              (_%tl227701227744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227699227737%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227701227744%_))
                                              (let ((_%e227702227747%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227701227744%_))))
                                                (let ((_%hd227703227751%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227702227747%_)))
                                                      (_%tl227704227754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227702227747%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227704227754%_))
                                                      ((lambda (_%g227690227757%_
                                                                _%g227691227759%_
                                                                _%g227692227760%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g227692227760%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g227691227759%_ '()))
                                   (cons _%g227690227757%_ '())))))
               _%hd227703227751%_
               _%hd227700227741%_
               _%hd227697227731%_)
              (_%g227688227710%_ _%g227689227714%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227688227710%_
                                               _%g227689227714%_))))
                                      (_%g227688227710%_ _%g227689227714%_))))
                              (_%g227688227710%_ _%g227689227714%_))))
                      (_%g227688227710%_ _%g227689227714%_)))))
          (_%g227687227779%_ _%$stx227684%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx227783%_)
        (let* ((_%g227787227801%_
                (lambda (_%g227788227797%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227788227797%_))))
               (_%g227786227842%_
                (lambda (_%g227788227805%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227788227805%_))
                      (let ((_%e227790227808%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227788227805%_))))
                        (let ((_%hd227791227812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227790227808%_)))
                              (_%tl227792227815%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227790227808%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227792227815%_))
                              (let ((_%e227793227818%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227792227815%_))))
                                (let ((_%hd227794227822%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227793227818%_)))
                                      (_%tl227795227825%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227793227818%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227795227825%_))
                                      ((lambda (_%g227789227828%_)
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
                                                           (cons _%g227789227828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227794227822%_)
                                      (_%g227787227801%_ _%g227788227805%_))))
                              (_%g227787227801%_ _%g227788227805%_))))
                      (_%g227787227801%_ _%g227788227805%_)))))
          (_%g227786227842%_ _%$stx227783%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx227846%_)
        (let* ((_%g227850227868%_
                (lambda (_%g227851227864%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227851227864%_))))
               (_%g227849227923%_
                (lambda (_%g227851227872%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227851227872%_))
                      (let ((_%e227854227875%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227851227872%_))))
                        (let ((_%hd227855227879%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227854227875%_)))
                              (_%tl227856227882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227854227875%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227856227882%_))
                              (let ((_%e227857227885%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227856227882%_))))
                                (let ((_%hd227858227889%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227857227885%_)))
                                      (_%tl227859227892%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227857227885%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227859227892%_))
                                      (let ((_%e227860227895%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227859227892%_))))
                                        (let ((_%hd227861227899%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227860227895%_)))
                                              (_%tl227862227902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227860227895%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl227862227902%_))
                                              ((lambda (_%g227852227905%_
                                                        _%g227853227907%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g227853227907%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g227852227905%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd227861227899%_
                                               _%hd227858227889%_)
                                              (_%g227850227868%_
                                               _%g227851227872%_))))
                                      (_%g227850227868%_ _%g227851227872%_))))
                              (_%g227850227868%_ _%g227851227872%_))))
                      (_%g227850227868%_ _%g227851227872%_)))))
          (_%g227849227923%_ _%$stx227846%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx227927%_)
        (let* ((_%__stx232243232244%_ _%$stx227927%_)
               (_%g227934227995%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232243232244%_)))))
          (let ((_%__kont232246232247%_
                 (lambda (_%g227936228233%_ _%g227937228235%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227937228235%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227936228233%_ '()))
                                     '())))))
                (_%__kont232248232249%_
                 (lambda (_%g227947228172%_
                          _%g227948228174%_
                          _%g227949228175%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227949228175%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227948228174%_ '()))
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
                                 (cons _%g227947228172%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont232250232251%_
                 (lambda (_%g227966228096%_ _%g227967228098%_)
                   (cons _%g227967228098%_
                         (cons _%g227966228096%_ (cons '#f '())))))
                (_%__kont232252232253%_
                 (lambda (_%g227974228046%_
                          _%g227975228048%_
                          _%g227976228049%_)
                   (cons _%g227976228049%_
                         (cons _%g227975228048%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g227974228046%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232243232244%_))
                (let ((_%e227938228203%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232243232244%_))))
                  (let ((_%tl227940228210%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e227938228203%_)))
                        (_%hd227939228207%_
                         (let ()
                           (declare (not safe))
                           (##car _%e227938228203%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl227940228210%_))
                        (let ((_%e227941228213%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl227940228210%_))))
                          (let ((_%tl227943228220%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227941228213%_)))
                                (_%hd227942228217%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227941228213%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl227943228220%_))
                                (let ((_%e227944228223%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl227943228220%_))))
                                  (let ((_%tl227946228230%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227944228223%_)))
                                        (_%hd227945228227%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227944228223%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl227946228230%_))
                                        (_%__kont232246232247%_
                                         _%hd227945228227%_
                                         _%hd227942228217%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl227946228230%_))
                                            (let ((_%e227959228148%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl227946228230%_))))
                                              (let ((_%tl227961228155%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e227959228148%_)))
                                                    (_%hd227960228152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e227959228148%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd227960228152%_))
                                                    (let ((_%e227962228158%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd227960228152%_))))
                                                      (if (equal? _%e227962228158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227961228155%_))
                      (let ((_%e227963228162%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227961228155%_))))
                        (let ((_%tl227965228169%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227963228162%_)))
                              (_%hd227964228166%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227963228162%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl227965228169%_))
                              (_%__kont232248232249%_
                               _%hd227964228166%_
                               _%hd227945228227%_
                               _%hd227942228217%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd227945228227%_))
                                  (let ((_%e227986228032%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd227945228227%_))))
                                    (declare (not safe))
                                    (_%g227934227995%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g227934227995%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd227945228227%_))
                          (let ((_%e227986228032%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd227945228227%_))))
                            (if (equal? _%e227986228032%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227961228155%_))
                                    (_%__kont232252232253%_
                                     _%hd227960228152%_
                                     _%hd227942228217%_
                                     _%hd227939228207%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g227934227995%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g227934227995%_))))
                          (let () (declare (not safe)) (_%g227934227995%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd227945228227%_))
                      (let ((_%e227986228032%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd227945228227%_))))
                        (if (equal? _%e227986228032%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl227961228155%_))
                                (_%__kont232252232253%_
                                 _%hd227960228152%_
                                 _%hd227942228217%_
                                 _%hd227939228207%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g227934227995%_)))
                            (let () (declare (not safe)) (_%g227934227995%_))))
                      (let () (declare (not safe)) (_%g227934227995%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd227945228227%_))
                                                        (let ((_%e227986228032%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd227945228227%_))))
                  (if (equal? _%e227986228032%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl227961228155%_))
                          (_%__kont232252232253%_
                           _%hd227960228152%_
                           _%hd227942228217%_
                           _%hd227939228207%_)
                          (let () (declare (not safe)) (_%g227934227995%_)))
                      (let () (declare (not safe)) (_%g227934227995%_))))
                (let () (declare (not safe)) (_%g227934227995%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd227945228227%_))
                                                (let ((_%e227986228032%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd227945228227%_))))
                                                  (declare (not safe))
                                                  (_%g227934227995%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g227934227995%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227943228220%_))
                                    (_%__kont232250232251%_
                                     _%hd227942228217%_
                                     _%hd227939228207%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g227934227995%_))))))
                        (let () (declare (not safe)) (_%g227934227995%_)))))
                (let () (declare (not safe)) (_%g227934227995%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx228254%_)
        (let* ((_%g228258228287%_
                (lambda (_%g228259228283%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228259228283%_))))
               (_%g228257228392%_
                (lambda (_%g228259228291%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228259228291%_))
                      (let ((_%e228261228294%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228259228291%_))))
                        (let ((_%hd228262228298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228261228294%_)))
                              (_%tl228263228301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228261228294%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl228263228301%_))
                              (let ((_g232873_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl228263228301%_
                                        '0))))
                                (begin
                                  (let ((_g232874_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232873_)
                                               (##values-length _g232873_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232874_ 2)))
                                        (error "Context expects 2 values"
                                               _g232874_)))
                                  (let ((_%target228264228304%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232873_ 0)))
                                        (_%tl228266228307%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232873_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228266228307%_))
                                        (letrec ((_%loop228267228310%_
                                                  (lambda (_%hd228265228314%_
                                                           _%clause228271228317%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd228265228314%_))
                                                        (let ((_%e228268228319%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd228265228314%_))))
                  (let ((_%lp-hd228269228323%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228268228319%_)))
                        (_%lp-tl228270228326%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228268228319%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd228269228323%_))
                        (let ((_g232875_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd228269228323%_
                                  '0))))
                          (begin
                            (let ((_g232876_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g232875_)
                                         (##values-length _g232875_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g232876_ 2)))
                                  (error "Context expects 2 values"
                                         _g232876_)))
                            (let ((_%target228273228329%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232875_ 0)))
                                  (_%tl228275228332%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232875_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl228275228332%_))
                                  (letrec ((_%loop228276228335%_
                                            (lambda (_%hd228274228339%_
                                                     _%clause228280228342%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd228274228339%_))
                                                  (let ((_%e228277228344%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd228274228339%_))))
                                                    (let ((_%lp-hd228278228348%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e228277228344%_)))
                                                          (_%lp-tl228279228351%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e228277228344%_))))
                                                      (_%loop228276228335%_
                                                       _%lp-tl228279228351%_
                                                       (cons _%lp-hd228278228348%_
                                                             _%clause228280228342%_))))
                                                  (let ((_%clause228281228354%_
                                                         (reverse _%clause228280228342%_)))
                                                    (_%loop228267228310%_
                                                     _%lp-tl228270228326%_
                                                     (cons _%clause228281228354%_
                                                           _%clause228271228317%_)))))))
                                    (_%loop228276228335%_
                                     _%target228273228329%_
                                     '()))
                                  (_%g228258228287%_ _%g228259228291%_)))))
                        (_%g228258228287%_ _%g228259228291%_))))
                (let ((_%clause228272228357%_
                       (reverse _%clause228271228317%_)))
                  ((lambda (_%g228260228360%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp232877
                                              (lambda (_%g228375228380%_
                                                       _%g228376228383%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp232878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g228377228386%_ _%g228378228389%_)
                             (cons _%g228377228386%_ _%g228378228389%_))))
                      (declare (not safe))
                      (__foldr1 __tmp232878 '() _%g228375228380%_)))
              _%g228376228383%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp232877
                                          '()
                                          _%g228260228360%_)))
                                 '())))
                   _%clause228272228357%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop228267228310%_
                                           _%target228264228304%_
                                           '()))
                                        (_%g228258228287%_
                                         _%g228259228291%_)))))
                              (_%g228258228287%_ _%g228259228291%_))))
                      (_%g228258228287%_ _%g228259228291%_)))))
          (_%g228257228392%_ _%$stx228254%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx228398%_)
        (let* ((_%g228402228420%_
                (lambda (_%g228403228416%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228403228416%_))))
               (_%g228401228475%_
                (lambda (_%g228403228424%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228403228424%_))
                      (let ((_%e228406228427%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228403228424%_))))
                        (let ((_%hd228407228431%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228406228427%_)))
                              (_%tl228408228434%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228406228427%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228408228434%_))
                              (let ((_%e228409228437%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228408228434%_))))
                                (let ((_%hd228410228441%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228409228437%_)))
                                      (_%tl228411228444%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228409228437%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228411228444%_))
                                      (let ((_%e228412228447%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228411228444%_))))
                                        (let ((_%hd228413228451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228412228447%_)))
                                              (_%tl228414228454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228412228447%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228414228454%_))
                                              ((lambda (_%g228404228457%_
                                                        _%g228405228459%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g228405228459%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g228404228457%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228413228451%_
                                               _%hd228410228441%_)
                                              (_%g228402228420%_
                                               _%g228403228424%_))))
                                      (_%g228402228420%_ _%g228403228424%_))))
                              (_%g228402228420%_ _%g228403228424%_))))
                      (_%g228402228420%_ _%g228403228424%_)))))
          (_%g228401228475%_ _%$stx228398%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx228479%_)
        (let* ((_%g228483228501%_
                (lambda (_%g228484228497%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228484228497%_))))
               (_%g228482228556%_
                (lambda (_%g228484228505%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228484228505%_))
                      (let ((_%e228487228508%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228484228505%_))))
                        (let ((_%hd228488228512%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228487228508%_)))
                              (_%tl228489228515%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228487228508%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228489228515%_))
                              (let ((_%e228490228518%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228489228515%_))))
                                (let ((_%hd228491228522%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228490228518%_)))
                                      (_%tl228492228525%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228490228518%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228492228525%_))
                                      (let ((_%e228493228528%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228492228525%_))))
                                        (let ((_%hd228494228532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228493228528%_)))
                                              (_%tl228495228535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228493228528%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228495228535%_))
                                              ((lambda (_%g228485228538%_
                                                        _%g228486228540%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g228486228540%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g228485228538%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228494228532%_
                                               _%hd228491228522%_)
                                              (_%g228483228501%_
                                               _%g228484228505%_))))
                                      (_%g228483228501%_ _%g228484228505%_))))
                              (_%g228483228501%_ _%g228484228505%_))))
                      (_%g228483228501%_ _%g228484228505%_)))))
          (_%g228482228556%_ _%$stx228479%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx228560%_)
        (let* ((_%g228564228593%_
                (lambda (_%g228565228589%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228565228589%_))))
               (_%g228563228689%_
                (lambda (_%g228565228597%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228565228597%_))
                      (let ((_%e228568228600%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228565228597%_))))
                        (let ((_%hd228569228604%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228568228600%_)))
                              (_%tl228570228607%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228568228600%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl228570228607%_))
                              (let ((_g232879_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl228570228607%_
                                        '0))))
                                (begin
                                  (let ((_g232880_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232879_)
                                               (##values-length _g232879_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232880_ 2)))
                                        (error "Context expects 2 values"
                                               _g232880_)))
                                  (let ((_%target228571228610%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232879_ 0)))
                                        (_%tl228573228613%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232879_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228573228613%_))
                                        (letrec ((_%loop228574228616%_
                                                  (lambda (_%hd228572228620%_
                                                           _%rule228578228623%_
                                                           _%proc228579228624%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd228572228620%_))
                                                        (let ((_%e228575228626%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd228572228620%_))))
                  (let ((_%lp-hd228576228630%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228575228626%_)))
                        (_%lp-tl228577228633%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228575228626%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd228576228630%_))
                        (let ((_%e228582228636%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd228576228630%_))))
                          (let ((_%hd228583228640%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e228582228636%_)))
                                (_%tl228584228643%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e228582228636%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl228584228643%_))
                                (let ((_%e228585228646%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl228584228643%_))))
                                  (let ((_%hd228586228650%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e228585228646%_)))
                                        (_%tl228587228653%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e228585228646%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228587228653%_))
                                        (_%loop228574228616%_
                                         _%lp-tl228577228633%_
                                         (cons _%hd228586228650%_
                                               _%rule228578228623%_)
                                         (cons _%hd228583228640%_
                                               _%proc228579228624%_))
                                        (_%g228564228593%_
                                         _%g228565228597%_))))
                                (_%g228564228593%_ _%g228565228597%_))))
                        (_%g228564228593%_ _%g228565228597%_))))
                (let ((_%rule228580228656%_ (reverse _%rule228578228623%_))
                      (_%proc228581228658%_ (reverse _%proc228579228624%_)))
                  ((lambda (_%g228566228660%_ _%g228567228662%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g228566228660%_
                                _%g228567228662%_))
                             (let ((__tmp232881
                                    (lambda (_%g228677228681%_
                                             _%g228678228684%_
                                             _%g228679228686%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g228678228684%_
                                                        (cons _%g228677228681%_
                                                              '())))
                                            _%g228679228686%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp232881
                                '()
                                _%g228566228660%_
                                _%g228567228662%_)))))
                   _%rule228580228656%_
                   _%proc228581228658%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop228574228616%_
                                           _%target228571228610%_
                                           '()
                                           '()))
                                        (_%g228564228593%_
                                         _%g228565228597%_)))))
                              (_%g228564228593%_ _%g228565228597%_))))
                      (_%g228564228593%_ _%g228565228597%_)))))
          (_%g228563228689%_ _%$stx228560%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx228694%_)
        (let* ((_%g228698228716%_
                (lambda (_%g228699228712%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228699228712%_))))
               (_%g228697228771%_
                (lambda (_%g228699228720%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228699228720%_))
                      (let ((_%e228702228723%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228699228720%_))))
                        (let ((_%hd228703228727%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228702228723%_)))
                              (_%tl228704228730%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228702228723%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228704228730%_))
                              (let ((_%e228705228733%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228704228730%_))))
                                (let ((_%hd228706228737%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228705228733%_)))
                                      (_%tl228707228740%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228705228733%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228707228740%_))
                                      (let ((_%e228708228743%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228707228740%_))))
                                        (let ((_%hd228709228747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228708228743%_)))
                                              (_%tl228710228750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228708228743%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228710228750%_))
                                              ((lambda (_%g228700228753%_
                                                        _%g228701228755%_)
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
                                                   (cons _%g228701228755%_
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
                 (cons _%g228700228753%_ '())))
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
                                   (cons _%g228701228755%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228709228747%_
                                               _%hd228706228737%_)
                                              (_%g228698228716%_
                                               _%g228699228720%_))))
                                      (_%g228698228716%_ _%g228699228720%_))))
                              (_%g228698228716%_ _%g228699228720%_))))
                      (_%g228698228716%_ _%g228699228720%_)))))
          (_%g228697228771%_ _%$stx228694%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx228775%_)
        (let* ((_%__stx232361232362%_ _%$stx228775%_)
               (_%g228780228805%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232361232362%_)))))
          (let ((_%__kont232364232365%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont232366232367%_
                 (lambda (_%g228785228852%_
                          _%g228786228854%_
                          _%g228787228855%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g228787228855%_
                                           (cons _%g228786228854%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g228785228852%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232361232362%_))
                (let ((_%e228782228881%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232361232362%_))))
                  (let ((_%tl228784228888%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228782228881%_)))
                        (_%hd228783228885%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228782228881%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl228784228888%_))
                        (_%__kont232364232365%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228784228888%_))
                            (let ((_%e228791228822%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl228784228888%_))))
                              (let ((_%tl228793228829%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228791228822%_)))
                                    (_%hd228792228826%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228791228822%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd228792228826%_))
                                    (let ((_%e228794228832%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd228792228826%_))))
                                      (let ((_%tl228796228839%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e228794228832%_)))
                                            (_%hd228795228836%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e228794228832%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl228796228839%_))
                                            (let ((_%e228797228842%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl228796228839%_))))
                                              (let ((_%tl228799228849%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e228797228842%_)))
                                                    (_%hd228798228846%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e228797228842%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl228799228849%_))
                                                    (_%__kont232366232367%_
                                                     _%tl228793228829%_
                                                     _%hd228798228846%_
                                                     _%hd228795228836%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g228780228805%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g228780228805%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g228780228805%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g228780228805%_))))))
                (let () (declare (not safe)) (_%g228780228805%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx228899%_)
        (let* ((_%__stx232405232406%_ _%$stx228899%_)
               (_%g228904228935%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232405232406%_)))))
          (let ((_%__kont232408232409%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont232410232411%_
                 (lambda (_%g228909229000%_
                          _%g228910229002%_
                          _%g228911229003%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g228911229003%_
                                           (let ((__tmp232882
                                                  (lambda (_%g229023229026%_
                                                           _%g229024229029%_)
                                                    (cons _%g229023229026%_
                                                          _%g229024229029%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp232882
                                              '()
                                              _%g228910229002%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g228909229000%_)
                                     '()))))))
            (let ((_%__match232448232449%_
                   (lambda (_%e228912228942%_
                            _%hd228913228946%_
                            _%tl228914228949%_
                            _%e228915228952%_
                            _%hd228916228956%_
                            _%tl228917228959%_
                            _%e228918228962%_
                            _%hd228919228966%_
                            _%tl228920228969%_
                            _%__splice232412232413%_
                            _%target228921228972%_
                            _%tl228923228975%_)
                     (letrec ((_%loop228924228978%_
                               (lambda (_%hd228922228982%_ _%sig228928228985%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd228922228982%_))
                                     (let ((_%e228925228987%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd228922228982%_))))
                                       (let ((_%lp-tl228927228994%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e228925228987%_)))
                                             (_%lp-hd228926228991%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e228925228987%_))))
                                         (_%loop228924228978%_
                                          _%lp-tl228927228994%_
                                          (cons _%lp-hd228926228991%_
                                                _%sig228928228985%_))))
                                     (let ((_%sig228929228997%_
                                            (reverse _%sig228928228985%_)))
                                       (_%__kont232410232411%_
                                        _%tl228917228959%_
                                        _%sig228929228997%_
                                        _%hd228919228966%_))))))
                       (_%loop228924228978%_ _%target228921228972%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232405232406%_))
                  (let ((_%e228906229039%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232405232406%_))))
                    (let ((_%tl228908229046%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e228906229039%_)))
                          (_%hd228907229043%_
                           (let ()
                             (declare (not safe))
                             (##car _%e228906229039%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl228908229046%_))
                          (_%__kont232408232409%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228908229046%_))
                              (let ((_%e228915228952%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228908229046%_))))
                                (let ((_%tl228917228959%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228915228952%_)))
                                      (_%hd228916228956%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228915228952%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd228916228956%_))
                                      (let ((_%e228918228962%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd228916228956%_))))
                                        (let ((_%tl228920228969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228918228962%_)))
                                              (_%hd228919228966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228918228962%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl228920228969%_))
                                              (let ((_%__splice232412232413%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl228920228969%_
                                                        '0))))
                                                (let ((_%tl228923228975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232412232413%_
                                                          '1)))
                                                      (_%target228921228972%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232412232413%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl228923228975%_))
                                                      (_%__match232448232449%_
                                                       _%e228906229039%_
                                                       _%hd228907229043%_
                                                       _%tl228908229046%_
                                                       _%e228915228952%_
                                                       _%hd228916228956%_
                                                       _%tl228917228959%_
                                                       _%e228918228962%_
                                                       _%hd228919228966%_
                                                       _%tl228920228969%_
                                                       _%__splice232412232413%_
                                                       _%target228921228972%_
                                                       _%tl228923228975%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g228904228935%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g228904228935%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g228904228935%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g228904228935%_))))))
                  (let () (declare (not safe)) (_%g228904228935%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx229058%_)
        (let* ((_%__stx232451232452%_ _%$stx229058%_)
               (_%g229063229110%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232451232452%_)))))
          (let ((_%__kont232454232455%_
                 (lambda (_%g229065229268%_ _%g229066229270%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g229066229270%_
                               (let ((__tmp232883
                                      (lambda (_%g229290229293%_
                                               _%g229291229296%_)
                                        (cons _%g229290229293%_
                                              _%g229291229296%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp232883
                                  '()
                                  _%g229065229268%_))))))
                (_%__kont232458232459%_
                 (lambda (_%g229088229165%_ _%g229089229167%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g229089229167%_
                               (let ((__tmp232884
                                      (lambda (_%g229184229187%_
                                               _%g229185229190%_)
                                        (cons _%g229184229187%_
                                              _%g229185229190%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp232884
                                  '()
                                  _%g229088229165%_)))))))
            (let* ((_%__match232518232519%_
                    (lambda (_%e229090229117%_
                             _%hd229091229121%_
                             _%tl229092229124%_
                             _%e229093229127%_
                             _%hd229094229131%_
                             _%tl229095229134%_
                             _%__splice232460232461%_
                             _%target229096229137%_
                             _%tl229098229140%_)
                      (letrec ((_%loop229099229143%_
                                (lambda (_%hd229097229147%_
                                         _%sig229103229150%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd229097229147%_))
                                      (let ((_%e229100229152%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd229097229147%_))))
                                        (let ((_%lp-tl229102229159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229100229152%_)))
                                              (_%lp-hd229101229156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229100229152%_))))
                                          (_%loop229099229143%_
                                           _%lp-tl229102229159%_
                                           (cons _%lp-hd229101229156%_
                                                 _%sig229103229150%_))))
                                      (let ((_%sig229104229162%_
                                             (reverse _%sig229103229150%_)))
                                        (_%__kont232458232459%_
                                         _%sig229104229162%_
                                         _%hd229094229131%_))))))
                        (_%loop229099229143%_ _%target229096229137%_ '()))))
                   (_%__match232510232511%_
                    (lambda (_%e229090229117%_
                             _%hd229091229121%_
                             _%tl229092229124%_
                             _%e229093229127%_
                             _%hd229094229131%_
                             _%tl229095229134%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl229095229134%_))
                          (let ((_%__splice232460232461%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl229095229134%_
                                    '0))))
                            (let ((_%tl229098229140%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice232460232461%_
                                      '1)))
                                  (_%target229096229137%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice232460232461%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229098229140%_))
                                  (_%__match232518232519%_
                                   _%e229090229117%_
                                   _%hd229091229121%_
                                   _%tl229092229124%_
                                   _%e229093229127%_
                                   _%hd229094229131%_
                                   _%tl229095229134%_
                                   _%__splice232460232461%_
                                   _%target229096229137%_
                                   _%tl229098229140%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g229063229110%_)))))
                          (let () (declare (not safe)) (_%g229063229110%_)))))
                   (_%__match232498232499%_
                    (lambda (_%e229067229200%_
                             _%hd229068229204%_
                             _%tl229069229207%_
                             _%e229070229210%_
                             _%hd229071229214%_
                             _%tl229072229217%_
                             _%e229073229220%_
                             _%hd229074229224%_
                             _%tl229075229227%_
                             _%e229076229230%_
                             _%hd229077229234%_
                             _%tl229078229237%_
                             _%__splice232456232457%_
                             _%target229079229240%_
                             _%tl229081229243%_)
                      (letrec ((_%loop229082229246%_
                                (lambda (_%hd229080229250%_
                                         _%sig229086229253%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd229080229250%_))
                                      (let ((_%e229083229255%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd229080229250%_))))
                                        (let ((_%lp-tl229085229262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229083229255%_)))
                                              (_%lp-hd229084229259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229083229255%_))))
                                          (_%loop229082229246%_
                                           _%lp-tl229085229262%_
                                           (cons _%lp-hd229084229259%_
                                                 _%sig229086229253%_))))
                                      (let ((_%sig229087229265%_
                                             (reverse _%sig229086229253%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl229075229227%_))
                                            (_%__kont232454232455%_
                                             _%sig229087229265%_
                                             _%hd229071229214%_)
                                            (_%__match232510232511%_
                                             _%e229067229200%_
                                             _%hd229068229204%_
                                             _%tl229069229207%_
                                             _%e229070229210%_
                                             _%hd229071229214%_
                                             _%tl229072229217%_)))))))
                        (_%loop229082229246%_ _%target229079229240%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232451232452%_))
                  (let ((_%e229067229200%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232451232452%_))))
                    (let ((_%tl229069229207%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229067229200%_)))
                          (_%hd229068229204%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229067229200%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229069229207%_))
                          (let ((_%e229070229210%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl229069229207%_))))
                            (let ((_%tl229072229217%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229070229210%_)))
                                  (_%hd229071229214%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229070229210%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl229072229217%_))
                                  (let ((_%e229073229220%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl229072229217%_))))
                                    (let ((_%tl229075229227%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e229073229220%_)))
                                          (_%hd229074229224%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e229073229220%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd229074229224%_))
                                          (let ((_%e229076229230%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd229074229224%_))))
                                            (let ((_%tl229078229237%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e229076229230%_)))
                                                  (_%hd229077229234%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e229076229230%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd229077229234%_))
                                                  (if (let ((__tmp232885
                                                             |gxc[1]#_g232886_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp232885
                                                         _%hd229077229234%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl229078229237%_))
                                                          (let ((_%__splice232456232457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl229078229237%_
                            '0))))
                    (let ((_%tl229081229243%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232456232457%_ '1)))
                          (_%target229079229240%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232456232457%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl229081229243%_))
                          (_%__match232498232499%_
                           _%e229067229200%_
                           _%hd229068229204%_
                           _%tl229069229207%_
                           _%e229070229210%_
                           _%hd229071229214%_
                           _%tl229072229217%_
                           _%e229073229220%_
                           _%hd229074229224%_
                           _%tl229075229227%_
                           _%e229076229230%_
                           _%hd229077229234%_
                           _%tl229078229237%_
                           _%__splice232456232457%_
                           _%target229079229240%_
                           _%tl229081229243%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl229072229217%_))
                              (let ((_%__splice232460232461%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl229072229217%_
                                        '0))))
                                (let ((_%tl229098229140%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice232460232461%_
                                          '1)))
                                      (_%target229096229137%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice232460232461%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl229098229140%_))
                                      (_%__match232518232519%_
                                       _%e229067229200%_
                                       _%hd229068229204%_
                                       _%tl229069229207%_
                                       _%e229070229210%_
                                       _%hd229071229214%_
                                       _%tl229072229217%_
                                       _%__splice232460232461%_
                                       _%target229096229137%_
                                       _%tl229098229140%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g229063229110%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g229063229110%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl229072229217%_))
                      (let ((_%__splice232460232461%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl229072229217%_
                                '0))))
                        (let ((_%tl229098229140%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice232460232461%_ '1)))
                              (_%target229096229137%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice232460232461%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl229098229140%_))
                              (_%__match232518232519%_
                               _%e229067229200%_
                               _%hd229068229204%_
                               _%tl229069229207%_
                               _%e229070229210%_
                               _%hd229071229214%_
                               _%tl229072229217%_
                               _%__splice232460232461%_
                               _%target229096229137%_
                               _%tl229098229140%_)
                              (let ()
                                (declare (not safe))
                                (_%g229063229110%_)))))
                      (let () (declare (not safe)) (_%g229063229110%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl229072229217%_))
                  (let ((_%__splice232460232461%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl229072229217%_
                            '0))))
                    (let ((_%tl229098229140%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232460232461%_ '1)))
                          (_%target229096229137%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232460232461%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl229098229140%_))
                          (_%__match232518232519%_
                           _%e229067229200%_
                           _%hd229068229204%_
                           _%tl229069229207%_
                           _%e229070229210%_
                           _%hd229071229214%_
                           _%tl229072229217%_
                           _%__splice232460232461%_
                           _%target229096229137%_
                           _%tl229098229140%_)
                          (let () (declare (not safe)) (_%g229063229110%_)))))
                  (let () (declare (not safe)) (_%g229063229110%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl229072229217%_))
                                                      (let ((_%__splice232460232461%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl229072229217%_
                        '0))))
                (let ((_%tl229098229140%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232460232461%_ '1)))
                      (_%target229096229137%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232460232461%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl229098229140%_))
                      (_%__match232518232519%_
                       _%e229067229200%_
                       _%hd229068229204%_
                       _%tl229069229207%_
                       _%e229070229210%_
                       _%hd229071229214%_
                       _%tl229072229217%_
                       _%__splice232460232461%_
                       _%target229096229137%_
                       _%tl229098229140%_)
                      (let () (declare (not safe)) (_%g229063229110%_)))))
              (let () (declare (not safe)) (_%g229063229110%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl229072229217%_))
                                              (let ((_%__splice232460232461%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl229072229217%_
                                                        '0))))
                                                (let ((_%tl229098229140%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232460232461%_
                                                          '1)))
                                                      (_%target229096229137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232460232461%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl229098229140%_))
                                                      (_%__match232518232519%_
                                                       _%e229067229200%_
                                                       _%hd229068229204%_
                                                       _%tl229069229207%_
                                                       _%e229070229210%_
                                                       _%hd229071229214%_
                                                       _%tl229072229217%_
                                                       _%__splice232460232461%_
                                                       _%target229096229137%_
                                                       _%tl229098229140%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g229063229110%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g229063229110%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl229072229217%_))
                                      (let ((_%__splice232460232461%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl229072229217%_
                                                '0))))
                                        (let ((_%tl229098229140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232460232461%_
                                                  '1)))
                                              (_%target229096229137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232460232461%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229098229140%_))
                                              (_%__match232518232519%_
                                               _%e229067229200%_
                                               _%hd229068229204%_
                                               _%tl229069229207%_
                                               _%e229070229210%_
                                               _%hd229071229214%_
                                               _%tl229072229217%_
                                               _%__splice232460232461%_
                                               _%target229096229137%_
                                               _%tl229098229140%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g229063229110%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g229063229110%_))))))
                          (let () (declare (not safe)) (_%g229063229110%_)))))
                  (let () (declare (not safe)) (_%g229063229110%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx230453%_ _%id230455%_)
        (let ((_%proc230459%_
               (let ((__tmp232887
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id230455%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp232887))))
          (if (procedure? _%proc230459%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx230453%_
                 _%id230455%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx230444%_ _%id230446%_)
        (let ((_%klass230450%_
               (let ((__tmp232888
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id230446%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp232888))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass230450%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx230444%_
                 _%id230446%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx229694%_ _%proc229696%_ _%sig229697%_)
        (letrec ((_%signature-arity229699%_
                  (lambda (_%args230376%_)
                    (let _%loop230379%_ ((_%rest230382%_ _%args230376%_)
                                         (_%count230384%_ '0))
                      (let* ((_%rest230385230396%_ _%rest230382%_)
                             (_%E230389230402%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest230385230396%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K230392230433%_
                               (lambda (_%rest230430%_)
                                 (_%loop230379%_
                                  _%rest230430%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count230384%_ '1)))))
                              (_%K230391230422%_ (lambda () _%count230384%_))
                              (_%K230390230410%_
                               (lambda () (cons _%count230384%_ '()))))
                          (let ((_%try-match230387230426%_
                                 (lambda ()
                                   (if (null? _%rest230385230396%_)
                                       (_%K230391230422%_)
                                       (_%K230390230410%_)))))
                            (if (pair? _%rest230385230396%_)
                                (let* ((_%tl230394230437%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest230385230396%_)))
                                       (_%rest230441%_ _%tl230394230437%_))
                                  (_%K230392230433%_ _%rest230441%_))
                                (_%try-match230387230426%_))))))))
                 (_%make-signature229701%_
                  (lambda (_%args230258%_
                           _%return230260%_
                           _%effect230261%_
                           _%unchecked230262%_)
                    (let ((__tmp232889
                           (lambda (_%g230263230265%_)
                             (|gxc[1]#verify-class!|
                              _%ctx229694%_
                              _%g230263230265%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp232889 _%args230258%_))
                    (|gxc[1]#verify-class!| _%ctx229694%_ _%return230260%_)
                    (if _%unchecked230262%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx229694%_
                         _%unchecked230262%_)
                        '#!void)
                    (let ((_%arity230269%_
                           (_%signature-arity229699%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args230258%_)))))
                      (if _%effect230261%_
                          (let ((_%effect230272%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect230261%_))))
                            (if (and (list? _%effect230272%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect230272%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx229694%_
                                   _%proc229696%_
                                   _%effect230272%_))))
                          '#!void)
                      (cons _%arity230269%_
                            (cons (let* ((_%g230275230298%_
                                          (lambda (_%g230276230294%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g230276230294%_))))
                                         (_%g230274230372%_
                                          (lambda (_%g230276230302%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g230276230302%_))
                                                (let ((_%e230281230305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g230276230302%_))))
                                                  (let ((_%hd230282230309%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e230281230305%_)))
                                                        (_%tl230283230312%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e230281230305%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl230283230312%_))
                                                        (let ((_%e230284230315%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl230283230312%_))))
                  (let ((_%hd230285230319%_
                         (let ()
                           (declare (not safe))
                           (##car _%e230284230315%_)))
                        (_%tl230286230322%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e230284230315%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl230286230322%_))
                        (let ((_%e230287230325%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl230286230322%_))))
                          (let ((_%hd230288230329%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230287230325%_)))
                                (_%tl230289230332%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230287230325%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl230289230332%_))
                                (let ((_%e230290230335%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl230289230332%_))))
                                  (let ((_%hd230291230339%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230290230335%_)))
                                        (_%tl230292230342%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230290230335%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl230292230342%_))
                                        ((lambda (_%g230277230345%_
                                                  _%g230278230347%_
                                                  _%g230279230348%_
                                                  _%g230280230349%_)
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
                           (cons _%g230280230349%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g230279230348%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g230278230347%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g230277230345%_ '()))
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
                                         _%hd230291230339%_
                                         _%hd230288230329%_
                                         _%hd230285230319%_
                                         _%hd230282230309%_)
                                        (_%g230275230298%_
                                         _%g230276230302%_))))
                                (_%g230275230298%_ _%g230276230302%_))))
                        (_%g230275230298%_ _%g230276230302%_))))
                (_%g230275230298%_ _%g230276230302%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230275230298%_
                                                 _%g230276230302%_)))))
                                    (_%g230274230372%_
                                     (list _%args230258%_
                                           _%return230260%_
                                           _%effect230261%_
                                           _%unchecked230262%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx229694%_ _%proc229696%_)
          (let* ((_%__stx232529232530%_ _%sig229697%_)
                 (_%g229708229811%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx232529232530%_)))))
            (let ((_%__kont232532232533%_
                   (lambda (_%g229710230239%_ _%g229711230241%_)
                     (_%make-signature229701%_
                      _%g229711230241%_
                      _%g229710230239%_
                      '#f
                      '#f)))
                  (_%__kont232534232535%_
                   (lambda (_%g229718230190%_
                            _%g229719230192%_
                            _%g229720230193%_)
                     (_%make-signature229701%_
                      _%g229720230193%_
                      _%g229719230192%_
                      _%g229718230190%_
                      '#f)))
                  (_%__kont232536232537%_
                   (lambda (_%g229734230114%_
                            _%g229735230116%_
                            _%g229736230117%_)
                     (_%make-signature229701%_
                      _%g229736230117%_
                      _%g229735230116%_
                      _%g229734230114%_
                      (let ((__tmp232890
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc229696%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp232890)))))
                  (_%__kont232538232539%_
                   (lambda (_%g229754230020%_
                            _%g229755230022%_
                            _%g229756230023%_
                            _%g229757230024%_)
                     (_%make-signature229701%_
                      _%g229757230024%_
                      _%g229756230023%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g229754230020%_)))))
                  (_%__kont232540232541%_
                   (lambda (_%g229778229927%_ _%g229779229929%_)
                     (_%make-signature229701%_
                      _%g229779229929%_
                      _%g229778229927%_
                      '#f
                      (let ((__tmp232891
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc229696%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp232891)))))
                  (_%__kont232542232543%_
                   (lambda (_%g229790229862%_
                            _%g229791229864%_
                            _%g229792229865%_)
                     (_%make-signature229701%_
                      _%g229792229865%_
                      _%g229791229864%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g229790229862%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232529232530%_))
                  (let ((_%e229712230219%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232529232530%_))))
                    (let ((_%tl229714230226%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229712230219%_)))
                          (_%hd229713230223%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229712230219%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229714230226%_))
                          (let ((_%e229715230229%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl229714230226%_))))
                            (let ((_%tl229717230236%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229715230229%_)))
                                  (_%hd229716230233%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229715230229%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229717230236%_))
                                  (_%__kont232532232533%_
                                   _%hd229716230233%_
                                   _%hd229713230223%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl229717230236%_))
                                      (let ((_%e229727230166%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl229717230236%_))))
                                        (let ((_%tl229729230173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229727230166%_)))
                                              (_%hd229728230170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229727230166%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd229728230170%_))
                                              (let ((_%e229730230176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd229728230170%_))))
                                                (if (equal? _%e229730230176%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl229729230173%_))
                                                        (let ((_%e229731230180%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl229729230173%_))))
                  (let ((_%tl229733230187%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229731230180%_)))
                        (_%hd229732230184%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229731230180%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl229733230187%_))
                        (_%__kont232534232535%_
                         _%hd229732230184%_
                         _%hd229716230233%_
                         _%hd229713230223%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229733230187%_))
                            (let ((_%e229750230100%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl229733230187%_))))
                              (let ((_%tl229752230107%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229750230100%_)))
                                    (_%hd229751230104%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229750230100%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd229751230104%_))
                                    (let ((_%e229753230110%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd229751230104%_))))
                                      (if (equal? _%e229753230110%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229752230107%_))
                                              (_%__kont232536232537%_
                                               _%hd229732230184%_
                                               _%hd229716230233%_
                                               _%hd229713230223%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl229752230107%_))
                                                  (let ((_%e229775230010%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl229752230107%_))))
                                                    (let ((_%tl229777230017%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229775230010%_)))
                                                          (_%hd229776230014%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229775230010%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl229777230017%_))
                                                          (_%__kont232538232539%_
                                                           _%hd229776230014%_
                                                           _%hd229732230184%_
                                                           _%hd229716230233%_
                                                           _%hd229713230223%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g229708229811%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g229708229811%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g229708229811%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g229708229811%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g229708229811%_))))))
                (let () (declare (not safe)) (_%g229708229811%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e229730230176%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl229729230173%_))
                                                            (_%__kont232540232541%_
                                                             _%hd229716230233%_
                                                             _%hd229713230223%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl229729230173%_))
                        (let ((_%e229803229852%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl229729230173%_))))
                          (let ((_%tl229805229859%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229803229852%_)))
                                (_%hd229804229856%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229803229852%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl229805229859%_))
                                (_%__kont232542232543%_
                                 _%hd229804229856%_
                                 _%hd229716230233%_
                                 _%hd229713230223%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g229708229811%_)))))
                        (let () (declare (not safe)) (_%g229708229811%_))))
                (let () (declare (not safe)) (_%g229708229811%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g229708229811%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g229708229811%_))))))
                          (let () (declare (not safe)) (_%g229708229811%_)))))
                  (let () (declare (not safe)) (_%g229708229811%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig229305%_)
        (let* ((_%g229308229388%_
                (lambda (_%g229309229384%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g229309229384%_))))
               (_%g229307229690%_
                (lambda (_%g229309229392%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g229309229392%_))
                      (let ((_%e229315229395%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g229309229392%_))))
                        (let ((_%hd229316229399%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229315229395%_)))
                              (_%tl229317229402%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229315229395%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl229317229402%_))
                              (let ((_%e229318229405%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl229317229402%_))))
                                (let ((_%hd229319229409%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229318229405%_)))
                                      (_%tl229320229412%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229318229405%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd229319229409%_))
                                      (let ((_%e229321229415%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd229319229409%_))))
                                        (if (equal? _%e229321229415%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229320229412%_))
                                                (let ((_%e229322229419%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl229320229412%_))))
                                                  (let ((_%hd229323229423%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229322229419%_)))
                                                        (_%tl229324229426%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229322229419%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd229323229423%_))
                                                        (let ((_%e229325229429%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd229323229423%_))))
                  (let ((_%hd229326229433%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229325229429%_)))
                        (_%tl229327229436%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229325229429%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd229326229433%_))
                        (if (let ((__tmp232892 |gxc[1]#_g232893_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp232892
                               _%hd229326229433%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229327229436%_))
                                (let ((_%e229328229439%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl229327229436%_))))
                                  (let ((_%hd229329229443%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229328229439%_)))
                                        (_%tl229330229446%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229328229439%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl229330229446%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229324229426%_))
                                            (let ((_%e229331229449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl229324229426%_))))
                                              (let ((_%hd229332229453%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229331229449%_)))
                                                    (_%tl229333229456%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229331229449%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd229332229453%_))
                                                    (let ((_%e229334229459%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd229332229453%_))))
                                                      (if (equal? _%e229334229459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl229333229456%_))
                      (let ((_%e229335229463%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl229333229456%_))))
                        (let ((_%hd229336229467%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229335229463%_)))
                              (_%tl229337229470%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229335229463%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd229336229467%_))
                              (let ((_%e229338229473%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd229336229467%_))))
                                (let ((_%hd229339229477%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229338229473%_)))
                                      (_%tl229340229480%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229338229473%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd229339229477%_))
                                      (if (let ((__tmp232894
                                                 |gxc[1]#_g232895_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp232894
                                             _%hd229339229477%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl229340229480%_))
                                              (let ((_%e229341229483%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl229340229480%_))))
                                                (let ((_%hd229342229487%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e229341229483%_)))
                                                      (_%tl229343229490%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e229341229483%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl229343229490%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl229337229470%_))
                                                          (let ((_%e229344229493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl229337229470%_))))
                    (let ((_%hd229345229497%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229344229493%_)))
                          (_%tl229346229500%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229344229493%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd229345229497%_))
                          (let ((_%e229347229503%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd229345229497%_))))
                            (if (equal? _%e229347229503%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl229346229500%_))
                                    (let ((_%e229348229507%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl229346229500%_))))
                                      (let ((_%hd229349229511%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229348229507%_)))
                                            (_%tl229350229514%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229348229507%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd229349229511%_))
                                            (let ((_%e229351229517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd229349229511%_))))
                                              (let ((_%hd229352229521%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229351229517%_)))
                                                    (_%tl229353229524%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229351229517%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd229352229521%_))
                                                    (if (let ((__tmp232896
                                                               |gxc[1]#_g232897_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp232896
                                                           _%hd229352229521%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl229353229524%_))
                                                            (let ((_%e229354229527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl229353229524%_))))
                      (let ((_%hd229355229531%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229354229527%_)))
                            (_%tl229356229534%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229354229527%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229356229534%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229350229514%_))
                                (let ((_%e229357229537%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl229350229514%_))))
                                  (let ((_%hd229358229541%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229357229537%_)))
                                        (_%tl229359229544%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229357229537%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd229358229541%_))
                                        (let ((_%e229360229547%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229358229541%_))))
                                          (if (equal? _%e229360229547%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl229359229544%_))
                                                  (let ((_%e229361229551%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl229359229544%_))))
                                                    (let ((_%hd229362229555%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229361229551%_)))
                                                          (_%tl229363229558%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229361229551%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd229362229555%_))
                                                          (let ((_%e229364229561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd229362229555%_))))
                    (let ((_%hd229365229565%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229364229561%_)))
                          (_%tl229366229568%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229364229561%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd229365229565%_))
                          (if (let ((__tmp232898 |gxc[1]#_g232899_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp232898
                                 _%hd229365229565%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl229366229568%_))
                                  (let ((_%e229367229571%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl229366229568%_))))
                                    (let ((_%hd229368229575%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e229367229571%_)))
                                          (_%tl229369229578%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e229367229571%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl229369229578%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl229363229558%_))
                                              (let ((_%e229370229581%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl229363229558%_))))
                                                (let ((_%hd229371229585%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e229370229581%_)))
                                                      (_%tl229372229588%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e229370229581%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd229371229585%_))
                                                      (let ((_%e229373229591%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd229371229585%_))))
                (if (equal? _%e229373229591%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl229372229588%_))
                        (let ((_%e229374229595%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl229372229588%_))))
                          (let ((_%hd229375229599%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229374229595%_)))
                                (_%tl229376229602%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229374229595%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd229375229599%_))
                                (let ((_%e229377229605%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd229375229599%_))))
                                  (let ((_%hd229378229609%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229377229605%_)))
                                        (_%tl229379229612%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229377229605%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd229378229609%_))
                                        (if (let ((__tmp232900
                                                   |gxc[1]#_g232901_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp232900
                                               _%hd229378229609%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229379229612%_))
                                                (let ((_%e229380229615%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl229379229612%_))))
                                                  (let ((_%hd229381229619%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229380229615%_)))
                                                        (_%tl229382229622%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229380229615%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229382229622%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl229376229602%_))
                                                            ((lambda (_%g229310229625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229311229627%_
                              _%g229312229628%_
                              _%g229313229629%_
                              _%g229314229630%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g229311229627%_))
                           (cons _%g229311229627%_
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
                       (cons _%g229313229629%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g229310229625%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd229381229619%_
                     _%hd229368229575%_
                     _%hd229355229531%_
                     _%hd229342229487%_
                     _%hd229329229443%_)
                    (_%g229308229388%_ _%g229309229392%_))
                (_%g229308229388%_ _%g229309229392%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g229308229388%_
                                                 _%g229309229392%_))
                                            (_%g229308229388%_
                                             _%g229309229392%_))
                                        (_%g229308229388%_
                                         _%g229309229392%_))))
                                (_%g229308229388%_ _%g229309229392%_))))
                        (_%g229308229388%_ _%g229309229392%_))
                    (_%g229308229388%_ _%g229309229392%_)))
              (_%g229308229388%_ _%g229309229392%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g229308229388%_
                                               _%g229309229392%_))
                                          (_%g229308229388%_
                                           _%g229309229392%_))))
                                  (_%g229308229388%_ _%g229309229392%_))
                              (_%g229308229388%_ _%g229309229392%_))
                          (_%g229308229388%_ _%g229309229392%_))))
                  (_%g229308229388%_ _%g229309229392%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g229308229388%_
                                                   _%g229309229392%_))
                                              (_%g229308229388%_
                                               _%g229309229392%_)))
                                        (_%g229308229388%_
                                         _%g229309229392%_))))
                                (_%g229308229388%_ _%g229309229392%_))
                            (_%g229308229388%_ _%g229309229392%_))))
                    (_%g229308229388%_ _%g229309229392%_))
                (_%g229308229388%_ _%g229309229392%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229308229388%_
                                                     _%g229309229392%_))))
                                            (_%g229308229388%_
                                             _%g229309229392%_))))
                                    (_%g229308229388%_ _%g229309229392%_))
                                (_%g229308229388%_ _%g229309229392%_)))
                          (_%g229308229388%_ _%g229309229392%_))))
                  (_%g229308229388%_ _%g229309229392%_))
              (_%g229308229388%_ _%g229309229392%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g229308229388%_
                                               _%g229309229392%_))
                                          (_%g229308229388%_
                                           _%g229309229392%_))
                                      (_%g229308229388%_ _%g229309229392%_))))
                              (_%g229308229388%_ _%g229309229392%_))))
                      (_%g229308229388%_ _%g229309229392%_))
                  (_%g229308229388%_ _%g229309229392%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229308229388%_
                                                     _%g229309229392%_))))
                                            (_%g229308229388%_
                                             _%g229309229392%_))
                                        (_%g229308229388%_
                                         _%g229309229392%_))))
                                (_%g229308229388%_ _%g229309229392%_))
                            (_%g229308229388%_ _%g229309229392%_))
                        (_%g229308229388%_ _%g229309229392%_))))
                (_%g229308229388%_ _%g229309229392%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g229308229388%_
                                                 _%g229309229392%_))
                                            (_%g229308229388%_
                                             _%g229309229392%_)))
                                      (_%g229308229388%_ _%g229309229392%_))))
                              (_%g229308229388%_ _%g229309229392%_))))
                      (_%g229308229388%_ _%g229309229392%_)))))
          (_%g229307229690%_ _%sig229305%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx230462%_)
        (let* ((_%g230465230483%_
                (lambda (_%g230466230479%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230466230479%_))))
               (_%g230464230538%_
                (lambda (_%g230466230487%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230466230487%_))
                      (let ((_%e230469230490%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230466230487%_))))
                        (let ((_%hd230470230494%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230469230490%_)))
                              (_%tl230471230497%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230469230490%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230471230497%_))
                              (let ((_%e230472230500%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230471230497%_))))
                                (let ((_%hd230473230504%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230472230500%_)))
                                      (_%tl230474230507%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230472230500%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl230474230507%_))
                                      (let ((_%e230475230510%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl230474230507%_))))
                                        (let ((_%hd230476230514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230475230510%_)))
                                              (_%tl230477230517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230475230510%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl230477230517%_))
                                              ((lambda (_%g230467230520%_
                                                        _%g230468230522%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g230468230522%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g230467230520%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx230462%_
                                                        _%g230468230522%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx230462%_
                                                        _%g230467230520%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g230468230522%_
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
                                                   (cons _%g230467230520%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g230465230483%_
                                                      _%g230466230487%_)))
                                               _%hd230476230514%_
                                               _%hd230473230504%_)
                                              (_%g230465230483%_
                                               _%g230466230487%_))))
                                      (_%g230465230483%_ _%g230466230487%_))))
                              (_%g230465230483%_ _%g230466230487%_))))
                      (_%g230465230483%_ _%g230466230487%_)))))
          (_%g230464230538%_ _%stx230462%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx230542%_)
        (let* ((_%g230545230569%_
                (lambda (_%g230546230565%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230546230565%_))))
               (_%g230544230850%_
                (lambda (_%g230546230573%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230546230573%_))
                      (let ((_%e230549230576%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230546230573%_))))
                        (let ((_%hd230550230580%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230549230576%_)))
                              (_%tl230551230583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230549230576%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230551230583%_))
                              (let ((_%e230552230586%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230551230583%_))))
                                (let ((_%hd230553230590%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230552230586%_)))
                                      (_%tl230554230593%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230552230586%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230554230593%_))
                                      (let ((_g232902_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl230554230593%_
                                                '0))))
                                        (begin
                                          (let ((_g232903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232902_)
                                                       (##values-length
                                                        _g232902_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232903_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232903_)))
                                          (let ((_%target230555230596%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232902_ 0)))
                                                (_%tl230557230599%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232902_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl230557230599%_))
                                                (letrec ((_%loop230558230602%_
                                                          (lambda (_%hd230556230606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature230562230609%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd230556230606%_))
                        (let ((_%e230559230611%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd230556230606%_))))
                          (let ((_%lp-hd230560230615%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230559230611%_)))
                                (_%lp-tl230561230618%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230559230611%_))))
                            (_%loop230558230602%_
                             _%lp-tl230561230618%_
                             (cons _%lp-hd230560230615%_
                                   _%signature230562230609%_))))
                        (let ((_%signature230563230621%_
                               (reverse _%signature230562230609%_)))
                          ((lambda (_%g230547230624%_ _%g230548230626%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g230548230626%_))
                                 (let* ((_%g230644230659%_
                                         (lambda (_%g230645230655%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g230645230655%_))))
                                        (_%g230643230838%_
                                         (lambda (_%g230645230663%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g230645230663%_))
                                               (let ((_%e230648230666%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g230645230663%_))))
                                                 (let ((_%hd230649230670%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e230648230666%_)))
                                                       (_%tl230650230673%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e230648230666%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl230650230673%_))
                                                       (let ((_%e230651230676%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl230650230673%_))))
                 (let ((_%hd230652230680%_
                        (let ()
                          (declare (not safe))
                          (##car _%e230651230676%_)))
                       (_%tl230653230683%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230651230676%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl230653230683%_))
                       ((lambda (_%g230646230686%_ _%g230647230688%_)
                          (let* ((_%g230704230712%_
                                  (lambda (_%g230705230708%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g230705230708%_))))
                                 (_%g230703230834%_
                                  (lambda (_%g230705230716%_)
                                    ((lambda (_%g230706230719%_)
                                       (let* ((_%unchecked230732%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g230646230686%_))
                                              (_%g230735230743%_
                                               (lambda (_%g230736230739%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g230736230739%_))))
                                              (_%g230734230766%_
                                               (lambda (_%g230736230747%_)
                                                 ((lambda (_%g230737230750%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g230706230719%_
                                                                (cons _%g230737230750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g230736230747%_))))
                                         (_%g230734230766%_
                                          (if _%unchecked230732%_
                                              (let* ((_%g230770230785%_
                                                      (lambda (_%g230771230781%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g230771230781%_))))
                                                     (_%g230769230830%_
                                                      (lambda (_%g230771230789%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g230771230789%_))
                                                            (let ((_%e230774230792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g230771230789%_))))
                      (let ((_%hd230775230796%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230774230792%_)))
                            (_%tl230776230799%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230774230792%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230776230799%_))
                            (let ((_%e230777230802%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl230776230799%_))))
                              (let ((_%hd230778230806%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230777230802%_)))
                                    (_%tl230779230809%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230777230802%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl230779230809%_))
                                    ((lambda (_%g230772230812%_
                                              _%g230773230814%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g230773230814%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g230647230688%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g230772230812%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd230778230806%_
                                     _%hd230775230796%_)
                                    (_%g230770230785%_ _%g230771230789%_))))
                            (_%g230770230785%_ _%g230771230789%_))))
                    (_%g230770230785%_ _%g230771230789%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230769230830%_
                                                 _%unchecked230732%_))
                                              '(begin)))))
                                     _%g230705230716%_))))
                            (_%g230703230834%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g230548230626%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g230647230688%_ '()))
                   (cons '#f (cons 'signature: (cons _%g230646230686%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd230652230680%_
                        _%hd230649230670%_)
                       (_%g230644230659%_ _%g230645230663%_))))
               (_%g230644230659%_ _%g230645230663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230644230659%_
                                                _%g230645230663%_)))))
                                   (_%g230643230838%_
                                    (|gxc[1]#parse-signature|
                                     _%stx230542%_
                                     _%g230548230626%_
                                     (let ((__tmp232904
                                            (lambda (_%g230841230844%_
                                                     _%g230842230847%_)
                                              (cons _%g230841230844%_
                                                    _%g230842230847%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp232904
                                        '()
                                        _%g230547230624%_)))))
                                 (_%g230545230569%_ _%g230546230573%_)))
                           _%signature230563230621%_
                           _%hd230553230590%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop230558230602%_
                                                   _%target230555230596%_
                                                   '()))
                                                (_%g230545230569%_
                                                 _%g230546230573%_)))))
                                      (_%g230545230569%_ _%g230546230573%_))))
                              (_%g230545230569%_ _%g230546230573%_))))
                      (_%g230545230569%_ _%g230546230573%_)))))
          (_%g230544230850%_ _%stx230542%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx230855%_)
        (let* ((_%g230858230882%_
                (lambda (_%g230859230878%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230859230878%_))))
               (_%g230857231757%_
                (lambda (_%g230859230886%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230859230886%_))
                      (let ((_%e230862230889%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230859230886%_))))
                        (let ((_%hd230863230893%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230862230889%_)))
                              (_%tl230864230896%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230862230889%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230864230896%_))
                              (let ((_%e230865230899%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230864230896%_))))
                                (let ((_%hd230866230903%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230865230899%_)))
                                      (_%tl230867230906%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230865230899%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230867230906%_))
                                      (let ((_g232905_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl230867230906%_
                                                '0))))
                                        (begin
                                          (let ((_g232906_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232905_)
                                                       (##values-length
                                                        _g232905_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232906_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232906_)))
                                          (let ((_%target230868230909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232905_ 0)))
                                                (_%tl230870230912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232905_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl230870230912%_))
                                                (letrec ((_%loop230871230915%_
                                                          (lambda (_%hd230869230919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature230875230922%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd230869230919%_))
                        (let ((_%e230872230924%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd230869230919%_))))
                          (let ((_%lp-hd230873230928%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230872230924%_)))
                                (_%lp-tl230874230931%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230872230924%_))))
                            (_%loop230871230915%_
                             _%lp-tl230874230931%_
                             (cons _%lp-hd230873230928%_
                                   _%case-signature230875230922%_))))
                        (let ((_%case-signature230876230934%_
                               (reverse _%case-signature230875230922%_)))
                          ((lambda (_%g230860230937%_ _%g230861230939%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g230861230939%_))
                                 (let* ((_%signatures230970%_
                                         (map (lambda (_%g230956230958%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx230855%_
                                                 _%g230861230939%_
                                                 _%g230956230958%_))
                                              (let ((__tmp232907
                                                     (lambda (_%g230961230964%_
                                                              _%g230962230967%_)
                                                       (cons _%g230961230964%_
                                                             _%g230962230967%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp232907
                                                 '()
                                                 _%g230860230937%_))))
                                        (_%g230973230999%_
                                         (lambda (_%g230974230995%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g230974230995%_))))
                                        (_%g230972231753%_
                                         (lambda (_%g230974231003%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g230974231003%_))
                                               (let ((_g232908_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g230974231003%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g232909_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g232908_)
                        (##values-length _g232908_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g232909_ 2)))
                 (error "Context expects 2 values" _g232909_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target230977231006%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g232908_
                                                             0)))
                                                         (_%tl230979231009%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g232908_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl230979231009%_))
                                                         (letrec ((_%loop230980231012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd230978231016%_
                                    _%sig230984231019%_
                                    _%arity230985231020%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd230978231016%_))
                                 (let ((_%e230981231022%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd230978231016%_))))
                                   (let ((_%lp-hd230982231026%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e230981231022%_)))
                                         (_%lp-tl230983231029%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e230981231022%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd230982231026%_))
                                         (let ((_%e230988231032%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd230982231026%_))))
                                           (let ((_%hd230989231036%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e230988231032%_)))
                                                 (_%tl230990231039%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e230988231032%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl230990231039%_))
                                                 (let ((_%e230991231042%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl230990231039%_))))
                                                   (let ((_%hd230992231046%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e230991231042%_)))
                                                         (_%tl230993231049%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e230991231042%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl230993231049%_))
                                                         (_%loop230980231012%_
                                                          _%lp-tl230983231029%_
                                                          (cons _%hd230992231046%_
                                                                _%sig230984231019%_)
                                                          (cons _%hd230989231036%_
                                                                _%arity230985231020%_))
                                                         (_%g230973230999%_
                                                          _%g230974231003%_))))
                                                 (_%g230973230999%_
                                                  _%g230974231003%_))))
                                         (_%g230973230999%_
                                          _%g230974231003%_))))
                                 (let ((_%sig230986231052%_
                                        (reverse _%sig230984231019%_))
                                       (_%arity230987231054%_
                                        (reverse _%arity230985231020%_)))
                                   ((lambda (_%g230975231056%_
                                             _%g230976231058%_)
                                      (let* ((_%g231075231083%_
                                              (lambda (_%g231076231079%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g231076231079%_))))
                                             (_%g231074231738%_
                                              (lambda (_%g231076231087%_)
                                                ((lambda (_%g231077231090%_)
                                                   (let* ((_%g231103231111%_
                                                           (lambda (_%g231104231107%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g231104231107%_))))
                  (_%g231102231133%_
                   (lambda (_%g231104231115%_)
                     ((lambda (_%g231105231118%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g231077231090%_
                                    (cons _%g231105231118%_ '()))))
                      _%g231104231115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g231102231133%_
                                                      (let ((_g232910_
                                                             (let _%loop231137%_ ((_%rest231140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures230970%_)
                                          (_%unchecked-proc231142%_ '#f)
                                          (_%unchecked-clauses231143%_ '()))
                       (let* ((_%rest231144231152%_ _%rest231140%_)
                              (_%else231146231164%_
                               (lambda ()
                                 (values _%unchecked-proc231142%_
                                         (reverse!
                                          _%unchecked-clauses231143%_))))
                              (_%K231148231605%_
                               (lambda (_%rest231168%_ _%hd231170%_)
                                 (let* ((_%g231172231259%_
                                         (lambda (_%g231173231255%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g231173231255%_))))
                                        (_%g231171231601%_
                                         (lambda (_%g231173231263%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g231173231263%_))
                                               (let ((_%e231180231266%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g231173231263%_))))
                                                 (let ((_%hd231181231270%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231180231266%_)))
                                                       (_%tl231182231273%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231180231266%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl231182231273%_))
                                                       (let ((_%e231183231276%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl231182231273%_))))
                 (let ((_%hd231184231280%_
                        (let ()
                          (declare (not safe))
                          (##car _%e231183231276%_)))
                       (_%tl231185231283%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e231183231276%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd231184231280%_))
                       (let ((_%e231186231286%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd231184231280%_))))
                         (let ((_%hd231187231290%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231186231286%_)))
                               (_%tl231188231293%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231186231286%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl231188231293%_))
                               (let ((_%e231189231296%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl231188231293%_))))
                                 (let ((_%hd231190231300%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231189231296%_)))
                                       (_%tl231191231303%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231189231296%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd231190231300%_))
                                       (let ((_%e231192231306%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd231190231300%_))))
                                         (if (equal? _%e231192231306%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl231191231303%_))
                                                 (let ((_%e231193231310%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl231191231303%_))))
                                                   (let ((_%hd231194231314%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e231193231310%_)))
                                                         (_%tl231195231317%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e231193231310%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd231194231314%_))
                                                         (let ((_%e231196231320%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd231194231314%_))))
                   (let ((_%hd231197231324%_
                          (let ()
                            (declare (not safe))
                            (##car _%e231196231320%_)))
                         (_%tl231198231327%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e231196231320%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd231197231324%_))
                         (if (let ((__tmp232912 |gxc[1]#_g232913_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp232912
                                _%hd231197231324%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl231198231327%_))
                                 (let ((_%e231199231330%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl231198231327%_))))
                                   (let ((_%hd231200231334%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231199231330%_)))
                                         (_%tl231201231337%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231199231330%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl231201231337%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl231195231317%_))
                                             (let ((_%e231202231340%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl231195231317%_))))
                                               (let ((_%hd231203231344%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231202231340%_)))
                                                     (_%tl231204231347%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231202231340%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd231203231344%_))
                                                     (let ((_%e231205231350%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd231203231344%_))))
                                                       (if (equal? _%e231205231350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl231204231347%_))
                       (let ((_%e231206231354%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl231204231347%_))))
                         (let ((_%hd231207231358%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231206231354%_)))
                               (_%tl231208231361%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231206231354%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd231207231358%_))
                               (let ((_%e231209231364%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd231207231358%_))))
                                 (let ((_%hd231210231368%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231209231364%_)))
                                       (_%tl231211231371%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231209231364%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd231210231368%_))
                                       (if (let ((__tmp232914
                                                  |gxc[1]#_g232915_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp232914
                                              _%hd231210231368%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl231211231371%_))
                                               (let ((_%e231212231374%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl231211231371%_))))
                                                 (let ((_%hd231213231378%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231212231374%_)))
                                                       (_%tl231214231381%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231212231374%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl231214231381%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl231208231361%_))
                                                           (let ((_%e231215231384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl231208231361%_))))
                     (let ((_%hd231216231388%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231215231384%_)))
                           (_%tl231217231391%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231215231384%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd231216231388%_))
                           (let ((_%e231218231394%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd231216231388%_))))
                             (if (equal? _%e231218231394%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl231217231391%_))
                                     (let ((_%e231219231398%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl231217231391%_))))
                                       (let ((_%hd231220231402%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e231219231398%_)))
                                             (_%tl231221231405%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e231219231398%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd231220231402%_))
                                             (let ((_%e231222231408%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd231220231402%_))))
                                               (let ((_%hd231223231412%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231222231408%_)))
                                                     (_%tl231224231415%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231222231408%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd231223231412%_))
                                                     (if (let ((__tmp232916
                                                                |gxc[1]#_g232917_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp232916
                                                            _%hd231223231412%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl231224231415%_))
                     (let ((_%e231225231418%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl231224231415%_))))
                       (let ((_%hd231226231422%_
                              (let ()
                                (declare (not safe))
                                (##car _%e231225231418%_)))
                             (_%tl231227231425%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e231225231418%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl231227231425%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl231221231405%_))
                                 (let ((_%e231228231428%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl231221231405%_))))
                                   (let ((_%hd231229231432%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231228231428%_)))
                                         (_%tl231230231435%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231228231428%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd231229231432%_))
                                         (let ((_%e231231231438%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd231229231432%_))))
                                           (if (equal? _%e231231231438%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl231230231435%_))
                                                   (let ((_%e231232231442%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl231230231435%_))))
                                                     (let ((_%hd231233231446%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e231232231442%_)))
                                                           (_%tl231234231449%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e231232231442%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd231233231446%_))
                                                           (let ((_%e231235231452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd231233231446%_))))
                     (let ((_%hd231236231456%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231235231452%_)))
                           (_%tl231237231459%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231235231452%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd231236231456%_))
                           (if (let ((__tmp232918 |gxc[1]#_g232919_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp232918
                                  _%hd231236231456%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl231237231459%_))
                                   (let ((_%e231238231462%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl231237231459%_))))
                                     (let ((_%hd231239231466%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e231238231462%_)))
                                           (_%tl231240231469%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e231238231462%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl231240231469%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl231234231449%_))
                                               (let ((_%e231241231472%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl231234231449%_))))
                                                 (let ((_%hd231242231476%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231241231472%_)))
                                                       (_%tl231243231479%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231241231472%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd231242231476%_))
                                                       (let ((_%e231244231482%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd231242231476%_))))
                 (if (equal? _%e231244231482%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl231243231479%_))
                         (let ((_%e231245231486%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl231243231479%_))))
                           (let ((_%hd231246231490%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e231245231486%_)))
                                 (_%tl231247231493%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e231245231486%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd231246231490%_))
                                 (let ((_%e231248231496%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd231246231490%_))))
                                   (let ((_%hd231249231500%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231248231496%_)))
                                         (_%tl231250231503%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231248231496%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd231249231500%_))
                                         (if (let ((__tmp232920
                                                    |gxc[1]#_g232921_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp232920
                                                _%hd231249231500%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl231250231503%_))
                                                 (let ((_%e231251231506%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl231250231503%_))))
                                                   (let ((_%hd231252231510%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e231251231506%_)))
                                                         (_%tl231253231513%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e231251231506%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl231253231513%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl231247231493%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl231185231283%_))
                         ((lambda (_%g231174231516%_
                                   _%g231175231518%_
                                   _%g231176231519%_
                                   _%g231177231520%_
                                   _%g231178231521%_
                                   _%g231179231522%_)
                            (let ((_%clause231593%_
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
                                                     (cons _%g231179231522%_
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
                                                 (cons _%g231177231520%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231174231516%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked231595%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g231175231518%_))))
                              (_%loop231137%_
                               _%rest231168%_
                               (let ((_%$e231597%_ _%unchecked231595%_))
                                 (if _%$e231597%_
                                     _%$e231597%_
                                     _%unchecked-proc231142%_))
                               (cons _%clause231593%_
                                     _%unchecked-clauses231143%_))))
                          _%hd231252231510%_
                          _%hd231239231466%_
                          _%hd231226231422%_
                          _%hd231213231378%_
                          _%hd231200231334%_
                          _%hd231181231270%_)
                         (_%g231172231259%_ _%g231173231263%_))
                     (_%g231172231259%_ _%g231173231263%_))
                 (_%g231172231259%_ _%g231173231263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g231172231259%_
                                                  _%g231173231263%_))
                                             (_%g231172231259%_
                                              _%g231173231263%_))
                                         (_%g231172231259%_
                                          _%g231173231263%_))))
                                 (_%g231172231259%_ _%g231173231263%_))))
                         (_%g231172231259%_ _%g231173231263%_))
                     (_%g231172231259%_ _%g231173231263%_)))
               (_%g231172231259%_ _%g231173231263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231172231259%_
                                                _%g231173231263%_))
                                           (_%g231172231259%_
                                            _%g231173231263%_))))
                                   (_%g231172231259%_ _%g231173231263%_))
                               (_%g231172231259%_ _%g231173231263%_))
                           (_%g231172231259%_ _%g231173231263%_))))
                   (_%g231172231259%_ _%g231173231263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g231172231259%_
                                                    _%g231173231263%_))
                                               (_%g231172231259%_
                                                _%g231173231263%_)))
                                         (_%g231172231259%_
                                          _%g231173231263%_))))
                                 (_%g231172231259%_ _%g231173231263%_))
                             (_%g231172231259%_ _%g231173231263%_))))
                     (_%g231172231259%_ _%g231173231263%_))
                 (_%g231172231259%_ _%g231173231263%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g231172231259%_
                                                      _%g231173231263%_))))
                                             (_%g231172231259%_
                                              _%g231173231263%_))))
                                     (_%g231172231259%_ _%g231173231263%_))
                                 (_%g231172231259%_ _%g231173231263%_)))
                           (_%g231172231259%_ _%g231173231263%_))))
                   (_%g231172231259%_ _%g231173231263%_))
               (_%g231172231259%_ _%g231173231263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231172231259%_
                                                _%g231173231263%_))
                                           (_%g231172231259%_
                                            _%g231173231263%_))
                                       (_%g231172231259%_ _%g231173231263%_))))
                               (_%g231172231259%_ _%g231173231263%_))))
                       (_%g231172231259%_ _%g231173231263%_))
                   (_%g231172231259%_ _%g231173231263%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g231172231259%_
                                                      _%g231173231263%_))))
                                             (_%g231172231259%_
                                              _%g231173231263%_))
                                         (_%g231172231259%_
                                          _%g231173231263%_))))
                                 (_%g231172231259%_ _%g231173231263%_))
                             (_%g231172231259%_ _%g231173231263%_))
                         (_%g231172231259%_ _%g231173231263%_))))
                 (_%g231172231259%_ _%g231173231263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g231172231259%_
                                                  _%g231173231263%_))
                                             (_%g231172231259%_
                                              _%g231173231263%_)))
                                       (_%g231172231259%_ _%g231173231263%_))))
                               (_%g231172231259%_ _%g231173231263%_))))
                       (_%g231172231259%_ _%g231173231263%_))))
               (_%g231172231259%_ _%g231173231263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231172231259%_
                                                _%g231173231263%_)))))
                                   (_%g231171231601%_ _%hd231170%_)))))
                         (if (pair? _%rest231144231152%_)
                             (let ((_%hd231149231609%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest231144231152%_)))
                                   (_%tl231150231612%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest231144231152%_))))
                               (let* ((_%hd231615%_ _%hd231149231609%_)
                                      (_%rest231618%_ _%tl231150231612%_))
                                 (_%K231148231605%_
                                  _%rest231618%_
                                  _%hd231615%_)))
                             (_%else231146231164%_))))))
                (begin
                  (let ((_g232911_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g232910_)
                               (##values-length _g232910_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g232911_ 2)))
                        (error "Context expects 2 values" _g232911_)))
                  (let ((_%unchecked-proc231621%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232910_ 0)))
                        (_%unchecked-clauses231623%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232910_ 1))))
                    (if _%unchecked-proc231621%_
                        (let* ((_%g231625231649%_
                                (lambda (_%g231626231645%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g231626231645%_))))
                               (_%g231624231734%_
                                (lambda (_%g231626231653%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g231626231653%_))
                                      (let ((_%e231629231656%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g231626231653%_))))
                                        (let ((_%hd231630231660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231629231656%_)))
                                              (_%tl231631231663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231629231656%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231631231663%_))
                                              (let ((_%e231632231666%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl231631231663%_))))
                                                (let ((_%hd231633231670%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231632231666%_)))
                                                      (_%tl231634231673%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231632231666%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd231633231670%_))
                                                      (let ((_g232922_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd231633231670%_ '0))))
                (begin
                  (let ((_g232923_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g232922_)
                               (##values-length _g232922_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g232923_ 2)))
                        (error "Context expects 2 values" _g232923_)))
                  (let ((_%target231635231676%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232922_ 0)))
                        (_%tl231637231679%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232922_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl231637231679%_))
                        (letrec ((_%loop231638231682%_
                                  (lambda (_%hd231636231686%_
                                           _%clause231642231689%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd231636231686%_))
                                        (let ((_%e231639231691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd231636231686%_))))
                                          (let ((_%lp-hd231640231695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e231639231691%_)))
                                                (_%lp-tl231641231698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e231639231691%_))))
                                            (_%loop231638231682%_
                                             _%lp-tl231641231698%_
                                             (cons _%lp-hd231640231695%_
                                                   _%clause231642231689%_))))
                                        (let ((_%clause231643231701%_
                                               (reverse _%clause231642231689%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl231634231673%_))
                                              ((lambda (_%g231627231704%_
                                                        _%g231628231706%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g231628231706%_
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
                                             (let ((__tmp232924
                                                    (lambda (_%g231725231728%_
                                                             _%g231726231731%_)
                                                      (cons _%g231725231728%_
                                                            _%g231726231731%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp232924
                                                '()
                                                _%g231627231704%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause231643231701%_
                                               _%hd231630231660%_)
                                              (_%g231625231649%_
                                               _%g231626231653%_)))))))
                          (_%loop231638231682%_ _%target231635231676%_ '()))
                        (_%g231625231649%_ _%g231626231653%_)))))
              (_%g231625231649%_ _%g231626231653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g231625231649%_
                                               _%g231626231653%_))))
                                      (_%g231625231649%_ _%g231626231653%_)))))
                          (_%g231624231734%_
                           (list _%unchecked-proc231621%_
                                 _%unchecked-clauses231623%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g231076231087%_))))
                                        (_%g231074231738%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g230861230939%_
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
                                          _%g230975231056%_
                                          _%g230976231058%_))
                                       (let ((__tmp232925
                                              (lambda (_%g231741231745%_
                                                       _%g231742231748%_
                                                       _%g231743231750%_)
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
                                (cons _%g231742231748%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g231741231745%_ '())))))
              _%g231743231750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp232925
                                          '()
                                          _%g230975231056%_
                                          _%g230976231058%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig230986231052%_
                                    _%arity230987231054%_))))))
                   (_%loop230980231012%_ _%target230977231006%_ '() '()))
                 (_%g230973230999%_ _%g230974231003%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230973230999%_
                                                _%g230974231003%_)))))
                                   (_%g230972231753%_ _%signatures230970%_))
                                 (_%g230858230882%_ _%g230859230886%_)))
                           _%case-signature230876230934%_
                           _%hd230866230903%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop230871230915%_
                                                   _%target230868230909%_
                                                   '()))
                                                (_%g230858230882%_
                                                 _%g230859230886%_)))))
                                      (_%g230858230882%_ _%g230859230886%_))))
                              (_%g230858230882%_ _%g230859230886%_))))
                      (_%g230858230882%_ _%g230859230886%_)))))
          (_%g230857231757%_ _%stx230855%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx231765%_)
        (let* ((_%__stx232745232746%_ _%$stx231765%_)
               (_%g231771231831%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232745232746%_)))))
          (let ((_%__kont232748232749%_
                 (lambda (_%g231773232053%_ _%g231774232055%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231774232055%_ '()))
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
                                                       (cons _%g231774232055%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231773232053%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont232750232751%_
                 (lambda (_%g231788231978%_
                          _%g231789231980%_
                          _%g231790231981%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231790231981%_ '()))
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
                                                       (cons _%g231790231981%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231789231980%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g231788231978%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont232752232753%_
                 (lambda (_%g231807231892%_
                          _%g231808231894%_
                          _%g231809231895%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231809231895%_ '()))
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
                                                       (cons _%g231809231895%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231808231894%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g231807231892%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232745232746%_))
                (let ((_%e231775232009%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232745232746%_))))
                  (let ((_%tl231777232016%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231775232009%_)))
                        (_%hd231776232013%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231775232009%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl231777232016%_))
                        (let ((_%e231778232019%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl231777232016%_))))
                          (let ((_%tl231780232026%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e231778232019%_)))
                                (_%hd231779232023%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e231778232019%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd231779232023%_))
                                (let ((_%e231781232029%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd231779232023%_))))
                                  (if (equal? _%e231781232029%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl231780232026%_))
                                          (let ((_%e231782232033%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl231780232026%_))))
                                            (let ((_%tl231784232040%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e231782232033%_)))
                                                  (_%hd231783232037%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e231782232033%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl231784232040%_))
                                                  (let ((_%e231785232043%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl231784232040%_))))
                                                    (let ((_%tl231787232050%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231785232043%_)))
                                                          (_%hd231786232047%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231785232043%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl231787232050%_))
                                                          (_%__kont232748232749%_
                                                           _%hd231786232047%_
                                                           _%hd231783232037%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g231771231831%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g231771231831%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g231771231831%_)))
                                      (if (equal? _%e231781232029%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231780232026%_))
                                              (let ((_%e231798231948%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl231780232026%_))))
                                                (let ((_%tl231800231955%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231798231948%_)))
                                                      (_%hd231799231952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231798231948%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl231800231955%_))
                                                      (let ((_%e231801231958%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl231800231955%_))))
                (let ((_%tl231803231965%_
                       (let () (declare (not safe)) (##cdr _%e231801231958%_)))
                      (_%hd231802231962%_
                       (let ()
                         (declare (not safe))
                         (##car _%e231801231958%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl231803231965%_))
                      (let ((_%e231804231968%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl231803231965%_))))
                        (let ((_%tl231806231975%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231804231968%_)))
                              (_%hd231805231972%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231804231968%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl231806231975%_))
                              (_%__kont232750232751%_
                               _%hd231805231972%_
                               _%hd231802231962%_
                               _%hd231799231952%_)
                              (let ()
                                (declare (not safe))
                                (_%g231771231831%_)))))
                      (let () (declare (not safe)) (_%g231771231831%_)))))
              (let () (declare (not safe)) (_%g231771231831%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g231771231831%_)))
                                          (if (equal? _%e231781232029%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl231780232026%_))
                                                  (let ((_%e231817231862%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl231780232026%_))))
                                                    (let ((_%tl231819231869%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231817231862%_)))
                                                          (_%hd231818231866%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231817231862%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl231819231869%_))
                                                          (let ((_%e231820231872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl231819231869%_))))
                    (let ((_%tl231822231879%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e231820231872%_)))
                          (_%hd231821231876%_
                           (let ()
                             (declare (not safe))
                             (##car _%e231820231872%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231822231879%_))
                          (let ((_%e231823231882%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl231822231879%_))))
                            (let ((_%tl231825231889%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231823231882%_)))
                                  (_%hd231824231886%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231823231882%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl231825231889%_))
                                  (_%__kont232752232753%_
                                   _%hd231824231886%_
                                   _%hd231821231876%_
                                   _%hd231818231866%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g231771231831%_)))))
                          (let () (declare (not safe)) (_%g231771231831%_)))))
                  (let () (declare (not safe)) (_%g231771231831%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g231771231831%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g231771231831%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g231771231831%_)))))
                        (let () (declare (not safe)) (_%g231771231831%_)))))
                (let () (declare (not safe)) (_%g231771231831%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx232077%_)
        (let* ((_%g232081232101%_
                (lambda (_%g232082232097%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g232082232097%_))))
               (_%g232080232170%_
                (lambda (_%g232082232105%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g232082232105%_))
                      (let ((_%e232084232108%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g232082232105%_))))
                        (let ((_%hd232085232112%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e232084232108%_)))
                              (_%tl232086232115%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e232084232108%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl232086232115%_))
                              (let ((_g232926_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl232086232115%_
                                        '0))))
                                (begin
                                  (let ((_g232927_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232926_)
                                               (##values-length _g232926_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232927_ 2)))
                                        (error "Context expects 2 values"
                                               _g232927_)))
                                  (let ((_%target232087232118%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232926_ 0)))
                                        (_%tl232089232121%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232926_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl232089232121%_))
                                        (letrec ((_%loop232090232124%_
                                                  (lambda (_%hd232088232128%_
                                                           _%decl232094232131%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd232088232128%_))
                                                        (let ((_%e232091232133%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd232088232128%_))))
                  (let ((_%lp-hd232092232137%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232091232133%_)))
                        (_%lp-tl232093232140%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232091232133%_))))
                    (_%loop232090232124%_
                     _%lp-tl232093232140%_
                     (cons _%lp-hd232092232137%_ _%decl232094232131%_))))
                (let ((_%decl232095232143%_ (reverse _%decl232094232131%_)))
                  ((lambda (_%g232083232146%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp232928
                                  (lambda (_%g232161232164%_ _%g232162232167%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g232161232164%_)
                                          _%g232162232167%_))))
                             (declare (not safe))
                             (__foldr1 __tmp232928 '() _%g232083232146%_))))
                   _%decl232095232143%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop232090232124%_
                                           _%target232087232118%_
                                           '()))
                                        (_%g232081232101%_
                                         _%g232082232105%_)))))
                              (_%g232081232101%_ _%g232082232105%_))))
                      (_%g232081232101%_ _%g232082232105%_)))))
          (_%g232080232170%_ _%$stx232077%_))))))
