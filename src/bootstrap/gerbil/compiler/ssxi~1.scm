(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g232882_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232889_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232891_|
    (##structure
     gx#syntax-quote::t
     'quote
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
  (define |gxc[1]#_g232909_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232911_|
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
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx226340%_)
        (let* ((_%g226344226362%_
                (lambda (_%g226345226358%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226345226358%_))))
               (_%g226343226417%_
                (lambda (_%g226345226366%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226345226366%_))
                      (let ((_%e226348226369%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226345226366%_))))
                        (let ((_%hd226349226373%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226348226369%_)))
                              (_%tl226350226376%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226348226369%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226350226376%_))
                              (let ((_%e226351226379%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226350226376%_))))
                                (let ((_%hd226352226383%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226351226379%_)))
                                      (_%tl226353226386%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226351226379%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226353226386%_))
                                      (let ((_%e226354226389%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226353226386%_))))
                                        (let ((_%hd226355226393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226354226389%_)))
                                              (_%tl226356226396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226354226389%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226356226396%_))
                                              ((lambda (_%g226346226399%_
                                                        _%g226347226401%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g226347226401%_))
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
                               (cons _%g226347226401%_ '()))
                         (cons _%g226346226399%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g226344226362%_
                                                      _%g226345226366%_)))
                                               _%hd226355226393%_
                                               _%hd226352226383%_)
                                              (_%g226344226362%_
                                               _%g226345226366%_))))
                                      (_%g226344226362%_ _%g226345226366%_))))
                              (_%g226344226362%_ _%g226345226366%_))))
                      (_%g226344226362%_ _%g226345226366%_)))))
          (_%g226343226417%_ _%$stx226340%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx226421%_)
        (let* ((_%g226425226443%_
                (lambda (_%g226426226439%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226426226439%_))))
               (_%g226424226498%_
                (lambda (_%g226426226447%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226426226447%_))
                      (let ((_%e226429226450%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226426226447%_))))
                        (let ((_%hd226430226454%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226429226450%_)))
                              (_%tl226431226457%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226429226450%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226431226457%_))
                              (let ((_%e226432226460%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226431226457%_))))
                                (let ((_%hd226433226464%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226432226460%_)))
                                      (_%tl226434226467%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226432226460%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226434226467%_))
                                      (let ((_%e226435226470%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226434226467%_))))
                                        (let ((_%hd226436226474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226435226470%_)))
                                              (_%tl226437226477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226435226470%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226437226477%_))
                                              ((lambda (_%g226427226480%_
                                                        _%g226428226482%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g226428226482%_))
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
                               (cons _%g226428226482%_ '()))
                         (cons _%g226427226480%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g226425226443%_
                                                      _%g226426226447%_)))
                                               _%hd226436226474%_
                                               _%hd226433226464%_)
                                              (_%g226425226443%_
                                               _%g226426226447%_))))
                                      (_%g226425226443%_ _%g226426226447%_))))
                              (_%g226425226443%_ _%g226426226447%_))))
                      (_%g226425226443%_ _%g226426226447%_)))))
          (_%g226424226498%_ _%$stx226421%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx226502%_)
        (let* ((_%g226506226535%_
                (lambda (_%g226507226531%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226507226531%_))))
               (_%g226505226631%_
                (lambda (_%g226507226539%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226507226539%_))
                      (let ((_%e226510226542%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226507226539%_))))
                        (let ((_%hd226511226546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226510226542%_)))
                              (_%tl226512226549%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226510226542%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl226512226549%_))
                              (let ((_g232860_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl226512226549%_
                                        '0))))
                                (begin
                                  (let ((_g232861_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232860_)
                                               (##values-length _g232860_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232861_ 2)))
                                        (error "Context expects 2 values"
                                               _g232861_)))
                                  (let ((_%target226513226552%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232860_ 0)))
                                        (_%tl226515226555%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232860_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226515226555%_))
                                        (letrec ((_%loop226516226558%_
                                                  (lambda (_%hd226514226562%_
                                                           _%type226520226565%_
                                                           _%symbol226521226566%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd226514226562%_))
                                                        (let ((_%e226517226568%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd226514226562%_))))
                  (let ((_%lp-hd226518226572%_
                         (let ()
                           (declare (not safe))
                           (##car _%e226517226568%_)))
                        (_%lp-tl226519226575%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e226517226568%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd226518226572%_))
                        (let ((_%e226524226578%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd226518226572%_))))
                          (let ((_%hd226525226582%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226524226578%_)))
                                (_%tl226526226585%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226524226578%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226526226585%_))
                                (let ((_%e226527226588%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl226526226585%_))))
                                  (let ((_%hd226528226592%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226527226588%_)))
                                        (_%tl226529226595%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226527226588%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226529226595%_))
                                        (_%loop226516226558%_
                                         _%lp-tl226519226575%_
                                         (cons _%hd226528226592%_
                                               _%type226520226565%_)
                                         (cons _%hd226525226582%_
                                               _%symbol226521226566%_))
                                        (_%g226506226535%_
                                         _%g226507226539%_))))
                                (_%g226506226535%_ _%g226507226539%_))))
                        (_%g226506226535%_ _%g226507226539%_))))
                (let ((_%type226522226598%_ (reverse _%type226520226565%_))
                      (_%symbol226523226600%_
                       (reverse _%symbol226521226566%_)))
                  ((lambda (_%g226508226602%_ _%g226509226604%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g226508226602%_
                                _%g226509226604%_))
                             (let ((__tmp232862
                                    (lambda (_%g226619226623%_
                                             _%g226620226626%_
                                             _%g226621226628%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g226620226626%_
                                                        (cons _%g226619226623%_
                                                              '())))
                                            _%g226621226628%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp232862
                                '()
                                _%g226508226602%_
                                _%g226509226604%_)))))
                   _%type226522226598%_
                   _%symbol226523226600%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop226516226558%_
                                           _%target226513226552%_
                                           '()
                                           '()))
                                        (_%g226506226535%_
                                         _%g226507226539%_)))))
                              (_%g226506226535%_ _%g226507226539%_))))
                      (_%g226506226535%_ _%g226507226539%_)))))
          (_%g226505226631%_ _%$stx226502%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx226636%_)
        (let* ((_%__stx232171232172%_ _%$stx226636%_)
               (_%g226641226683%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232171232172%_)))))
          (let ((_%__kont232174232175%_
                 (lambda (_%g226643226811%_
                          _%g226644226813%_
                          _%g226645226814%_
                          _%g226646226815%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g226646226815%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g226645226814%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g226644226813%_ '()))
                                           (cons _%g226643226811%_ '())))))))
                (_%__kont232176232177%_
                 (lambda (_%g226662226730%_
                          _%g226663226732%_
                          _%g226664226733%_
                          _%g226665226734%_)
                   (cons _%g226665226734%_
                         (cons _%g226664226733%_
                               (cons _%g226663226732%_
                                     (cons _%g226662226730%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match232210232211%_
                   (lambda (_%e226647226761%_
                            _%hd226648226765%_
                            _%tl226649226768%_
                            _%e226650226771%_
                            _%hd226651226775%_
                            _%tl226652226778%_
                            _%e226653226781%_
                            _%hd226654226785%_
                            _%tl226655226788%_
                            _%e226656226791%_
                            _%hd226657226795%_
                            _%tl226658226798%_
                            _%e226659226801%_
                            _%hd226660226805%_
                            _%tl226661226808%_)
                     (let ((_%g226643226811%_ _%hd226660226805%_)
                           (_%g226644226813%_ _%hd226657226795%_)
                           (_%g226645226814%_ _%hd226654226785%_)
                           (_%g226646226815%_ _%hd226651226775%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226646226815%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226645226814%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226644226813%_)))
                           (_%__kont232174232175%_
                            _%g226643226811%_
                            _%g226644226813%_
                            _%g226645226814%_
                            _%g226646226815%_)
                           (let ()
                             (declare (not safe))
                             (_%g226641226683%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232171232172%_))
                  (let ((_%e226647226761%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232171232172%_))))
                    (let ((_%tl226649226768%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e226647226761%_)))
                          (_%hd226648226765%_
                           (let ()
                             (declare (not safe))
                             (##car _%e226647226761%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226649226768%_))
                          (let ((_%e226650226771%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl226649226768%_))))
                            (let ((_%tl226652226778%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226650226771%_)))
                                  (_%hd226651226775%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226650226771%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl226652226778%_))
                                  (let ((_%e226653226781%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl226652226778%_))))
                                    (let ((_%tl226655226788%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e226653226781%_)))
                                          (_%hd226654226785%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e226653226781%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl226655226788%_))
                                          (let ((_%e226656226791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl226655226788%_))))
                                            (let ((_%tl226658226798%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e226656226791%_)))
                                                  (_%hd226657226795%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e226656226791%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl226658226798%_))
                                                  (let ((_%e226659226801%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl226658226798%_))))
                                                    (let ((_%tl226661226808%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e226659226801%_)))
                                                          (_%hd226660226805%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e226659226801%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl226661226808%_))
                                                          (_%__match232210232211%_
                                                           _%e226647226761%_
                                                           _%hd226648226765%_
                                                           _%tl226649226768%_
                                                           _%e226650226771%_
                                                           _%hd226651226775%_
                                                           _%tl226652226778%_
                                                           _%e226653226781%_
                                                           _%hd226654226785%_
                                                           _%tl226655226788%_
                                                           _%e226656226791%_
                                                           _%hd226657226795%_
                                                           _%tl226658226798%_
                                                           _%e226659226801%_
                                                           _%hd226660226805%_
                                                           _%tl226661226808%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g226641226683%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl226658226798%_))
                                                      (_%__kont232176232177%_
                                                       _%hd226657226795%_
                                                       _%hd226654226785%_
                                                       _%hd226651226775%_
                                                       _%hd226648226765%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g226641226683%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g226641226683%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g226641226683%_)))))
                          (let () (declare (not safe)) (_%g226641226683%_)))))
                  (let () (declare (not safe)) (_%g226641226683%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx226840%_)
        (let* ((_%g226844226879%_
                (lambda (_%g226845226875%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226845226875%_))))
               (_%g226843226992%_
                (lambda (_%g226845226883%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226845226883%_))
                      (let ((_%e226849226886%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226845226883%_))))
                        (let ((_%hd226850226890%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226849226886%_)))
                              (_%tl226851226893%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226849226886%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl226851226893%_))
                              (let ((_g232863_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl226851226893%_
                                        '0))))
                                (begin
                                  (let ((_g232864_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232863_)
                                               (##values-length _g232863_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232864_ 2)))
                                        (error "Context expects 2 values"
                                               _g232864_)))
                                  (let ((_%target226852226896%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232863_ 0)))
                                        (_%tl226854226899%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232863_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226854226899%_))
                                        (letrec ((_%loop226855226902%_
                                                  (lambda (_%hd226853226906%_
                                                           _%symbol226859226909%_
                                                           _%method226860226910%_
                                                           _%type-t226861226911%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd226853226906%_))
                                                        (let ((_%e226856226913%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd226853226906%_))))
                  (let ((_%lp-hd226857226917%_
                         (let ()
                           (declare (not safe))
                           (##car _%e226856226913%_)))
                        (_%lp-tl226858226920%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e226856226913%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd226857226917%_))
                        (let ((_%e226865226923%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd226857226917%_))))
                          (let ((_%hd226866226927%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226865226923%_)))
                                (_%tl226867226930%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226865226923%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226867226930%_))
                                (let ((_%e226868226933%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl226867226930%_))))
                                  (let ((_%hd226869226937%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226868226933%_)))
                                        (_%tl226870226940%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226868226933%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl226870226940%_))
                                        (let ((_%e226871226943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl226870226940%_))))
                                          (let ((_%hd226872226947%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e226871226943%_)))
                                                (_%tl226873226950%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e226871226943%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl226873226950%_))
                                                (_%loop226855226902%_
                                                 _%lp-tl226858226920%_
                                                 (cons _%hd226872226947%_
                                                       _%symbol226859226909%_)
                                                 (cons _%hd226869226937%_
                                                       _%method226860226910%_)
                                                 (cons _%hd226866226927%_
                                                       _%type-t226861226911%_))
                                                (_%g226844226879%_
                                                 _%g226845226883%_))))
                                        (_%g226844226879%_
                                         _%g226845226883%_))))
                                (_%g226844226879%_ _%g226845226883%_))))
                        (_%g226844226879%_ _%g226845226883%_))))
                (let ((_%symbol226862226953%_ (reverse _%symbol226859226909%_))
                      (_%method226863226955%_ (reverse _%method226860226910%_))
                      (_%type-t226864226956%_
                       (reverse _%type-t226861226911%_)))
                  ((lambda (_%g226846226958%_
                            _%g226847226960%_
                            _%g226848226961%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g226846226958%_
                                _%g226847226960%_
                                _%g226848226961%_))
                             (let ((__tmp232865
                                    (lambda (_%g226977226982%_
                                             _%g226978226985%_
                                             _%g226979226987%_
                                             _%g226980226989%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g226979226987%_
                                                        (cons _%g226978226985%_
                                                              (cons _%g226977226982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g226980226989%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp232865
                                '()
                                _%g226846226958%_
                                _%g226847226960%_
                                _%g226848226961%_)))))
                   _%symbol226862226953%_
                   _%method226863226955%_
                   _%type-t226864226956%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop226855226902%_
                                           _%target226852226896%_
                                           '()
                                           '()
                                           '()))
                                        (_%g226844226879%_
                                         _%g226845226883%_)))))
                              (_%g226844226879%_ _%g226845226883%_))))
                      (_%g226844226879%_ _%g226845226883%_)))))
          (_%g226843226992%_ _%$stx226840%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx226997%_)
        (let* ((_%g227001227034%_
                (lambda (_%g227002227030%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227002227030%_))))
               (_%g227000227144%_
                (lambda (_%g227002227038%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227002227038%_))
                      (let ((_%e227006227041%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227002227038%_))))
                        (let ((_%hd227007227045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227006227041%_)))
                              (_%tl227008227048%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227006227041%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227008227048%_))
                              (let ((_%e227009227051%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227008227048%_))))
                                (let ((_%hd227010227055%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227009227051%_)))
                                      (_%tl227011227058%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227009227051%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl227011227058%_))
                                      (let ((_g232866_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl227011227058%_
                                                '0))))
                                        (begin
                                          (let ((_g232867_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232866_)
                                                       (##values-length
                                                        _g232866_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232867_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232867_)))
                                          (let ((_%target227012227061%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232866_ 0)))
                                                (_%tl227014227064%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232866_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl227014227064%_))
                                                (letrec ((_%loop227015227067%_
                                                          (lambda (_%hd227013227071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol227019227074%_
                           _%method227020227075%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd227013227071%_))
                        (let ((_%e227016227077%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd227013227071%_))))
                          (let ((_%lp-hd227017227081%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227016227077%_)))
                                (_%lp-tl227018227084%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227016227077%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd227017227081%_))
                                (let ((_%e227023227087%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd227017227081%_))))
                                  (let ((_%hd227024227091%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227023227087%_)))
                                        (_%tl227025227094%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227023227087%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl227025227094%_))
                                        (let ((_%e227026227097%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl227025227094%_))))
                                          (let ((_%hd227027227101%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e227026227097%_)))
                                                (_%tl227028227104%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e227026227097%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl227028227104%_))
                                                (_%loop227015227067%_
                                                 _%lp-tl227018227084%_
                                                 (cons _%hd227027227101%_
                                                       _%symbol227019227074%_)
                                                 (cons _%hd227024227091%_
                                                       _%method227020227075%_))
                                                (_%g227001227034%_
                                                 _%g227002227038%_))))
                                        (_%g227001227034%_
                                         _%g227002227038%_))))
                                (_%g227001227034%_ _%g227002227038%_))))
                        (let ((_%symbol227021227107%_
                               (reverse _%symbol227019227074%_))
                              (_%method227022227109%_
                               (reverse _%method227020227075%_)))
                          ((lambda (_%g227003227111%_
                                    _%g227004227113%_
                                    _%g227005227114%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g227003227111%_
                                        _%g227004227113%_))
                                     (let ((__tmp232868
                                            (lambda (_%g227132227136%_
                                                     _%g227133227139%_
                                                     _%g227134227141%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g227005227114%_
                                                                (cons _%g227133227139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g227132227136%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g227134227141%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp232868
                                        '()
                                        _%g227003227111%_
                                        _%g227004227113%_)))))
                           _%symbol227021227107%_
                           _%method227022227109%_
                           _%hd227010227055%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop227015227067%_
                                                   _%target227012227061%_
                                                   '()
                                                   '()))
                                                (_%g227001227034%_
                                                 _%g227002227038%_)))))
                                      (_%g227001227034%_ _%g227002227038%_))))
                              (_%g227001227034%_ _%g227002227038%_))))
                      (_%g227001227034%_ _%g227002227038%_)))))
          (_%g227000227144%_ _%$stx226997%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx227149%_)
        (let* ((_%g227153227167%_
                (lambda (_%g227154227163%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227154227163%_))))
               (_%g227152227208%_
                (lambda (_%g227154227171%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227154227171%_))
                      (let ((_%e227156227174%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227154227171%_))))
                        (let ((_%hd227157227178%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227156227174%_)))
                              (_%tl227158227181%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227156227174%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227158227181%_))
                              (let ((_%e227159227184%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227158227181%_))))
                                (let ((_%hd227160227188%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227159227184%_)))
                                      (_%tl227161227191%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227159227184%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227161227191%_))
                                      ((lambda (_%g227155227194%_)
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
                                                           (cons _%g227155227194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227160227188%_)
                                      (_%g227153227167%_ _%g227154227171%_))))
                              (_%g227153227167%_ _%g227154227171%_))))
                      (_%g227153227167%_ _%g227154227171%_)))))
          (_%g227152227208%_ _%$stx227149%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx227212%_)
        (let* ((_%g227216227270%_
                (lambda (_%g227217227266%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227217227266%_))))
               (_%g227215227451%_
                (lambda (_%g227217227274%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227217227274%_))
                      (let ((_%e227229227277%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227217227274%_))))
                        (let ((_%hd227230227281%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227229227277%_)))
                              (_%tl227231227284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227229227277%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227231227284%_))
                              (let ((_%e227232227287%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227231227284%_))))
                                (let ((_%hd227233227291%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227232227287%_)))
                                      (_%tl227234227294%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227232227287%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227234227294%_))
                                      (let ((_%e227235227297%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227234227294%_))))
                                        (let ((_%hd227236227301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227235227297%_)))
                                              (_%tl227237227304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227235227297%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227237227304%_))
                                              (let ((_%e227238227307%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227237227304%_))))
                                                (let ((_%hd227239227311%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227238227307%_)))
                                                      (_%tl227240227314%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227238227307%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl227240227314%_))
                                                      (let ((_%e227241227317%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl227240227314%_))))
                (let ((_%hd227242227321%_
                       (let () (declare (not safe)) (##car _%e227241227317%_)))
                      (_%tl227243227324%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e227241227317%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227243227324%_))
                      (let ((_%e227244227327%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227243227324%_))))
                        (let ((_%hd227245227331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227244227327%_)))
                              (_%tl227246227334%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227244227327%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227246227334%_))
                              (let ((_%e227247227337%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227246227334%_))))
                                (let ((_%hd227248227341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227247227337%_)))
                                      (_%tl227249227344%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227247227337%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227249227344%_))
                                      (let ((_%e227250227347%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227249227344%_))))
                                        (let ((_%hd227251227351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227250227347%_)))
                                              (_%tl227252227354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227250227347%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227252227354%_))
                                              (let ((_%e227253227357%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227252227354%_))))
                                                (let ((_%hd227254227361%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227253227357%_)))
                                                      (_%tl227255227364%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227253227357%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl227255227364%_))
                                                      (let ((_%e227256227367%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl227255227364%_))))
                (let ((_%hd227257227371%_
                       (let () (declare (not safe)) (##car _%e227256227367%_)))
                      (_%tl227258227374%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e227256227367%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227258227374%_))
                      (let ((_%e227259227377%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227258227374%_))))
                        (let ((_%hd227260227381%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227259227377%_)))
                              (_%tl227261227384%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227259227377%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227261227384%_))
                              (let ((_%e227262227387%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227261227384%_))))
                                (let ((_%hd227263227391%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227262227387%_)))
                                      (_%tl227264227394%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227262227387%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227264227394%_))
                                      ((lambda (_%g227218227397%_
                                                _%g227219227399%_
                                                _%g227220227400%_
                                                _%g227221227401%_
                                                _%g227222227402%_
                                                _%g227223227403%_
                                                _%g227224227404%_
                                                _%g227225227405%_
                                                _%g227226227406%_
                                                _%g227227227407%_
                                                _%g227228227408%_)
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
                                                           (cons _%g227228227408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g227227227407%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g227226227406%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227225227405%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227224227404%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g227223227403%_ '()))
                                           (cons _%g227222227402%_
                                                 (cons _%g227221227401%_
                                                       (cons _%g227220227400%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g227219227399%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g227218227397%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd227263227391%_
                                       _%hd227260227381%_
                                       _%hd227257227371%_
                                       _%hd227254227361%_
                                       _%hd227251227351%_
                                       _%hd227248227341%_
                                       _%hd227245227331%_
                                       _%hd227242227321%_
                                       _%hd227239227311%_
                                       _%hd227236227301%_
                                       _%hd227233227291%_)
                                      (_%g227216227270%_ _%g227217227274%_))))
                              (_%g227216227270%_ _%g227217227274%_))))
                      (_%g227216227270%_ _%g227217227274%_))))
              (_%g227216227270%_ _%g227217227274%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227216227270%_
                                               _%g227217227274%_))))
                                      (_%g227216227270%_ _%g227217227274%_))))
                              (_%g227216227270%_ _%g227217227274%_))))
                      (_%g227216227270%_ _%g227217227274%_))))
              (_%g227216227270%_ _%g227217227274%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227216227270%_
                                               _%g227217227274%_))))
                                      (_%g227216227270%_ _%g227217227274%_))))
                              (_%g227216227270%_ _%g227217227274%_))))
                      (_%g227216227270%_ _%g227217227274%_)))))
          (_%g227215227451%_ _%$stx227212%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx227455%_)
        (let* ((_%g227459227473%_
                (lambda (_%g227460227469%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227460227469%_))))
               (_%g227458227514%_
                (lambda (_%g227460227477%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227460227477%_))
                      (let ((_%e227462227480%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227460227477%_))))
                        (let ((_%hd227463227484%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227462227480%_)))
                              (_%tl227464227487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227462227480%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227464227487%_))
                              (let ((_%e227465227490%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227464227487%_))))
                                (let ((_%hd227466227494%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227465227490%_)))
                                      (_%tl227467227497%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227465227490%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227467227497%_))
                                      ((lambda (_%g227461227500%_)
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
                                                           (cons _%g227461227500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227466227494%_)
                                      (_%g227459227473%_ _%g227460227477%_))))
                              (_%g227459227473%_ _%g227460227477%_))))
                      (_%g227459227473%_ _%g227460227477%_)))))
          (_%g227458227514%_ _%$stx227455%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx227518%_)
        (let* ((_%g227522227536%_
                (lambda (_%g227523227532%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227523227532%_))))
               (_%g227521227577%_
                (lambda (_%g227523227540%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227523227540%_))
                      (let ((_%e227525227543%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227523227540%_))))
                        (let ((_%hd227526227547%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227525227543%_)))
                              (_%tl227527227550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227525227543%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227527227550%_))
                              (let ((_%e227528227553%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227527227550%_))))
                                (let ((_%hd227529227557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227528227553%_)))
                                      (_%tl227530227560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227528227553%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227530227560%_))
                                      ((lambda (_%g227524227563%_)
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
                                                           (cons _%g227524227563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227529227557%_)
                                      (_%g227522227536%_ _%g227523227540%_))))
                              (_%g227522227536%_ _%g227523227540%_))))
                      (_%g227522227536%_ _%g227523227540%_)))))
          (_%g227521227577%_ _%$stx227518%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx227581%_)
        (let* ((_%g227585227607%_
                (lambda (_%g227586227603%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227586227603%_))))
               (_%g227584227676%_
                (lambda (_%g227586227611%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227586227611%_))
                      (let ((_%e227590227614%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227586227611%_))))
                        (let ((_%hd227591227618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227590227614%_)))
                              (_%tl227592227621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227590227614%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227592227621%_))
                              (let ((_%e227593227624%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227592227621%_))))
                                (let ((_%hd227594227628%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227593227624%_)))
                                      (_%tl227595227631%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227593227624%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227595227631%_))
                                      (let ((_%e227596227634%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227595227631%_))))
                                        (let ((_%hd227597227638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227596227634%_)))
                                              (_%tl227598227641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227596227634%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227598227641%_))
                                              (let ((_%e227599227644%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227598227641%_))))
                                                (let ((_%hd227600227648%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227599227644%_)))
                                                      (_%tl227601227651%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227599227644%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227601227651%_))
                                                      ((lambda (_%g227587227654%_
                                                                _%g227588227656%_
                                                                _%g227589227657%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g227589227657%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g227588227656%_ '()))
                                   (cons _%g227587227654%_ '())))))
               _%hd227600227648%_
               _%hd227597227638%_
               _%hd227594227628%_)
              (_%g227585227607%_ _%g227586227611%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227585227607%_
                                               _%g227586227611%_))))
                                      (_%g227585227607%_ _%g227586227611%_))))
                              (_%g227585227607%_ _%g227586227611%_))))
                      (_%g227585227607%_ _%g227586227611%_)))))
          (_%g227584227676%_ _%$stx227581%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx227680%_)
        (let* ((_%g227684227706%_
                (lambda (_%g227685227702%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227685227702%_))))
               (_%g227683227775%_
                (lambda (_%g227685227710%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227685227710%_))
                      (let ((_%e227689227713%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227685227710%_))))
                        (let ((_%hd227690227717%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227689227713%_)))
                              (_%tl227691227720%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227689227713%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227691227720%_))
                              (let ((_%e227692227723%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227691227720%_))))
                                (let ((_%hd227693227727%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227692227723%_)))
                                      (_%tl227694227730%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227692227723%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227694227730%_))
                                      (let ((_%e227695227733%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227694227730%_))))
                                        (let ((_%hd227696227737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227695227733%_)))
                                              (_%tl227697227740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227695227733%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227697227740%_))
                                              (let ((_%e227698227743%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227697227740%_))))
                                                (let ((_%hd227699227747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227698227743%_)))
                                                      (_%tl227700227750%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227698227743%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227700227750%_))
                                                      ((lambda (_%g227686227753%_
                                                                _%g227687227755%_
                                                                _%g227688227756%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g227688227756%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g227687227755%_ '()))
                                   (cons _%g227686227753%_ '())))))
               _%hd227699227747%_
               _%hd227696227737%_
               _%hd227693227727%_)
              (_%g227684227706%_ _%g227685227710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227684227706%_
                                               _%g227685227710%_))))
                                      (_%g227684227706%_ _%g227685227710%_))))
                              (_%g227684227706%_ _%g227685227710%_))))
                      (_%g227684227706%_ _%g227685227710%_)))))
          (_%g227683227775%_ _%$stx227680%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx227779%_)
        (let* ((_%g227783227797%_
                (lambda (_%g227784227793%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227784227793%_))))
               (_%g227782227838%_
                (lambda (_%g227784227801%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227784227801%_))
                      (let ((_%e227786227804%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227784227801%_))))
                        (let ((_%hd227787227808%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227786227804%_)))
                              (_%tl227788227811%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227786227804%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227788227811%_))
                              (let ((_%e227789227814%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227788227811%_))))
                                (let ((_%hd227790227818%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227789227814%_)))
                                      (_%tl227791227821%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227789227814%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227791227821%_))
                                      ((lambda (_%g227785227824%_)
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
                                                           (cons _%g227785227824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227790227818%_)
                                      (_%g227783227797%_ _%g227784227801%_))))
                              (_%g227783227797%_ _%g227784227801%_))))
                      (_%g227783227797%_ _%g227784227801%_)))))
          (_%g227782227838%_ _%$stx227779%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx227842%_)
        (let* ((_%g227846227864%_
                (lambda (_%g227847227860%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227847227860%_))))
               (_%g227845227919%_
                (lambda (_%g227847227868%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227847227868%_))
                      (let ((_%e227850227871%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227847227868%_))))
                        (let ((_%hd227851227875%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227850227871%_)))
                              (_%tl227852227878%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227850227871%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227852227878%_))
                              (let ((_%e227853227881%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227852227878%_))))
                                (let ((_%hd227854227885%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227853227881%_)))
                                      (_%tl227855227888%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227853227881%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227855227888%_))
                                      (let ((_%e227856227891%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227855227888%_))))
                                        (let ((_%hd227857227895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227856227891%_)))
                                              (_%tl227858227898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227856227891%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl227858227898%_))
                                              ((lambda (_%g227848227901%_
                                                        _%g227849227903%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g227849227903%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g227848227901%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd227857227895%_
                                               _%hd227854227885%_)
                                              (_%g227846227864%_
                                               _%g227847227868%_))))
                                      (_%g227846227864%_ _%g227847227868%_))))
                              (_%g227846227864%_ _%g227847227868%_))))
                      (_%g227846227864%_ _%g227847227868%_)))))
          (_%g227845227919%_ _%$stx227842%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx227923%_)
        (let* ((_%__stx232239232240%_ _%$stx227923%_)
               (_%g227930227991%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232239232240%_)))))
          (let ((_%__kont232242232243%_
                 (lambda (_%g227932228229%_ _%g227933228231%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227933228231%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227932228229%_ '()))
                                     '())))))
                (_%__kont232244232245%_
                 (lambda (_%g227943228168%_
                          _%g227944228170%_
                          _%g227945228171%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227945228171%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227944228170%_ '()))
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
                                 (cons _%g227943228168%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont232246232247%_
                 (lambda (_%g227962228092%_ _%g227963228094%_)
                   (cons _%g227963228094%_
                         (cons _%g227962228092%_ (cons '#f '())))))
                (_%__kont232248232249%_
                 (lambda (_%g227970228042%_
                          _%g227971228044%_
                          _%g227972228045%_)
                   (cons _%g227972228045%_
                         (cons _%g227971228044%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g227970228042%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232239232240%_))
                (let ((_%e227934228199%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232239232240%_))))
                  (let ((_%tl227936228206%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e227934228199%_)))
                        (_%hd227935228203%_
                         (let ()
                           (declare (not safe))
                           (##car _%e227934228199%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl227936228206%_))
                        (let ((_%e227937228209%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl227936228206%_))))
                          (let ((_%tl227939228216%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227937228209%_)))
                                (_%hd227938228213%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227937228209%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl227939228216%_))
                                (let ((_%e227940228219%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl227939228216%_))))
                                  (let ((_%tl227942228226%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227940228219%_)))
                                        (_%hd227941228223%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227940228219%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl227942228226%_))
                                        (_%__kont232242232243%_
                                         _%hd227941228223%_
                                         _%hd227938228213%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl227942228226%_))
                                            (let ((_%e227955228144%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl227942228226%_))))
                                              (let ((_%tl227957228151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e227955228144%_)))
                                                    (_%hd227956228148%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e227955228144%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd227956228148%_))
                                                    (let ((_%e227958228154%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd227956228148%_))))
                                                      (if (equal? _%e227958228154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227957228151%_))
                      (let ((_%e227959228158%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227957228151%_))))
                        (let ((_%tl227961228165%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227959228158%_)))
                              (_%hd227960228162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227959228158%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl227961228165%_))
                              (_%__kont232244232245%_
                               _%hd227960228162%_
                               _%hd227941228223%_
                               _%hd227938228213%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd227941228223%_))
                                  (let ((_%e227982228028%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd227941228223%_))))
                                    (declare (not safe))
                                    (_%g227930227991%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g227930227991%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd227941228223%_))
                          (let ((_%e227982228028%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd227941228223%_))))
                            (if (equal? _%e227982228028%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227957228151%_))
                                    (_%__kont232248232249%_
                                     _%hd227956228148%_
                                     _%hd227938228213%_
                                     _%hd227935228203%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g227930227991%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g227930227991%_))))
                          (let () (declare (not safe)) (_%g227930227991%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd227941228223%_))
                      (let ((_%e227982228028%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd227941228223%_))))
                        (if (equal? _%e227982228028%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl227957228151%_))
                                (_%__kont232248232249%_
                                 _%hd227956228148%_
                                 _%hd227938228213%_
                                 _%hd227935228203%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g227930227991%_)))
                            (let () (declare (not safe)) (_%g227930227991%_))))
                      (let () (declare (not safe)) (_%g227930227991%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd227941228223%_))
                                                        (let ((_%e227982228028%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd227941228223%_))))
                  (if (equal? _%e227982228028%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl227957228151%_))
                          (_%__kont232248232249%_
                           _%hd227956228148%_
                           _%hd227938228213%_
                           _%hd227935228203%_)
                          (let () (declare (not safe)) (_%g227930227991%_)))
                      (let () (declare (not safe)) (_%g227930227991%_))))
                (let () (declare (not safe)) (_%g227930227991%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd227941228223%_))
                                                (let ((_%e227982228028%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd227941228223%_))))
                                                  (declare (not safe))
                                                  (_%g227930227991%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g227930227991%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227939228216%_))
                                    (_%__kont232246232247%_
                                     _%hd227938228213%_
                                     _%hd227935228203%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g227930227991%_))))))
                        (let () (declare (not safe)) (_%g227930227991%_)))))
                (let () (declare (not safe)) (_%g227930227991%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx228250%_)
        (let* ((_%g228254228283%_
                (lambda (_%g228255228279%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228255228279%_))))
               (_%g228253228388%_
                (lambda (_%g228255228287%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228255228287%_))
                      (let ((_%e228257228290%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228255228287%_))))
                        (let ((_%hd228258228294%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228257228290%_)))
                              (_%tl228259228297%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228257228290%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl228259228297%_))
                              (let ((_g232869_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl228259228297%_
                                        '0))))
                                (begin
                                  (let ((_g232870_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232869_)
                                               (##values-length _g232869_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232870_ 2)))
                                        (error "Context expects 2 values"
                                               _g232870_)))
                                  (let ((_%target228260228300%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232869_ 0)))
                                        (_%tl228262228303%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232869_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228262228303%_))
                                        (letrec ((_%loop228263228306%_
                                                  (lambda (_%hd228261228310%_
                                                           _%clause228267228313%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd228261228310%_))
                                                        (let ((_%e228264228315%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd228261228310%_))))
                  (let ((_%lp-hd228265228319%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228264228315%_)))
                        (_%lp-tl228266228322%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228264228315%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd228265228319%_))
                        (let ((_g232871_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd228265228319%_
                                  '0))))
                          (begin
                            (let ((_g232872_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g232871_)
                                         (##values-length _g232871_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g232872_ 2)))
                                  (error "Context expects 2 values"
                                         _g232872_)))
                            (let ((_%target228269228325%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232871_ 0)))
                                  (_%tl228271228328%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232871_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl228271228328%_))
                                  (letrec ((_%loop228272228331%_
                                            (lambda (_%hd228270228335%_
                                                     _%clause228276228338%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd228270228335%_))
                                                  (let ((_%e228273228340%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd228270228335%_))))
                                                    (let ((_%lp-hd228274228344%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e228273228340%_)))
                                                          (_%lp-tl228275228347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e228273228340%_))))
                                                      (_%loop228272228331%_
                                                       _%lp-tl228275228347%_
                                                       (cons _%lp-hd228274228344%_
                                                             _%clause228276228338%_))))
                                                  (let ((_%clause228277228350%_
                                                         (reverse _%clause228276228338%_)))
                                                    (_%loop228263228306%_
                                                     _%lp-tl228266228322%_
                                                     (cons _%clause228277228350%_
                                                           _%clause228267228313%_)))))))
                                    (_%loop228272228331%_
                                     _%target228269228325%_
                                     '()))
                                  (_%g228254228283%_ _%g228255228287%_)))))
                        (_%g228254228283%_ _%g228255228287%_))))
                (let ((_%clause228268228353%_
                       (reverse _%clause228267228313%_)))
                  ((lambda (_%g228256228356%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp232873
                                              (lambda (_%g228371228376%_
                                                       _%g228372228379%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp232874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g228373228382%_ _%g228374228385%_)
                             (cons _%g228373228382%_ _%g228374228385%_))))
                      (declare (not safe))
                      (__foldr1 __tmp232874 '() _%g228371228376%_)))
              _%g228372228379%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp232873
                                          '()
                                          _%g228256228356%_)))
                                 '())))
                   _%clause228268228353%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop228263228306%_
                                           _%target228260228300%_
                                           '()))
                                        (_%g228254228283%_
                                         _%g228255228287%_)))))
                              (_%g228254228283%_ _%g228255228287%_))))
                      (_%g228254228283%_ _%g228255228287%_)))))
          (_%g228253228388%_ _%$stx228250%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx228394%_)
        (let* ((_%g228398228416%_
                (lambda (_%g228399228412%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228399228412%_))))
               (_%g228397228471%_
                (lambda (_%g228399228420%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228399228420%_))
                      (let ((_%e228402228423%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228399228420%_))))
                        (let ((_%hd228403228427%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228402228423%_)))
                              (_%tl228404228430%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228402228423%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228404228430%_))
                              (let ((_%e228405228433%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228404228430%_))))
                                (let ((_%hd228406228437%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228405228433%_)))
                                      (_%tl228407228440%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228405228433%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228407228440%_))
                                      (let ((_%e228408228443%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228407228440%_))))
                                        (let ((_%hd228409228447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228408228443%_)))
                                              (_%tl228410228450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228408228443%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228410228450%_))
                                              ((lambda (_%g228400228453%_
                                                        _%g228401228455%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g228401228455%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g228400228453%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228409228447%_
                                               _%hd228406228437%_)
                                              (_%g228398228416%_
                                               _%g228399228420%_))))
                                      (_%g228398228416%_ _%g228399228420%_))))
                              (_%g228398228416%_ _%g228399228420%_))))
                      (_%g228398228416%_ _%g228399228420%_)))))
          (_%g228397228471%_ _%$stx228394%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx228475%_)
        (let* ((_%g228479228497%_
                (lambda (_%g228480228493%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228480228493%_))))
               (_%g228478228552%_
                (lambda (_%g228480228501%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228480228501%_))
                      (let ((_%e228483228504%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228480228501%_))))
                        (let ((_%hd228484228508%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228483228504%_)))
                              (_%tl228485228511%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228483228504%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228485228511%_))
                              (let ((_%e228486228514%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228485228511%_))))
                                (let ((_%hd228487228518%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228486228514%_)))
                                      (_%tl228488228521%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228486228514%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228488228521%_))
                                      (let ((_%e228489228524%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228488228521%_))))
                                        (let ((_%hd228490228528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228489228524%_)))
                                              (_%tl228491228531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228489228524%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228491228531%_))
                                              ((lambda (_%g228481228534%_
                                                        _%g228482228536%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g228482228536%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g228481228534%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228490228528%_
                                               _%hd228487228518%_)
                                              (_%g228479228497%_
                                               _%g228480228501%_))))
                                      (_%g228479228497%_ _%g228480228501%_))))
                              (_%g228479228497%_ _%g228480228501%_))))
                      (_%g228479228497%_ _%g228480228501%_)))))
          (_%g228478228552%_ _%$stx228475%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx228556%_)
        (let* ((_%g228560228589%_
                (lambda (_%g228561228585%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228561228585%_))))
               (_%g228559228685%_
                (lambda (_%g228561228593%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228561228593%_))
                      (let ((_%e228564228596%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228561228593%_))))
                        (let ((_%hd228565228600%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228564228596%_)))
                              (_%tl228566228603%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228564228596%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl228566228603%_))
                              (let ((_g232875_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl228566228603%_
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
                                  (let ((_%target228567228606%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232875_ 0)))
                                        (_%tl228569228609%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232875_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228569228609%_))
                                        (letrec ((_%loop228570228612%_
                                                  (lambda (_%hd228568228616%_
                                                           _%rule228574228619%_
                                                           _%proc228575228620%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd228568228616%_))
                                                        (let ((_%e228571228622%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd228568228616%_))))
                  (let ((_%lp-hd228572228626%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228571228622%_)))
                        (_%lp-tl228573228629%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228571228622%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd228572228626%_))
                        (let ((_%e228578228632%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd228572228626%_))))
                          (let ((_%hd228579228636%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e228578228632%_)))
                                (_%tl228580228639%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e228578228632%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl228580228639%_))
                                (let ((_%e228581228642%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl228580228639%_))))
                                  (let ((_%hd228582228646%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e228581228642%_)))
                                        (_%tl228583228649%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e228581228642%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228583228649%_))
                                        (_%loop228570228612%_
                                         _%lp-tl228573228629%_
                                         (cons _%hd228582228646%_
                                               _%rule228574228619%_)
                                         (cons _%hd228579228636%_
                                               _%proc228575228620%_))
                                        (_%g228560228589%_
                                         _%g228561228593%_))))
                                (_%g228560228589%_ _%g228561228593%_))))
                        (_%g228560228589%_ _%g228561228593%_))))
                (let ((_%rule228576228652%_ (reverse _%rule228574228619%_))
                      (_%proc228577228654%_ (reverse _%proc228575228620%_)))
                  ((lambda (_%g228562228656%_ _%g228563228658%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g228562228656%_
                                _%g228563228658%_))
                             (let ((__tmp232877
                                    (lambda (_%g228673228677%_
                                             _%g228674228680%_
                                             _%g228675228682%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g228674228680%_
                                                        (cons _%g228673228677%_
                                                              '())))
                                            _%g228675228682%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp232877
                                '()
                                _%g228562228656%_
                                _%g228563228658%_)))))
                   _%rule228576228652%_
                   _%proc228577228654%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop228570228612%_
                                           _%target228567228606%_
                                           '()
                                           '()))
                                        (_%g228560228589%_
                                         _%g228561228593%_)))))
                              (_%g228560228589%_ _%g228561228593%_))))
                      (_%g228560228589%_ _%g228561228593%_)))))
          (_%g228559228685%_ _%$stx228556%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx228690%_)
        (let* ((_%g228694228712%_
                (lambda (_%g228695228708%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228695228708%_))))
               (_%g228693228767%_
                (lambda (_%g228695228716%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228695228716%_))
                      (let ((_%e228698228719%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228695228716%_))))
                        (let ((_%hd228699228723%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228698228719%_)))
                              (_%tl228700228726%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228698228719%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228700228726%_))
                              (let ((_%e228701228729%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228700228726%_))))
                                (let ((_%hd228702228733%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228701228729%_)))
                                      (_%tl228703228736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228701228729%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228703228736%_))
                                      (let ((_%e228704228739%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228703228736%_))))
                                        (let ((_%hd228705228743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228704228739%_)))
                                              (_%tl228706228746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228704228739%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228706228746%_))
                                              ((lambda (_%g228696228749%_
                                                        _%g228697228751%_)
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
                                                   (cons _%g228697228751%_
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
                 (cons _%g228696228749%_ '())))
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
                                   (cons _%g228697228751%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228705228743%_
                                               _%hd228702228733%_)
                                              (_%g228694228712%_
                                               _%g228695228716%_))))
                                      (_%g228694228712%_ _%g228695228716%_))))
                              (_%g228694228712%_ _%g228695228716%_))))
                      (_%g228694228712%_ _%g228695228716%_)))))
          (_%g228693228767%_ _%$stx228690%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx228771%_)
        (let* ((_%__stx232357232358%_ _%$stx228771%_)
               (_%g228776228801%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232357232358%_)))))
          (let ((_%__kont232360232361%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont232362232363%_
                 (lambda (_%g228781228848%_
                          _%g228782228850%_
                          _%g228783228851%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g228783228851%_
                                           (cons _%g228782228850%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g228781228848%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232357232358%_))
                (let ((_%e228778228877%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232357232358%_))))
                  (let ((_%tl228780228884%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228778228877%_)))
                        (_%hd228779228881%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228778228877%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl228780228884%_))
                        (_%__kont232360232361%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228780228884%_))
                            (let ((_%e228787228818%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl228780228884%_))))
                              (let ((_%tl228789228825%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228787228818%_)))
                                    (_%hd228788228822%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228787228818%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd228788228822%_))
                                    (let ((_%e228790228828%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd228788228822%_))))
                                      (let ((_%tl228792228835%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e228790228828%_)))
                                            (_%hd228791228832%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e228790228828%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl228792228835%_))
                                            (let ((_%e228793228838%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl228792228835%_))))
                                              (let ((_%tl228795228845%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e228793228838%_)))
                                                    (_%hd228794228842%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e228793228838%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl228795228845%_))
                                                    (_%__kont232362232363%_
                                                     _%tl228789228825%_
                                                     _%hd228794228842%_
                                                     _%hd228791228832%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g228776228801%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g228776228801%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g228776228801%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g228776228801%_))))))
                (let () (declare (not safe)) (_%g228776228801%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx228895%_)
        (let* ((_%__stx232401232402%_ _%$stx228895%_)
               (_%g228900228931%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232401232402%_)))))
          (let ((_%__kont232404232405%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont232406232407%_
                 (lambda (_%g228905228996%_
                          _%g228906228998%_
                          _%g228907228999%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g228907228999%_
                                           (let ((__tmp232878
                                                  (lambda (_%g229019229022%_
                                                           _%g229020229025%_)
                                                    (cons _%g229019229022%_
                                                          _%g229020229025%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp232878
                                              '()
                                              _%g228906228998%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g228905228996%_)
                                     '()))))))
            (let ((_%__match232444232445%_
                   (lambda (_%e228908228938%_
                            _%hd228909228942%_
                            _%tl228910228945%_
                            _%e228911228948%_
                            _%hd228912228952%_
                            _%tl228913228955%_
                            _%e228914228958%_
                            _%hd228915228962%_
                            _%tl228916228965%_
                            _%__splice232408232409%_
                            _%target228917228968%_
                            _%tl228919228971%_)
                     (letrec ((_%loop228920228974%_
                               (lambda (_%hd228918228978%_ _%sig228924228981%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd228918228978%_))
                                     (let ((_%e228921228983%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd228918228978%_))))
                                       (let ((_%lp-tl228923228990%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e228921228983%_)))
                                             (_%lp-hd228922228987%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e228921228983%_))))
                                         (_%loop228920228974%_
                                          _%lp-tl228923228990%_
                                          (cons _%lp-hd228922228987%_
                                                _%sig228924228981%_))))
                                     (let ((_%sig228925228993%_
                                            (reverse _%sig228924228981%_)))
                                       (_%__kont232406232407%_
                                        _%tl228913228955%_
                                        _%sig228925228993%_
                                        _%hd228915228962%_))))))
                       (_%loop228920228974%_ _%target228917228968%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232401232402%_))
                  (let ((_%e228902229035%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232401232402%_))))
                    (let ((_%tl228904229042%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e228902229035%_)))
                          (_%hd228903229039%_
                           (let ()
                             (declare (not safe))
                             (##car _%e228902229035%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl228904229042%_))
                          (_%__kont232404232405%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228904229042%_))
                              (let ((_%e228911228948%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228904229042%_))))
                                (let ((_%tl228913228955%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228911228948%_)))
                                      (_%hd228912228952%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228911228948%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd228912228952%_))
                                      (let ((_%e228914228958%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd228912228952%_))))
                                        (let ((_%tl228916228965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228914228958%_)))
                                              (_%hd228915228962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228914228958%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl228916228965%_))
                                              (let ((_%__splice232408232409%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl228916228965%_
                                                        '0))))
                                                (let ((_%tl228919228971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232408232409%_
                                                          '1)))
                                                      (_%target228917228968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232408232409%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl228919228971%_))
                                                      (_%__match232444232445%_
                                                       _%e228902229035%_
                                                       _%hd228903229039%_
                                                       _%tl228904229042%_
                                                       _%e228911228948%_
                                                       _%hd228912228952%_
                                                       _%tl228913228955%_
                                                       _%e228914228958%_
                                                       _%hd228915228962%_
                                                       _%tl228916228965%_
                                                       _%__splice232408232409%_
                                                       _%target228917228968%_
                                                       _%tl228919228971%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g228900228931%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g228900228931%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g228900228931%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g228900228931%_))))))
                  (let () (declare (not safe)) (_%g228900228931%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx229054%_)
        (let* ((_%__stx232447232448%_ _%$stx229054%_)
               (_%g229059229106%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232447232448%_)))))
          (let ((_%__kont232450232451%_
                 (lambda (_%g229061229264%_ _%g229062229266%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g229062229266%_
                               (let ((__tmp232879
                                      (lambda (_%g229286229289%_
                                               _%g229287229292%_)
                                        (cons _%g229286229289%_
                                              _%g229287229292%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp232879
                                  '()
                                  _%g229061229264%_))))))
                (_%__kont232454232455%_
                 (lambda (_%g229084229161%_ _%g229085229163%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g229085229163%_
                               (let ((__tmp232880
                                      (lambda (_%g229180229183%_
                                               _%g229181229186%_)
                                        (cons _%g229180229183%_
                                              _%g229181229186%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp232880
                                  '()
                                  _%g229084229161%_)))))))
            (let* ((_%__match232514232515%_
                    (lambda (_%e229086229113%_
                             _%hd229087229117%_
                             _%tl229088229120%_
                             _%e229089229123%_
                             _%hd229090229127%_
                             _%tl229091229130%_
                             _%__splice232456232457%_
                             _%target229092229133%_
                             _%tl229094229136%_)
                      (letrec ((_%loop229095229139%_
                                (lambda (_%hd229093229143%_
                                         _%sig229099229146%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd229093229143%_))
                                      (let ((_%e229096229148%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd229093229143%_))))
                                        (let ((_%lp-tl229098229155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229096229148%_)))
                                              (_%lp-hd229097229152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229096229148%_))))
                                          (_%loop229095229139%_
                                           _%lp-tl229098229155%_
                                           (cons _%lp-hd229097229152%_
                                                 _%sig229099229146%_))))
                                      (let ((_%sig229100229158%_
                                             (reverse _%sig229099229146%_)))
                                        (_%__kont232454232455%_
                                         _%sig229100229158%_
                                         _%hd229090229127%_))))))
                        (_%loop229095229139%_ _%target229092229133%_ '()))))
                   (_%__match232506232507%_
                    (lambda (_%e229086229113%_
                             _%hd229087229117%_
                             _%tl229088229120%_
                             _%e229089229123%_
                             _%hd229090229127%_
                             _%tl229091229130%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl229091229130%_))
                          (let ((_%__splice232456232457%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl229091229130%_
                                    '0))))
                            (let ((_%tl229094229136%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice232456232457%_
                                      '1)))
                                  (_%target229092229133%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice232456232457%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229094229136%_))
                                  (_%__match232514232515%_
                                   _%e229086229113%_
                                   _%hd229087229117%_
                                   _%tl229088229120%_
                                   _%e229089229123%_
                                   _%hd229090229127%_
                                   _%tl229091229130%_
                                   _%__splice232456232457%_
                                   _%target229092229133%_
                                   _%tl229094229136%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g229059229106%_)))))
                          (let () (declare (not safe)) (_%g229059229106%_)))))
                   (_%__match232494232495%_
                    (lambda (_%e229063229196%_
                             _%hd229064229200%_
                             _%tl229065229203%_
                             _%e229066229206%_
                             _%hd229067229210%_
                             _%tl229068229213%_
                             _%e229069229216%_
                             _%hd229070229220%_
                             _%tl229071229223%_
                             _%e229072229226%_
                             _%hd229073229230%_
                             _%tl229074229233%_
                             _%__splice232452232453%_
                             _%target229075229236%_
                             _%tl229077229239%_)
                      (letrec ((_%loop229078229242%_
                                (lambda (_%hd229076229246%_
                                         _%sig229082229249%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd229076229246%_))
                                      (let ((_%e229079229251%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd229076229246%_))))
                                        (let ((_%lp-tl229081229258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229079229251%_)))
                                              (_%lp-hd229080229255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229079229251%_))))
                                          (_%loop229078229242%_
                                           _%lp-tl229081229258%_
                                           (cons _%lp-hd229080229255%_
                                                 _%sig229082229249%_))))
                                      (let ((_%sig229083229261%_
                                             (reverse _%sig229082229249%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl229071229223%_))
                                            (_%__kont232450232451%_
                                             _%sig229083229261%_
                                             _%hd229067229210%_)
                                            (_%__match232506232507%_
                                             _%e229063229196%_
                                             _%hd229064229200%_
                                             _%tl229065229203%_
                                             _%e229066229206%_
                                             _%hd229067229210%_
                                             _%tl229068229213%_)))))))
                        (_%loop229078229242%_ _%target229075229236%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232447232448%_))
                  (let ((_%e229063229196%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232447232448%_))))
                    (let ((_%tl229065229203%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229063229196%_)))
                          (_%hd229064229200%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229063229196%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229065229203%_))
                          (let ((_%e229066229206%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl229065229203%_))))
                            (let ((_%tl229068229213%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229066229206%_)))
                                  (_%hd229067229210%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229066229206%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl229068229213%_))
                                  (let ((_%e229069229216%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl229068229213%_))))
                                    (let ((_%tl229071229223%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e229069229216%_)))
                                          (_%hd229070229220%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e229069229216%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd229070229220%_))
                                          (let ((_%e229072229226%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd229070229220%_))))
                                            (let ((_%tl229074229233%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e229072229226%_)))
                                                  (_%hd229073229230%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e229072229226%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd229073229230%_))
                                                  (if (let ((__tmp232881
                                                             |gxc[1]#_g232882_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp232881
                                                         _%hd229073229230%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl229074229233%_))
                                                          (let ((_%__splice232452232453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl229074229233%_
                            '0))))
                    (let ((_%tl229077229239%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232452232453%_ '1)))
                          (_%target229075229236%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232452232453%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl229077229239%_))
                          (_%__match232494232495%_
                           _%e229063229196%_
                           _%hd229064229200%_
                           _%tl229065229203%_
                           _%e229066229206%_
                           _%hd229067229210%_
                           _%tl229068229213%_
                           _%e229069229216%_
                           _%hd229070229220%_
                           _%tl229071229223%_
                           _%e229072229226%_
                           _%hd229073229230%_
                           _%tl229074229233%_
                           _%__splice232452232453%_
                           _%target229075229236%_
                           _%tl229077229239%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl229068229213%_))
                              (let ((_%__splice232456232457%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl229068229213%_
                                        '0))))
                                (let ((_%tl229094229136%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice232456232457%_
                                          '1)))
                                      (_%target229092229133%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice232456232457%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl229094229136%_))
                                      (_%__match232514232515%_
                                       _%e229063229196%_
                                       _%hd229064229200%_
                                       _%tl229065229203%_
                                       _%e229066229206%_
                                       _%hd229067229210%_
                                       _%tl229068229213%_
                                       _%__splice232456232457%_
                                       _%target229092229133%_
                                       _%tl229094229136%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g229059229106%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g229059229106%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl229068229213%_))
                      (let ((_%__splice232456232457%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl229068229213%_
                                '0))))
                        (let ((_%tl229094229136%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice232456232457%_ '1)))
                              (_%target229092229133%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice232456232457%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl229094229136%_))
                              (_%__match232514232515%_
                               _%e229063229196%_
                               _%hd229064229200%_
                               _%tl229065229203%_
                               _%e229066229206%_
                               _%hd229067229210%_
                               _%tl229068229213%_
                               _%__splice232456232457%_
                               _%target229092229133%_
                               _%tl229094229136%_)
                              (let ()
                                (declare (not safe))
                                (_%g229059229106%_)))))
                      (let () (declare (not safe)) (_%g229059229106%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl229068229213%_))
                  (let ((_%__splice232456232457%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl229068229213%_
                            '0))))
                    (let ((_%tl229094229136%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232456232457%_ '1)))
                          (_%target229092229133%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232456232457%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl229094229136%_))
                          (_%__match232514232515%_
                           _%e229063229196%_
                           _%hd229064229200%_
                           _%tl229065229203%_
                           _%e229066229206%_
                           _%hd229067229210%_
                           _%tl229068229213%_
                           _%__splice232456232457%_
                           _%target229092229133%_
                           _%tl229094229136%_)
                          (let () (declare (not safe)) (_%g229059229106%_)))))
                  (let () (declare (not safe)) (_%g229059229106%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl229068229213%_))
                                                      (let ((_%__splice232456232457%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl229068229213%_
                        '0))))
                (let ((_%tl229094229136%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232456232457%_ '1)))
                      (_%target229092229133%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232456232457%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl229094229136%_))
                      (_%__match232514232515%_
                       _%e229063229196%_
                       _%hd229064229200%_
                       _%tl229065229203%_
                       _%e229066229206%_
                       _%hd229067229210%_
                       _%tl229068229213%_
                       _%__splice232456232457%_
                       _%target229092229133%_
                       _%tl229094229136%_)
                      (let () (declare (not safe)) (_%g229059229106%_)))))
              (let () (declare (not safe)) (_%g229059229106%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl229068229213%_))
                                              (let ((_%__splice232456232457%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl229068229213%_
                                                        '0))))
                                                (let ((_%tl229094229136%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232456232457%_
                                                          '1)))
                                                      (_%target229092229133%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232456232457%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl229094229136%_))
                                                      (_%__match232514232515%_
                                                       _%e229063229196%_
                                                       _%hd229064229200%_
                                                       _%tl229065229203%_
                                                       _%e229066229206%_
                                                       _%hd229067229210%_
                                                       _%tl229068229213%_
                                                       _%__splice232456232457%_
                                                       _%target229092229133%_
                                                       _%tl229094229136%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g229059229106%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g229059229106%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl229068229213%_))
                                      (let ((_%__splice232456232457%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl229068229213%_
                                                '0))))
                                        (let ((_%tl229094229136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232456232457%_
                                                  '1)))
                                              (_%target229092229133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232456232457%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229094229136%_))
                                              (_%__match232514232515%_
                                               _%e229063229196%_
                                               _%hd229064229200%_
                                               _%tl229065229203%_
                                               _%e229066229206%_
                                               _%hd229067229210%_
                                               _%tl229068229213%_
                                               _%__splice232456232457%_
                                               _%target229092229133%_
                                               _%tl229094229136%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g229059229106%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g229059229106%_))))))
                          (let () (declare (not safe)) (_%g229059229106%_)))))
                  (let () (declare (not safe)) (_%g229059229106%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx230449%_ _%id230451%_)
        (let ((_%proc230455%_
               (let ((__tmp232883
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id230451%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp232883))))
          (if (procedure? _%proc230455%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx230449%_
                 _%id230451%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx230440%_ _%id230442%_)
        (let ((_%klass230446%_
               (let ((__tmp232884
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id230442%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp232884))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass230446%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx230440%_
                 _%id230442%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx229690%_ _%proc229692%_ _%sig229693%_)
        (letrec ((_%signature-arity229695%_
                  (lambda (_%args230372%_)
                    (let _%loop230375%_ ((_%rest230378%_ _%args230372%_)
                                         (_%count230380%_ '0))
                      (let* ((_%rest230381230392%_ _%rest230378%_)
                             (_%E230385230398%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest230381230392%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K230388230429%_
                               (lambda (_%rest230426%_)
                                 (_%loop230375%_
                                  _%rest230426%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count230380%_ '1)))))
                              (_%K230387230418%_ (lambda () _%count230380%_))
                              (_%K230386230406%_
                               (lambda () (cons _%count230380%_ '()))))
                          (let ((_%try-match230383230422%_
                                 (lambda ()
                                   (if (null? _%rest230381230392%_)
                                       (_%K230387230418%_)
                                       (_%K230386230406%_)))))
                            (if (pair? _%rest230381230392%_)
                                (let* ((_%tl230390230433%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest230381230392%_)))
                                       (_%rest230437%_ _%tl230390230433%_))
                                  (_%K230388230429%_ _%rest230437%_))
                                (_%try-match230383230422%_))))))))
                 (_%make-signature229697%_
                  (lambda (_%args230254%_
                           _%return230256%_
                           _%effect230257%_
                           _%unchecked230258%_)
                    (let ((__tmp232885
                           (lambda (_%g230259230261%_)
                             (|gxc[1]#verify-class!|
                              _%ctx229690%_
                              _%g230259230261%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp232885 _%args230254%_))
                    (|gxc[1]#verify-class!| _%ctx229690%_ _%return230256%_)
                    (if _%unchecked230258%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx229690%_
                         _%unchecked230258%_)
                        '#!void)
                    (let ((_%arity230265%_
                           (_%signature-arity229695%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args230254%_)))))
                      (if _%effect230257%_
                          (let ((_%effect230268%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect230257%_))))
                            (if (and (list? _%effect230268%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect230268%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx229690%_
                                   _%proc229692%_
                                   _%effect230268%_))))
                          '#!void)
                      (cons _%arity230265%_
                            (cons (let* ((_%g230271230294%_
                                          (lambda (_%g230272230290%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g230272230290%_))))
                                         (_%g230270230368%_
                                          (lambda (_%g230272230298%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g230272230298%_))
                                                (let ((_%e230277230301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g230272230298%_))))
                                                  (let ((_%hd230278230305%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e230277230301%_)))
                                                        (_%tl230279230308%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e230277230301%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl230279230308%_))
                                                        (let ((_%e230280230311%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl230279230308%_))))
                  (let ((_%hd230281230315%_
                         (let ()
                           (declare (not safe))
                           (##car _%e230280230311%_)))
                        (_%tl230282230318%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e230280230311%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl230282230318%_))
                        (let ((_%e230283230321%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl230282230318%_))))
                          (let ((_%hd230284230325%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230283230321%_)))
                                (_%tl230285230328%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230283230321%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl230285230328%_))
                                (let ((_%e230286230331%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl230285230328%_))))
                                  (let ((_%hd230287230335%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230286230331%_)))
                                        (_%tl230288230338%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230286230331%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl230288230338%_))
                                        ((lambda (_%g230273230341%_
                                                  _%g230274230343%_
                                                  _%g230275230344%_
                                                  _%g230276230345%_)
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
                           (cons _%g230276230345%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g230275230344%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g230274230343%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g230273230341%_ '()))
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
                                         _%hd230287230335%_
                                         _%hd230284230325%_
                                         _%hd230281230315%_
                                         _%hd230278230305%_)
                                        (_%g230271230294%_
                                         _%g230272230298%_))))
                                (_%g230271230294%_ _%g230272230298%_))))
                        (_%g230271230294%_ _%g230272230298%_))))
                (_%g230271230294%_ _%g230272230298%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230271230294%_
                                                 _%g230272230298%_)))))
                                    (_%g230270230368%_
                                     (list _%args230254%_
                                           _%return230256%_
                                           _%effect230257%_
                                           _%unchecked230258%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx229690%_ _%proc229692%_)
          (let* ((_%__stx232525232526%_ _%sig229693%_)
                 (_%g229704229807%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx232525232526%_)))))
            (let ((_%__kont232528232529%_
                   (lambda (_%g229706230235%_ _%g229707230237%_)
                     (_%make-signature229697%_
                      _%g229707230237%_
                      _%g229706230235%_
                      '#f
                      '#f)))
                  (_%__kont232530232531%_
                   (lambda (_%g229714230186%_
                            _%g229715230188%_
                            _%g229716230189%_)
                     (_%make-signature229697%_
                      _%g229716230189%_
                      _%g229715230188%_
                      _%g229714230186%_
                      '#f)))
                  (_%__kont232532232533%_
                   (lambda (_%g229730230110%_
                            _%g229731230112%_
                            _%g229732230113%_)
                     (_%make-signature229697%_
                      _%g229732230113%_
                      _%g229731230112%_
                      _%g229730230110%_
                      (let ((__tmp232886
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc229692%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp232886)))))
                  (_%__kont232534232535%_
                   (lambda (_%g229750230016%_
                            _%g229751230018%_
                            _%g229752230019%_
                            _%g229753230020%_)
                     (_%make-signature229697%_
                      _%g229753230020%_
                      _%g229752230019%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g229750230016%_)))))
                  (_%__kont232536232537%_
                   (lambda (_%g229774229923%_ _%g229775229925%_)
                     (_%make-signature229697%_
                      _%g229775229925%_
                      _%g229774229923%_
                      '#f
                      (let ((__tmp232887
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc229692%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp232887)))))
                  (_%__kont232538232539%_
                   (lambda (_%g229786229858%_
                            _%g229787229860%_
                            _%g229788229861%_)
                     (_%make-signature229697%_
                      _%g229788229861%_
                      _%g229787229860%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g229786229858%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232525232526%_))
                  (let ((_%e229708230215%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232525232526%_))))
                    (let ((_%tl229710230222%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229708230215%_)))
                          (_%hd229709230219%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229708230215%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229710230222%_))
                          (let ((_%e229711230225%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl229710230222%_))))
                            (let ((_%tl229713230232%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229711230225%_)))
                                  (_%hd229712230229%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229711230225%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229713230232%_))
                                  (_%__kont232528232529%_
                                   _%hd229712230229%_
                                   _%hd229709230219%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl229713230232%_))
                                      (let ((_%e229723230162%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl229713230232%_))))
                                        (let ((_%tl229725230169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229723230162%_)))
                                              (_%hd229724230166%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229723230162%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd229724230166%_))
                                              (let ((_%e229726230172%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd229724230166%_))))
                                                (if (equal? _%e229726230172%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl229725230169%_))
                                                        (let ((_%e229727230176%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl229725230169%_))))
                  (let ((_%tl229729230183%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229727230176%_)))
                        (_%hd229728230180%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229727230176%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl229729230183%_))
                        (_%__kont232530232531%_
                         _%hd229728230180%_
                         _%hd229712230229%_
                         _%hd229709230219%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229729230183%_))
                            (let ((_%e229746230096%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl229729230183%_))))
                              (let ((_%tl229748230103%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229746230096%_)))
                                    (_%hd229747230100%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229746230096%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd229747230100%_))
                                    (let ((_%e229749230106%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd229747230100%_))))
                                      (if (equal? _%e229749230106%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229748230103%_))
                                              (_%__kont232532232533%_
                                               _%hd229728230180%_
                                               _%hd229712230229%_
                                               _%hd229709230219%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl229748230103%_))
                                                  (let ((_%e229771230006%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl229748230103%_))))
                                                    (let ((_%tl229773230013%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229771230006%_)))
                                                          (_%hd229772230010%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229771230006%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl229773230013%_))
                                                          (_%__kont232534232535%_
                                                           _%hd229772230010%_
                                                           _%hd229728230180%_
                                                           _%hd229712230229%_
                                                           _%hd229709230219%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g229704229807%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g229704229807%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g229704229807%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g229704229807%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g229704229807%_))))))
                (let () (declare (not safe)) (_%g229704229807%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e229726230172%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl229725230169%_))
                                                            (_%__kont232536232537%_
                                                             _%hd229712230229%_
                                                             _%hd229709230219%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl229725230169%_))
                        (let ((_%e229799229848%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl229725230169%_))))
                          (let ((_%tl229801229855%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229799229848%_)))
                                (_%hd229800229852%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229799229848%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl229801229855%_))
                                (_%__kont232538232539%_
                                 _%hd229800229852%_
                                 _%hd229712230229%_
                                 _%hd229709230219%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g229704229807%_)))))
                        (let () (declare (not safe)) (_%g229704229807%_))))
                (let () (declare (not safe)) (_%g229704229807%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g229704229807%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g229704229807%_))))))
                          (let () (declare (not safe)) (_%g229704229807%_)))))
                  (let () (declare (not safe)) (_%g229704229807%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig229301%_)
        (let* ((_%g229304229384%_
                (lambda (_%g229305229380%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g229305229380%_))))
               (_%g229303229686%_
                (lambda (_%g229305229388%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g229305229388%_))
                      (let ((_%e229311229391%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g229305229388%_))))
                        (let ((_%hd229312229395%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229311229391%_)))
                              (_%tl229313229398%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229311229391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl229313229398%_))
                              (let ((_%e229314229401%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl229313229398%_))))
                                (let ((_%hd229315229405%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229314229401%_)))
                                      (_%tl229316229408%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229314229401%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd229315229405%_))
                                      (let ((_%e229317229411%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd229315229405%_))))
                                        (if (equal? _%e229317229411%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229316229408%_))
                                                (let ((_%e229318229415%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl229316229408%_))))
                                                  (let ((_%hd229319229419%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229318229415%_)))
                                                        (_%tl229320229422%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229318229415%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd229319229419%_))
                                                        (let ((_%e229321229425%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd229319229419%_))))
                  (let ((_%hd229322229429%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229321229425%_)))
                        (_%tl229323229432%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229321229425%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd229322229429%_))
                        (if (let ((__tmp232888 |gxc[1]#_g232889_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp232888
                               _%hd229322229429%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229323229432%_))
                                (let ((_%e229324229435%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl229323229432%_))))
                                  (let ((_%hd229325229439%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229324229435%_)))
                                        (_%tl229326229442%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229324229435%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl229326229442%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229320229422%_))
                                            (let ((_%e229327229445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl229320229422%_))))
                                              (let ((_%hd229328229449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229327229445%_)))
                                                    (_%tl229329229452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229327229445%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd229328229449%_))
                                                    (let ((_%e229330229455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd229328229449%_))))
                                                      (if (equal? _%e229330229455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl229329229452%_))
                      (let ((_%e229331229459%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl229329229452%_))))
                        (let ((_%hd229332229463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229331229459%_)))
                              (_%tl229333229466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229331229459%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd229332229463%_))
                              (let ((_%e229334229469%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd229332229463%_))))
                                (let ((_%hd229335229473%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229334229469%_)))
                                      (_%tl229336229476%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229334229469%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd229335229473%_))
                                      (if (let ((__tmp232890
                                                 |gxc[1]#_g232891_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp232890
                                             _%hd229335229473%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl229336229476%_))
                                              (let ((_%e229337229479%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl229336229476%_))))
                                                (let ((_%hd229338229483%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e229337229479%_)))
                                                      (_%tl229339229486%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e229337229479%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl229339229486%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl229333229466%_))
                                                          (let ((_%e229340229489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl229333229466%_))))
                    (let ((_%hd229341229493%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229340229489%_)))
                          (_%tl229342229496%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229340229489%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd229341229493%_))
                          (let ((_%e229343229499%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd229341229493%_))))
                            (if (equal? _%e229343229499%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl229342229496%_))
                                    (let ((_%e229344229503%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl229342229496%_))))
                                      (let ((_%hd229345229507%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229344229503%_)))
                                            (_%tl229346229510%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229344229503%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd229345229507%_))
                                            (let ((_%e229347229513%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd229345229507%_))))
                                              (let ((_%hd229348229517%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229347229513%_)))
                                                    (_%tl229349229520%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229347229513%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd229348229517%_))
                                                    (if (let ((__tmp232892
                                                               |gxc[1]#_g232893_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp232892
                                                           _%hd229348229517%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl229349229520%_))
                                                            (let ((_%e229350229523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl229349229520%_))))
                      (let ((_%hd229351229527%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229350229523%_)))
                            (_%tl229352229530%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229350229523%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229352229530%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229346229510%_))
                                (let ((_%e229353229533%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl229346229510%_))))
                                  (let ((_%hd229354229537%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229353229533%_)))
                                        (_%tl229355229540%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229353229533%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd229354229537%_))
                                        (let ((_%e229356229543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229354229537%_))))
                                          (if (equal? _%e229356229543%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl229355229540%_))
                                                  (let ((_%e229357229547%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl229355229540%_))))
                                                    (let ((_%hd229358229551%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229357229547%_)))
                                                          (_%tl229359229554%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229357229547%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd229358229551%_))
                                                          (let ((_%e229360229557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd229358229551%_))))
                    (let ((_%hd229361229561%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229360229557%_)))
                          (_%tl229362229564%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229360229557%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd229361229561%_))
                          (if (let ((__tmp232894 |gxc[1]#_g232895_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp232894
                                 _%hd229361229561%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl229362229564%_))
                                  (let ((_%e229363229567%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl229362229564%_))))
                                    (let ((_%hd229364229571%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e229363229567%_)))
                                          (_%tl229365229574%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e229363229567%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl229365229574%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl229359229554%_))
                                              (let ((_%e229366229577%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl229359229554%_))))
                                                (let ((_%hd229367229581%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e229366229577%_)))
                                                      (_%tl229368229584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e229366229577%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd229367229581%_))
                                                      (let ((_%e229369229587%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd229367229581%_))))
                (if (equal? _%e229369229587%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl229368229584%_))
                        (let ((_%e229370229591%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl229368229584%_))))
                          (let ((_%hd229371229595%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229370229591%_)))
                                (_%tl229372229598%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229370229591%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd229371229595%_))
                                (let ((_%e229373229601%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd229371229595%_))))
                                  (let ((_%hd229374229605%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229373229601%_)))
                                        (_%tl229375229608%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229373229601%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd229374229605%_))
                                        (if (let ((__tmp232896
                                                   |gxc[1]#_g232897_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp232896
                                               _%hd229374229605%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229375229608%_))
                                                (let ((_%e229376229611%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl229375229608%_))))
                                                  (let ((_%hd229377229615%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229376229611%_)))
                                                        (_%tl229378229618%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229376229611%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229378229618%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl229372229598%_))
                                                            ((lambda (_%g229306229621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229307229623%_
                              _%g229308229624%_
                              _%g229309229625%_
                              _%g229310229626%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g229307229623%_))
                           (cons _%g229307229623%_
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
                       (cons _%g229309229625%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g229306229621%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd229377229615%_
                     _%hd229364229571%_
                     _%hd229351229527%_
                     _%hd229338229483%_
                     _%hd229325229439%_)
                    (_%g229304229384%_ _%g229305229388%_))
                (_%g229304229384%_ _%g229305229388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g229304229384%_
                                                 _%g229305229388%_))
                                            (_%g229304229384%_
                                             _%g229305229388%_))
                                        (_%g229304229384%_
                                         _%g229305229388%_))))
                                (_%g229304229384%_ _%g229305229388%_))))
                        (_%g229304229384%_ _%g229305229388%_))
                    (_%g229304229384%_ _%g229305229388%_)))
              (_%g229304229384%_ _%g229305229388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g229304229384%_
                                               _%g229305229388%_))
                                          (_%g229304229384%_
                                           _%g229305229388%_))))
                                  (_%g229304229384%_ _%g229305229388%_))
                              (_%g229304229384%_ _%g229305229388%_))
                          (_%g229304229384%_ _%g229305229388%_))))
                  (_%g229304229384%_ _%g229305229388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g229304229384%_
                                                   _%g229305229388%_))
                                              (_%g229304229384%_
                                               _%g229305229388%_)))
                                        (_%g229304229384%_
                                         _%g229305229388%_))))
                                (_%g229304229384%_ _%g229305229388%_))
                            (_%g229304229384%_ _%g229305229388%_))))
                    (_%g229304229384%_ _%g229305229388%_))
                (_%g229304229384%_ _%g229305229388%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229304229384%_
                                                     _%g229305229388%_))))
                                            (_%g229304229384%_
                                             _%g229305229388%_))))
                                    (_%g229304229384%_ _%g229305229388%_))
                                (_%g229304229384%_ _%g229305229388%_)))
                          (_%g229304229384%_ _%g229305229388%_))))
                  (_%g229304229384%_ _%g229305229388%_))
              (_%g229304229384%_ _%g229305229388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g229304229384%_
                                               _%g229305229388%_))
                                          (_%g229304229384%_
                                           _%g229305229388%_))
                                      (_%g229304229384%_ _%g229305229388%_))))
                              (_%g229304229384%_ _%g229305229388%_))))
                      (_%g229304229384%_ _%g229305229388%_))
                  (_%g229304229384%_ _%g229305229388%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229304229384%_
                                                     _%g229305229388%_))))
                                            (_%g229304229384%_
                                             _%g229305229388%_))
                                        (_%g229304229384%_
                                         _%g229305229388%_))))
                                (_%g229304229384%_ _%g229305229388%_))
                            (_%g229304229384%_ _%g229305229388%_))
                        (_%g229304229384%_ _%g229305229388%_))))
                (_%g229304229384%_ _%g229305229388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g229304229384%_
                                                 _%g229305229388%_))
                                            (_%g229304229384%_
                                             _%g229305229388%_)))
                                      (_%g229304229384%_ _%g229305229388%_))))
                              (_%g229304229384%_ _%g229305229388%_))))
                      (_%g229304229384%_ _%g229305229388%_)))))
          (_%g229303229686%_ _%sig229301%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx230458%_)
        (let* ((_%g230461230479%_
                (lambda (_%g230462230475%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230462230475%_))))
               (_%g230460230534%_
                (lambda (_%g230462230483%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230462230483%_))
                      (let ((_%e230465230486%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230462230483%_))))
                        (let ((_%hd230466230490%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230465230486%_)))
                              (_%tl230467230493%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230465230486%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230467230493%_))
                              (let ((_%e230468230496%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230467230493%_))))
                                (let ((_%hd230469230500%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230468230496%_)))
                                      (_%tl230470230503%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230468230496%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl230470230503%_))
                                      (let ((_%e230471230506%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl230470230503%_))))
                                        (let ((_%hd230472230510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230471230506%_)))
                                              (_%tl230473230513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230471230506%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl230473230513%_))
                                              ((lambda (_%g230463230516%_
                                                        _%g230464230518%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g230464230518%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g230463230516%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx230458%_
                                                        _%g230464230518%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx230458%_
                                                        _%g230463230516%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g230464230518%_
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
                                                   (cons _%g230463230516%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g230461230479%_
                                                      _%g230462230483%_)))
                                               _%hd230472230510%_
                                               _%hd230469230500%_)
                                              (_%g230461230479%_
                                               _%g230462230483%_))))
                                      (_%g230461230479%_ _%g230462230483%_))))
                              (_%g230461230479%_ _%g230462230483%_))))
                      (_%g230461230479%_ _%g230462230483%_)))))
          (_%g230460230534%_ _%stx230458%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx230538%_)
        (let* ((_%g230541230565%_
                (lambda (_%g230542230561%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230542230561%_))))
               (_%g230540230846%_
                (lambda (_%g230542230569%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230542230569%_))
                      (let ((_%e230545230572%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230542230569%_))))
                        (let ((_%hd230546230576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230545230572%_)))
                              (_%tl230547230579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230545230572%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230547230579%_))
                              (let ((_%e230548230582%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230547230579%_))))
                                (let ((_%hd230549230586%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230548230582%_)))
                                      (_%tl230550230589%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230548230582%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230550230589%_))
                                      (let ((_g232898_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl230550230589%_
                                                '0))))
                                        (begin
                                          (let ((_g232899_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232898_)
                                                       (##values-length
                                                        _g232898_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232899_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232899_)))
                                          (let ((_%target230551230592%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232898_ 0)))
                                                (_%tl230553230595%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232898_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl230553230595%_))
                                                (letrec ((_%loop230554230598%_
                                                          (lambda (_%hd230552230602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature230558230605%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd230552230602%_))
                        (let ((_%e230555230607%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd230552230602%_))))
                          (let ((_%lp-hd230556230611%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230555230607%_)))
                                (_%lp-tl230557230614%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230555230607%_))))
                            (_%loop230554230598%_
                             _%lp-tl230557230614%_
                             (cons _%lp-hd230556230611%_
                                   _%signature230558230605%_))))
                        (let ((_%signature230559230617%_
                               (reverse _%signature230558230605%_)))
                          ((lambda (_%g230543230620%_ _%g230544230622%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g230544230622%_))
                                 (let* ((_%g230640230655%_
                                         (lambda (_%g230641230651%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g230641230651%_))))
                                        (_%g230639230834%_
                                         (lambda (_%g230641230659%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g230641230659%_))
                                               (let ((_%e230644230662%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g230641230659%_))))
                                                 (let ((_%hd230645230666%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e230644230662%_)))
                                                       (_%tl230646230669%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e230644230662%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl230646230669%_))
                                                       (let ((_%e230647230672%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl230646230669%_))))
                 (let ((_%hd230648230676%_
                        (let ()
                          (declare (not safe))
                          (##car _%e230647230672%_)))
                       (_%tl230649230679%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230647230672%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl230649230679%_))
                       ((lambda (_%g230642230682%_ _%g230643230684%_)
                          (let* ((_%g230700230708%_
                                  (lambda (_%g230701230704%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g230701230704%_))))
                                 (_%g230699230830%_
                                  (lambda (_%g230701230712%_)
                                    ((lambda (_%g230702230715%_)
                                       (let* ((_%unchecked230728%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g230642230682%_))
                                              (_%g230731230739%_
                                               (lambda (_%g230732230735%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g230732230735%_))))
                                              (_%g230730230762%_
                                               (lambda (_%g230732230743%_)
                                                 ((lambda (_%g230733230746%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g230702230715%_
                                                                (cons _%g230733230746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g230732230743%_))))
                                         (_%g230730230762%_
                                          (if _%unchecked230728%_
                                              (let* ((_%g230766230781%_
                                                      (lambda (_%g230767230777%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g230767230777%_))))
                                                     (_%g230765230826%_
                                                      (lambda (_%g230767230785%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g230767230785%_))
                                                            (let ((_%e230770230788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g230767230785%_))))
                      (let ((_%hd230771230792%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230770230788%_)))
                            (_%tl230772230795%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230770230788%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230772230795%_))
                            (let ((_%e230773230798%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl230772230795%_))))
                              (let ((_%hd230774230802%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230773230798%_)))
                                    (_%tl230775230805%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230773230798%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl230775230805%_))
                                    ((lambda (_%g230768230808%_
                                              _%g230769230810%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g230769230810%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g230643230684%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g230768230808%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd230774230802%_
                                     _%hd230771230792%_)
                                    (_%g230766230781%_ _%g230767230785%_))))
                            (_%g230766230781%_ _%g230767230785%_))))
                    (_%g230766230781%_ _%g230767230785%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230765230826%_
                                                 _%unchecked230728%_))
                                              '(begin)))))
                                     _%g230701230712%_))))
                            (_%g230699230830%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g230544230622%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g230643230684%_ '()))
                   (cons '#f (cons 'signature: (cons _%g230642230682%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd230648230676%_
                        _%hd230645230666%_)
                       (_%g230640230655%_ _%g230641230659%_))))
               (_%g230640230655%_ _%g230641230659%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230640230655%_
                                                _%g230641230659%_)))))
                                   (_%g230639230834%_
                                    (|gxc[1]#parse-signature|
                                     _%stx230538%_
                                     _%g230544230622%_
                                     (let ((__tmp232900
                                            (lambda (_%g230837230840%_
                                                     _%g230838230843%_)
                                              (cons _%g230837230840%_
                                                    _%g230838230843%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp232900
                                        '()
                                        _%g230543230620%_)))))
                                 (_%g230541230565%_ _%g230542230569%_)))
                           _%signature230559230617%_
                           _%hd230549230586%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop230554230598%_
                                                   _%target230551230592%_
                                                   '()))
                                                (_%g230541230565%_
                                                 _%g230542230569%_)))))
                                      (_%g230541230565%_ _%g230542230569%_))))
                              (_%g230541230565%_ _%g230542230569%_))))
                      (_%g230541230565%_ _%g230542230569%_)))))
          (_%g230540230846%_ _%stx230538%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx230851%_)
        (let* ((_%g230854230878%_
                (lambda (_%g230855230874%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230855230874%_))))
               (_%g230853231753%_
                (lambda (_%g230855230882%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230855230882%_))
                      (let ((_%e230858230885%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230855230882%_))))
                        (let ((_%hd230859230889%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230858230885%_)))
                              (_%tl230860230892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230858230885%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230860230892%_))
                              (let ((_%e230861230895%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230860230892%_))))
                                (let ((_%hd230862230899%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230861230895%_)))
                                      (_%tl230863230902%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230861230895%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230863230902%_))
                                      (let ((_g232901_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl230863230902%_
                                                '0))))
                                        (begin
                                          (let ((_g232902_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232901_)
                                                       (##values-length
                                                        _g232901_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232902_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232902_)))
                                          (let ((_%target230864230905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232901_ 0)))
                                                (_%tl230866230908%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232901_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl230866230908%_))
                                                (letrec ((_%loop230867230911%_
                                                          (lambda (_%hd230865230915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature230871230918%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd230865230915%_))
                        (let ((_%e230868230920%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd230865230915%_))))
                          (let ((_%lp-hd230869230924%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230868230920%_)))
                                (_%lp-tl230870230927%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230868230920%_))))
                            (_%loop230867230911%_
                             _%lp-tl230870230927%_
                             (cons _%lp-hd230869230924%_
                                   _%case-signature230871230918%_))))
                        (let ((_%case-signature230872230930%_
                               (reverse _%case-signature230871230918%_)))
                          ((lambda (_%g230856230933%_ _%g230857230935%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g230857230935%_))
                                 (let* ((_%signatures230966%_
                                         (map (lambda (_%g230952230954%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx230851%_
                                                 _%g230857230935%_
                                                 _%g230952230954%_))
                                              (let ((__tmp232903
                                                     (lambda (_%g230957230960%_
                                                              _%g230958230963%_)
                                                       (cons _%g230957230960%_
                                                             _%g230958230963%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp232903
                                                 '()
                                                 _%g230856230933%_))))
                                        (_%g230969230995%_
                                         (lambda (_%g230970230991%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g230970230991%_))))
                                        (_%g230968231749%_
                                         (lambda (_%g230970230999%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g230970230999%_))
                                               (let ((_g232904_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g230970230999%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g232905_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g232904_)
                        (##values-length _g232904_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g232905_ 2)))
                 (error "Context expects 2 values" _g232905_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target230973231002%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g232904_
                                                             0)))
                                                         (_%tl230975231005%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g232904_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl230975231005%_))
                                                         (letrec ((_%loop230976231008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd230974231012%_
                                    _%sig230980231015%_
                                    _%arity230981231016%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd230974231012%_))
                                 (let ((_%e230977231018%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd230974231012%_))))
                                   (let ((_%lp-hd230978231022%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e230977231018%_)))
                                         (_%lp-tl230979231025%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e230977231018%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd230978231022%_))
                                         (let ((_%e230984231028%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd230978231022%_))))
                                           (let ((_%hd230985231032%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e230984231028%_)))
                                                 (_%tl230986231035%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e230984231028%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl230986231035%_))
                                                 (let ((_%e230987231038%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl230986231035%_))))
                                                   (let ((_%hd230988231042%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e230987231038%_)))
                                                         (_%tl230989231045%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e230987231038%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl230989231045%_))
                                                         (_%loop230976231008%_
                                                          _%lp-tl230979231025%_
                                                          (cons _%hd230988231042%_
                                                                _%sig230980231015%_)
                                                          (cons _%hd230985231032%_
                                                                _%arity230981231016%_))
                                                         (_%g230969230995%_
                                                          _%g230970230999%_))))
                                                 (_%g230969230995%_
                                                  _%g230970230999%_))))
                                         (_%g230969230995%_
                                          _%g230970230999%_))))
                                 (let ((_%sig230982231048%_
                                        (reverse _%sig230980231015%_))
                                       (_%arity230983231050%_
                                        (reverse _%arity230981231016%_)))
                                   ((lambda (_%g230971231052%_
                                             _%g230972231054%_)
                                      (let* ((_%g231071231079%_
                                              (lambda (_%g231072231075%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g231072231075%_))))
                                             (_%g231070231734%_
                                              (lambda (_%g231072231083%_)
                                                ((lambda (_%g231073231086%_)
                                                   (let* ((_%g231099231107%_
                                                           (lambda (_%g231100231103%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g231100231103%_))))
                  (_%g231098231129%_
                   (lambda (_%g231100231111%_)
                     ((lambda (_%g231101231114%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g231073231086%_
                                    (cons _%g231101231114%_ '()))))
                      _%g231100231111%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g231098231129%_
                                                      (let ((_g232906_
                                                             (let _%loop231133%_ ((_%rest231136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures230966%_)
                                          (_%unchecked-proc231138%_ '#f)
                                          (_%unchecked-clauses231139%_ '()))
                       (let* ((_%rest231140231148%_ _%rest231136%_)
                              (_%else231142231160%_
                               (lambda ()
                                 (values _%unchecked-proc231138%_
                                         (reverse!
                                          _%unchecked-clauses231139%_))))
                              (_%K231144231601%_
                               (lambda (_%rest231164%_ _%hd231166%_)
                                 (let* ((_%g231168231255%_
                                         (lambda (_%g231169231251%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g231169231251%_))))
                                        (_%g231167231597%_
                                         (lambda (_%g231169231259%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g231169231259%_))
                                               (let ((_%e231176231262%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g231169231259%_))))
                                                 (let ((_%hd231177231266%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231176231262%_)))
                                                       (_%tl231178231269%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231176231262%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl231178231269%_))
                                                       (let ((_%e231179231272%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl231178231269%_))))
                 (let ((_%hd231180231276%_
                        (let ()
                          (declare (not safe))
                          (##car _%e231179231272%_)))
                       (_%tl231181231279%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e231179231272%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd231180231276%_))
                       (let ((_%e231182231282%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd231180231276%_))))
                         (let ((_%hd231183231286%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231182231282%_)))
                               (_%tl231184231289%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231182231282%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl231184231289%_))
                               (let ((_%e231185231292%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl231184231289%_))))
                                 (let ((_%hd231186231296%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231185231292%_)))
                                       (_%tl231187231299%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231185231292%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd231186231296%_))
                                       (let ((_%e231188231302%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd231186231296%_))))
                                         (if (equal? _%e231188231302%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl231187231299%_))
                                                 (let ((_%e231189231306%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl231187231299%_))))
                                                   (let ((_%hd231190231310%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e231189231306%_)))
                                                         (_%tl231191231313%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e231189231306%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd231190231310%_))
                                                         (let ((_%e231192231316%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd231190231310%_))))
                   (let ((_%hd231193231320%_
                          (let ()
                            (declare (not safe))
                            (##car _%e231192231316%_)))
                         (_%tl231194231323%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e231192231316%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd231193231320%_))
                         (if (let ((__tmp232908 |gxc[1]#_g232909_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp232908
                                _%hd231193231320%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl231194231323%_))
                                 (let ((_%e231195231326%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl231194231323%_))))
                                   (let ((_%hd231196231330%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231195231326%_)))
                                         (_%tl231197231333%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231195231326%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl231197231333%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl231191231313%_))
                                             (let ((_%e231198231336%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl231191231313%_))))
                                               (let ((_%hd231199231340%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231198231336%_)))
                                                     (_%tl231200231343%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231198231336%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd231199231340%_))
                                                     (let ((_%e231201231346%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd231199231340%_))))
                                                       (if (equal? _%e231201231346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl231200231343%_))
                       (let ((_%e231202231350%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl231200231343%_))))
                         (let ((_%hd231203231354%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231202231350%_)))
                               (_%tl231204231357%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231202231350%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd231203231354%_))
                               (let ((_%e231205231360%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd231203231354%_))))
                                 (let ((_%hd231206231364%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231205231360%_)))
                                       (_%tl231207231367%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231205231360%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd231206231364%_))
                                       (if (let ((__tmp232910
                                                  |gxc[1]#_g232911_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp232910
                                              _%hd231206231364%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl231207231367%_))
                                               (let ((_%e231208231370%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl231207231367%_))))
                                                 (let ((_%hd231209231374%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231208231370%_)))
                                                       (_%tl231210231377%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231208231370%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl231210231377%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl231204231357%_))
                                                           (let ((_%e231211231380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl231204231357%_))))
                     (let ((_%hd231212231384%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231211231380%_)))
                           (_%tl231213231387%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231211231380%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd231212231384%_))
                           (let ((_%e231214231390%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd231212231384%_))))
                             (if (equal? _%e231214231390%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl231213231387%_))
                                     (let ((_%e231215231394%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl231213231387%_))))
                                       (let ((_%hd231216231398%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e231215231394%_)))
                                             (_%tl231217231401%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e231215231394%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd231216231398%_))
                                             (let ((_%e231218231404%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd231216231398%_))))
                                               (let ((_%hd231219231408%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231218231404%_)))
                                                     (_%tl231220231411%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231218231404%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd231219231408%_))
                                                     (if (let ((__tmp232912
                                                                |gxc[1]#_g232913_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp232912
                                                            _%hd231219231408%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl231220231411%_))
                     (let ((_%e231221231414%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl231220231411%_))))
                       (let ((_%hd231222231418%_
                              (let ()
                                (declare (not safe))
                                (##car _%e231221231414%_)))
                             (_%tl231223231421%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e231221231414%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl231223231421%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl231217231401%_))
                                 (let ((_%e231224231424%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl231217231401%_))))
                                   (let ((_%hd231225231428%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231224231424%_)))
                                         (_%tl231226231431%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231224231424%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd231225231428%_))
                                         (let ((_%e231227231434%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd231225231428%_))))
                                           (if (equal? _%e231227231434%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl231226231431%_))
                                                   (let ((_%e231228231438%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl231226231431%_))))
                                                     (let ((_%hd231229231442%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e231228231438%_)))
                                                           (_%tl231230231445%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e231228231438%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd231229231442%_))
                                                           (let ((_%e231231231448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd231229231442%_))))
                     (let ((_%hd231232231452%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231231231448%_)))
                           (_%tl231233231455%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231231231448%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd231232231452%_))
                           (if (let ((__tmp232914 |gxc[1]#_g232915_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp232914
                                  _%hd231232231452%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl231233231455%_))
                                   (let ((_%e231234231458%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl231233231455%_))))
                                     (let ((_%hd231235231462%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e231234231458%_)))
                                           (_%tl231236231465%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e231234231458%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl231236231465%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl231230231445%_))
                                               (let ((_%e231237231468%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl231230231445%_))))
                                                 (let ((_%hd231238231472%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231237231468%_)))
                                                       (_%tl231239231475%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231237231468%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd231238231472%_))
                                                       (let ((_%e231240231478%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd231238231472%_))))
                 (if (equal? _%e231240231478%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl231239231475%_))
                         (let ((_%e231241231482%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl231239231475%_))))
                           (let ((_%hd231242231486%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e231241231482%_)))
                                 (_%tl231243231489%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e231241231482%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd231242231486%_))
                                 (let ((_%e231244231492%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd231242231486%_))))
                                   (let ((_%hd231245231496%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231244231492%_)))
                                         (_%tl231246231499%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231244231492%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd231245231496%_))
                                         (if (let ((__tmp232916
                                                    |gxc[1]#_g232917_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp232916
                                                _%hd231245231496%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl231246231499%_))
                                                 (let ((_%e231247231502%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl231246231499%_))))
                                                   (let ((_%hd231248231506%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e231247231502%_)))
                                                         (_%tl231249231509%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e231247231502%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl231249231509%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl231243231489%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl231181231279%_))
                         ((lambda (_%g231170231512%_
                                   _%g231171231514%_
                                   _%g231172231515%_
                                   _%g231173231516%_
                                   _%g231174231517%_
                                   _%g231175231518%_)
                            (let ((_%clause231589%_
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
                                                     (cons _%g231175231518%_
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
                                                 (cons _%g231173231516%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231170231512%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked231591%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g231171231514%_))))
                              (_%loop231133%_
                               _%rest231164%_
                               (let ((_%$e231593%_ _%unchecked231591%_))
                                 (if _%$e231593%_
                                     _%$e231593%_
                                     _%unchecked-proc231138%_))
                               (cons _%clause231589%_
                                     _%unchecked-clauses231139%_))))
                          _%hd231248231506%_
                          _%hd231235231462%_
                          _%hd231222231418%_
                          _%hd231209231374%_
                          _%hd231196231330%_
                          _%hd231177231266%_)
                         (_%g231168231255%_ _%g231169231259%_))
                     (_%g231168231255%_ _%g231169231259%_))
                 (_%g231168231255%_ _%g231169231259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g231168231255%_
                                                  _%g231169231259%_))
                                             (_%g231168231255%_
                                              _%g231169231259%_))
                                         (_%g231168231255%_
                                          _%g231169231259%_))))
                                 (_%g231168231255%_ _%g231169231259%_))))
                         (_%g231168231255%_ _%g231169231259%_))
                     (_%g231168231255%_ _%g231169231259%_)))
               (_%g231168231255%_ _%g231169231259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231168231255%_
                                                _%g231169231259%_))
                                           (_%g231168231255%_
                                            _%g231169231259%_))))
                                   (_%g231168231255%_ _%g231169231259%_))
                               (_%g231168231255%_ _%g231169231259%_))
                           (_%g231168231255%_ _%g231169231259%_))))
                   (_%g231168231255%_ _%g231169231259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g231168231255%_
                                                    _%g231169231259%_))
                                               (_%g231168231255%_
                                                _%g231169231259%_)))
                                         (_%g231168231255%_
                                          _%g231169231259%_))))
                                 (_%g231168231255%_ _%g231169231259%_))
                             (_%g231168231255%_ _%g231169231259%_))))
                     (_%g231168231255%_ _%g231169231259%_))
                 (_%g231168231255%_ _%g231169231259%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g231168231255%_
                                                      _%g231169231259%_))))
                                             (_%g231168231255%_
                                              _%g231169231259%_))))
                                     (_%g231168231255%_ _%g231169231259%_))
                                 (_%g231168231255%_ _%g231169231259%_)))
                           (_%g231168231255%_ _%g231169231259%_))))
                   (_%g231168231255%_ _%g231169231259%_))
               (_%g231168231255%_ _%g231169231259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231168231255%_
                                                _%g231169231259%_))
                                           (_%g231168231255%_
                                            _%g231169231259%_))
                                       (_%g231168231255%_ _%g231169231259%_))))
                               (_%g231168231255%_ _%g231169231259%_))))
                       (_%g231168231255%_ _%g231169231259%_))
                   (_%g231168231255%_ _%g231169231259%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g231168231255%_
                                                      _%g231169231259%_))))
                                             (_%g231168231255%_
                                              _%g231169231259%_))
                                         (_%g231168231255%_
                                          _%g231169231259%_))))
                                 (_%g231168231255%_ _%g231169231259%_))
                             (_%g231168231255%_ _%g231169231259%_))
                         (_%g231168231255%_ _%g231169231259%_))))
                 (_%g231168231255%_ _%g231169231259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g231168231255%_
                                                  _%g231169231259%_))
                                             (_%g231168231255%_
                                              _%g231169231259%_)))
                                       (_%g231168231255%_ _%g231169231259%_))))
                               (_%g231168231255%_ _%g231169231259%_))))
                       (_%g231168231255%_ _%g231169231259%_))))
               (_%g231168231255%_ _%g231169231259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231168231255%_
                                                _%g231169231259%_)))))
                                   (_%g231167231597%_ _%hd231166%_)))))
                         (if (pair? _%rest231140231148%_)
                             (let ((_%hd231145231605%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest231140231148%_)))
                                   (_%tl231146231608%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest231140231148%_))))
                               (let* ((_%hd231611%_ _%hd231145231605%_)
                                      (_%rest231614%_ _%tl231146231608%_))
                                 (_%K231144231601%_
                                  _%rest231614%_
                                  _%hd231611%_)))
                             (_%else231142231160%_))))))
                (begin
                  (let ((_g232907_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g232906_)
                               (##values-length _g232906_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g232907_ 2)))
                        (error "Context expects 2 values" _g232907_)))
                  (let ((_%unchecked-proc231617%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232906_ 0)))
                        (_%unchecked-clauses231619%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232906_ 1))))
                    (if _%unchecked-proc231617%_
                        (let* ((_%g231621231645%_
                                (lambda (_%g231622231641%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g231622231641%_))))
                               (_%g231620231730%_
                                (lambda (_%g231622231649%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g231622231649%_))
                                      (let ((_%e231625231652%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g231622231649%_))))
                                        (let ((_%hd231626231656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231625231652%_)))
                                              (_%tl231627231659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231625231652%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231627231659%_))
                                              (let ((_%e231628231662%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl231627231659%_))))
                                                (let ((_%hd231629231666%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231628231662%_)))
                                                      (_%tl231630231669%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231628231662%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd231629231666%_))
                                                      (let ((_g232918_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd231629231666%_ '0))))
                (begin
                  (let ((_g232919_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g232918_)
                               (##values-length _g232918_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g232919_ 2)))
                        (error "Context expects 2 values" _g232919_)))
                  (let ((_%target231631231672%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232918_ 0)))
                        (_%tl231633231675%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232918_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl231633231675%_))
                        (letrec ((_%loop231634231678%_
                                  (lambda (_%hd231632231682%_
                                           _%clause231638231685%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd231632231682%_))
                                        (let ((_%e231635231687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd231632231682%_))))
                                          (let ((_%lp-hd231636231691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e231635231687%_)))
                                                (_%lp-tl231637231694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e231635231687%_))))
                                            (_%loop231634231678%_
                                             _%lp-tl231637231694%_
                                             (cons _%lp-hd231636231691%_
                                                   _%clause231638231685%_))))
                                        (let ((_%clause231639231697%_
                                               (reverse _%clause231638231685%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl231630231669%_))
                                              ((lambda (_%g231623231700%_
                                                        _%g231624231702%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g231624231702%_
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
                                             (let ((__tmp232920
                                                    (lambda (_%g231721231724%_
                                                             _%g231722231727%_)
                                                      (cons _%g231721231724%_
                                                            _%g231722231727%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp232920
                                                '()
                                                _%g231623231700%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause231639231697%_
                                               _%hd231626231656%_)
                                              (_%g231621231645%_
                                               _%g231622231649%_)))))))
                          (_%loop231634231678%_ _%target231631231672%_ '()))
                        (_%g231621231645%_ _%g231622231649%_)))))
              (_%g231621231645%_ _%g231622231649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g231621231645%_
                                               _%g231622231649%_))))
                                      (_%g231621231645%_ _%g231622231649%_)))))
                          (_%g231620231730%_
                           (list _%unchecked-proc231617%_
                                 _%unchecked-clauses231619%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g231072231083%_))))
                                        (_%g231070231734%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g230857230935%_
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
                                          _%g230971231052%_
                                          _%g230972231054%_))
                                       (let ((__tmp232921
                                              (lambda (_%g231737231741%_
                                                       _%g231738231744%_
                                                       _%g231739231746%_)
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
                                (cons _%g231738231744%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g231737231741%_ '())))))
              _%g231739231746%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp232921
                                          '()
                                          _%g230971231052%_
                                          _%g230972231054%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig230982231048%_
                                    _%arity230983231050%_))))))
                   (_%loop230976231008%_ _%target230973231002%_ '() '()))
                 (_%g230969230995%_ _%g230970230999%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230969230995%_
                                                _%g230970230999%_)))))
                                   (_%g230968231749%_ _%signatures230966%_))
                                 (_%g230854230878%_ _%g230855230882%_)))
                           _%case-signature230872230930%_
                           _%hd230862230899%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop230867230911%_
                                                   _%target230864230905%_
                                                   '()))
                                                (_%g230854230878%_
                                                 _%g230855230882%_)))))
                                      (_%g230854230878%_ _%g230855230882%_))))
                              (_%g230854230878%_ _%g230855230882%_))))
                      (_%g230854230878%_ _%g230855230882%_)))))
          (_%g230853231753%_ _%stx230851%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx231761%_)
        (let* ((_%__stx232741232742%_ _%$stx231761%_)
               (_%g231767231827%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232741232742%_)))))
          (let ((_%__kont232744232745%_
                 (lambda (_%g231769232049%_ _%g231770232051%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231770232051%_ '()))
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
                                                       (cons _%g231770232051%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231769232049%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont232746232747%_
                 (lambda (_%g231784231974%_
                          _%g231785231976%_
                          _%g231786231977%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231786231977%_ '()))
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
                                                       (cons _%g231786231977%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231785231976%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g231784231974%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont232748232749%_
                 (lambda (_%g231803231888%_
                          _%g231804231890%_
                          _%g231805231891%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231805231891%_ '()))
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
                                                       (cons _%g231805231891%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231804231890%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g231803231888%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232741232742%_))
                (let ((_%e231771232005%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232741232742%_))))
                  (let ((_%tl231773232012%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231771232005%_)))
                        (_%hd231772232009%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231771232005%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl231773232012%_))
                        (let ((_%e231774232015%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl231773232012%_))))
                          (let ((_%tl231776232022%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e231774232015%_)))
                                (_%hd231775232019%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e231774232015%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd231775232019%_))
                                (let ((_%e231777232025%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd231775232019%_))))
                                  (if (equal? _%e231777232025%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl231776232022%_))
                                          (let ((_%e231778232029%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl231776232022%_))))
                                            (let ((_%tl231780232036%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e231778232029%_)))
                                                  (_%hd231779232033%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e231778232029%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl231780232036%_))
                                                  (let ((_%e231781232039%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl231780232036%_))))
                                                    (let ((_%tl231783232046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231781232039%_)))
                                                          (_%hd231782232043%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231781232039%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl231783232046%_))
                                                          (_%__kont232744232745%_
                                                           _%hd231782232043%_
                                                           _%hd231779232033%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g231767231827%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g231767231827%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g231767231827%_)))
                                      (if (equal? _%e231777232025%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231776232022%_))
                                              (let ((_%e231794231944%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl231776232022%_))))
                                                (let ((_%tl231796231951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231794231944%_)))
                                                      (_%hd231795231948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231794231944%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl231796231951%_))
                                                      (let ((_%e231797231954%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl231796231951%_))))
                (let ((_%tl231799231961%_
                       (let () (declare (not safe)) (##cdr _%e231797231954%_)))
                      (_%hd231798231958%_
                       (let ()
                         (declare (not safe))
                         (##car _%e231797231954%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl231799231961%_))
                      (let ((_%e231800231964%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl231799231961%_))))
                        (let ((_%tl231802231971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231800231964%_)))
                              (_%hd231801231968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231800231964%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl231802231971%_))
                              (_%__kont232746232747%_
                               _%hd231801231968%_
                               _%hd231798231958%_
                               _%hd231795231948%_)
                              (let ()
                                (declare (not safe))
                                (_%g231767231827%_)))))
                      (let () (declare (not safe)) (_%g231767231827%_)))))
              (let () (declare (not safe)) (_%g231767231827%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g231767231827%_)))
                                          (if (equal? _%e231777232025%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl231776232022%_))
                                                  (let ((_%e231813231858%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl231776232022%_))))
                                                    (let ((_%tl231815231865%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231813231858%_)))
                                                          (_%hd231814231862%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231813231858%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl231815231865%_))
                                                          (let ((_%e231816231868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl231815231865%_))))
                    (let ((_%tl231818231875%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e231816231868%_)))
                          (_%hd231817231872%_
                           (let ()
                             (declare (not safe))
                             (##car _%e231816231868%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231818231875%_))
                          (let ((_%e231819231878%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl231818231875%_))))
                            (let ((_%tl231821231885%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231819231878%_)))
                                  (_%hd231820231882%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231819231878%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl231821231885%_))
                                  (_%__kont232748232749%_
                                   _%hd231820231882%_
                                   _%hd231817231872%_
                                   _%hd231814231862%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g231767231827%_)))))
                          (let () (declare (not safe)) (_%g231767231827%_)))))
                  (let () (declare (not safe)) (_%g231767231827%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g231767231827%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g231767231827%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g231767231827%_)))))
                        (let () (declare (not safe)) (_%g231767231827%_)))))
                (let () (declare (not safe)) (_%g231767231827%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx232073%_)
        (let* ((_%g232077232097%_
                (lambda (_%g232078232093%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g232078232093%_))))
               (_%g232076232166%_
                (lambda (_%g232078232101%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g232078232101%_))
                      (let ((_%e232080232104%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g232078232101%_))))
                        (let ((_%hd232081232108%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e232080232104%_)))
                              (_%tl232082232111%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e232080232104%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl232082232111%_))
                              (let ((_g232922_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl232082232111%_
                                        '0))))
                                (begin
                                  (let ((_g232923_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232922_)
                                               (##values-length _g232922_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232923_ 2)))
                                        (error "Context expects 2 values"
                                               _g232923_)))
                                  (let ((_%target232083232114%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232922_ 0)))
                                        (_%tl232085232117%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232922_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl232085232117%_))
                                        (letrec ((_%loop232086232120%_
                                                  (lambda (_%hd232084232124%_
                                                           _%decl232090232127%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd232084232124%_))
                                                        (let ((_%e232087232129%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd232084232124%_))))
                  (let ((_%lp-hd232088232133%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232087232129%_)))
                        (_%lp-tl232089232136%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232087232129%_))))
                    (_%loop232086232120%_
                     _%lp-tl232089232136%_
                     (cons _%lp-hd232088232133%_ _%decl232090232127%_))))
                (let ((_%decl232091232139%_ (reverse _%decl232090232127%_)))
                  ((lambda (_%g232079232142%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp232924
                                  (lambda (_%g232157232160%_ _%g232158232163%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g232157232160%_)
                                          _%g232158232163%_))))
                             (declare (not safe))
                             (__foldr1 __tmp232924 '() _%g232079232142%_))))
                   _%decl232091232139%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop232086232120%_
                                           _%target232083232114%_
                                           '()))
                                        (_%g232077232097%_
                                         _%g232078232101%_)))))
                              (_%g232077232097%_ _%g232078232101%_))))
                      (_%g232077232097%_ _%g232078232101%_)))))
          (_%g232076232166%_ _%$stx232073%_))))))
