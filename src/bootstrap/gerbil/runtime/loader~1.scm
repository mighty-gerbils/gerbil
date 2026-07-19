(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g179128_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg178030%_)
       ($%arg177943 . _%$%arg177943178014%_)
       (id . _%id177967%_)
       ($%arg177942 . _%$%arg177942178000%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179129_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179128_|)))
  (define |[1]#_g179131_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179132_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179131_|)))
  (define |[1]#_g179133_|
    (gx#core-deserialize-mark
     '(0
       ($%arg178063 . _%$%arg178063178120%_)
       ($%arg178064 . _%$%arg178064178134%_)
       (arg . _%arg178150%_)
       (id . _%id178087%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179134_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179133_|)))
  (define |[1]#_g179136_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179137_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179136_|)))
  (define |[1]#_g179138_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg178270%_)
       (id . _%id178207%_)
       ($%arg178183 . _%$%arg178183178240%_)
       ($%arg178184 . _%$%arg178184178254%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179139_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179138_|)))
  (define |[1]#_g179141_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179142_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179141_|)))
  (define |[1]#_g179143_|
    (gx#core-deserialize-mark
     '(0
       ($%arg178303 . _%$%arg178303178360%_)
       ($%arg178304 . _%$%arg178304178374%_)
       (arg . _%arg178390%_)
       (id . _%id178327%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179144_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179143_|)))
  (define |[1]#_g179146_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179147_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179146_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx177924%_)
        (let* ((_%__stx179019179020%_ _%$stx177924%_)
               (_%$%g177929177950%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179019179020%_))))
          (let ((_%__kont179022179023%_
                 (lambda (_%$%g177931178016%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179129_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp179130
                                                  (lambda (_%$%g178031178034%_
                                                           _%$%g178032178037%_)
                                                    (cons _%$%g178031178034%_
                                                          _%$%g178032178037%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179130
                                              '()
                                              _%$%g177931178016%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179132_|
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
                (_%__kont179026179027%_
                 (lambda (_%$%g177944177957%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%$%g177928177969%_
                    (lambda ()
                      (let ((_%$%g177944177957%_ _%__stx179019179020%_))
                        (if (gx#identifier? _%$%g177944177957%_)
                            (_%__kont179026179027%_ _%$%g177944177957%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g177929177950%_))))))
                   (_%__match179042179043%_
                    (lambda (_%$%e177932177976%_
                             _%$%hd177933177980%_
                             _%$%tl177934177983%_
                             _%__splice179024179025%_
                             _%$%target177935177986%_
                             _%$%tl177937177989%_)
                      (letrec ((_%$%loop177938177992%_
                                (lambda (_%$%hd177936177996%_
                                         _%$%arg177942177999%_)
                                  (if (gx#stx-pair? _%$%hd177936177996%_)
                                      (let ((_%$%e177939178002%_
                                             (gx#syntax-e
                                              _%$%hd177936177996%_)))
                                        (let ((_%$%lp-tl177941178009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e177939178002%_)))
                                              (_%$%lp-hd177940178006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e177939178002%_))))
                                          (_%$%loop177938177992%_
                                           _%$%lp-tl177941178009%_
                                           (cons _%$%lp-hd177940178006%_
                                                 _%$%arg177942177999%_))))
                                      (let ((_%$%arg177943178012%_
                                             (reverse _%$%arg177942177999%_)))
                                        (_%__kont179022179023%_
                                         _%$%arg177943178012%_))))))
                        (_%$%loop177938177992%_
                         _%$%target177935177986%_
                         '())))))
              (if (gx#stx-pair? _%__stx179019179020%_)
                  (let ((_%$%e177932177976%_
                         (gx#syntax-e _%__stx179019179020%_)))
                    (let ((_%$%tl177934177983%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e177932177976%_)))
                          (_%$%hd177933177980%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e177932177976%_))))
                      (if (gx#stx-pair/null? _%$%tl177934177983%_)
                          (let ((_%__splice179024179025%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl177934177983%_
                                  '0)))
                            (let ((_%$%tl177937177989%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179024179025%_
                                      '1)))
                                  (_%$%target177935177986%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179024179025%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl177937177989%_)
                                  (_%__match179042179043%_
                                   _%$%e177932177976%_
                                   _%$%hd177933177980%_
                                   _%$%tl177934177983%_
                                   _%__splice179024179025%_
                                   _%$%target177935177986%_
                                   _%$%tl177937177989%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g177928177969%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g177928177969%_)))))
                  (let () (declare (not safe)) (_%$%g177928177969%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx178045%_)
        (let* ((_%__stx179045179046%_ _%$stx178045%_)
               (_%$%g178050178071%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179045179046%_))))
          (let ((_%__kont179048179049%_
                 (lambda (_%$%g178052178136%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179134_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp179135
                                                  (lambda (_%$%g178151178154%_
                                                           _%$%g178152178157%_)
                                                    (cons _%$%g178151178154%_
                                                          _%$%g178152178157%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179135
                                              '()
                                              _%$%g178052178136%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179137_|
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
                (_%__kont179052179053%_
                 (lambda (_%$%g178065178078%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%$%g178049178089%_
                    (lambda ()
                      (let ((_%$%g178065178078%_ _%__stx179045179046%_))
                        (if (gx#identifier? _%$%g178065178078%_)
                            (_%__kont179052179053%_ _%$%g178065178078%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g178050178071%_))))))
                   (_%__match179068179069%_
                    (lambda (_%$%e178053178096%_
                             _%$%hd178054178100%_
                             _%$%tl178055178103%_
                             _%__splice179050179051%_
                             _%$%target178056178106%_
                             _%$%tl178058178109%_)
                      (letrec ((_%$%loop178059178112%_
                                (lambda (_%$%hd178057178116%_
                                         _%$%arg178063178119%_)
                                  (if (gx#stx-pair? _%$%hd178057178116%_)
                                      (let ((_%$%e178060178122%_
                                             (gx#syntax-e
                                              _%$%hd178057178116%_)))
                                        (let ((_%$%lp-tl178062178129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e178060178122%_)))
                                              (_%$%lp-hd178061178126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e178060178122%_))))
                                          (_%$%loop178059178112%_
                                           _%$%lp-tl178062178129%_
                                           (cons _%$%lp-hd178061178126%_
                                                 _%$%arg178063178119%_))))
                                      (let ((_%$%arg178064178132%_
                                             (reverse _%$%arg178063178119%_)))
                                        (_%__kont179048179049%_
                                         _%$%arg178064178132%_))))))
                        (_%$%loop178059178112%_
                         _%$%target178056178106%_
                         '())))))
              (if (gx#stx-pair? _%__stx179045179046%_)
                  (let ((_%$%e178053178096%_
                         (gx#syntax-e _%__stx179045179046%_)))
                    (let ((_%$%tl178055178103%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e178053178096%_)))
                          (_%$%hd178054178100%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e178053178096%_))))
                      (if (gx#stx-pair/null? _%$%tl178055178103%_)
                          (let ((_%__splice179050179051%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl178055178103%_
                                  '0)))
                            (let ((_%$%tl178058178109%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179050179051%_
                                      '1)))
                                  (_%$%target178056178106%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179050179051%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl178058178109%_)
                                  (_%__match179068179069%_
                                   _%$%e178053178096%_
                                   _%$%hd178054178100%_
                                   _%$%tl178055178103%_
                                   _%__splice179050179051%_
                                   _%$%target178056178106%_
                                   _%$%tl178058178109%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g178049178089%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g178049178089%_)))))
                  (let () (declare (not safe)) (_%$%g178049178089%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx178165%_)
        (let* ((_%__stx179071179072%_ _%$stx178165%_)
               (_%$%g178170178191%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179071179072%_))))
          (let ((_%__kont179074179075%_
                 (lambda (_%$%g178172178256%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179139_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp179140
                                                  (lambda (_%$%g178271178274%_
                                                           _%$%g178272178277%_)
                                                    (cons _%$%g178271178274%_
                                                          _%$%g178272178277%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179140
                                              '()
                                              _%$%g178172178256%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179142_|
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
                (_%__kont179078179079%_
                 (lambda (_%$%g178185178198%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%$%g178169178209%_
                    (lambda ()
                      (let ((_%$%g178185178198%_ _%__stx179071179072%_))
                        (if (gx#identifier? _%$%g178185178198%_)
                            (_%__kont179078179079%_ _%$%g178185178198%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g178170178191%_))))))
                   (_%__match179094179095%_
                    (lambda (_%$%e178173178216%_
                             _%$%hd178174178220%_
                             _%$%tl178175178223%_
                             _%__splice179076179077%_
                             _%$%target178176178226%_
                             _%$%tl178178178229%_)
                      (letrec ((_%$%loop178179178232%_
                                (lambda (_%$%hd178177178236%_
                                         _%$%arg178183178239%_)
                                  (if (gx#stx-pair? _%$%hd178177178236%_)
                                      (let ((_%$%e178180178242%_
                                             (gx#syntax-e
                                              _%$%hd178177178236%_)))
                                        (let ((_%$%lp-tl178182178249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e178180178242%_)))
                                              (_%$%lp-hd178181178246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e178180178242%_))))
                                          (_%$%loop178179178232%_
                                           _%$%lp-tl178182178249%_
                                           (cons _%$%lp-hd178181178246%_
                                                 _%$%arg178183178239%_))))
                                      (let ((_%$%arg178184178252%_
                                             (reverse _%$%arg178183178239%_)))
                                        (_%__kont179074179075%_
                                         _%$%arg178184178252%_))))))
                        (_%$%loop178179178232%_
                         _%$%target178176178226%_
                         '())))))
              (if (gx#stx-pair? _%__stx179071179072%_)
                  (let ((_%$%e178173178216%_
                         (gx#syntax-e _%__stx179071179072%_)))
                    (let ((_%$%tl178175178223%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e178173178216%_)))
                          (_%$%hd178174178220%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e178173178216%_))))
                      (if (gx#stx-pair/null? _%$%tl178175178223%_)
                          (let ((_%__splice179076179077%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl178175178223%_
                                  '0)))
                            (let ((_%$%tl178178178229%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179076179077%_
                                      '1)))
                                  (_%$%target178176178226%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179076179077%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl178178178229%_)
                                  (_%__match179094179095%_
                                   _%$%e178173178216%_
                                   _%$%hd178174178220%_
                                   _%$%tl178175178223%_
                                   _%__splice179076179077%_
                                   _%$%target178176178226%_
                                   _%$%tl178178178229%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g178169178209%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g178169178209%_)))))
                  (let () (declare (not safe)) (_%$%g178169178209%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx178285%_)
        (let* ((_%__stx179097179098%_ _%$stx178285%_)
               (_%$%g178290178311%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179097179098%_))))
          (let ((_%__kont179100179101%_
                 (lambda (_%$%g178292178376%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179144_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp179145
                                                  (lambda (_%$%g178391178394%_
                                                           _%$%g178392178397%_)
                                                    (cons _%$%g178391178394%_
                                                          _%$%g178392178397%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179145
                                              '()
                                              _%$%g178292178376%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179147_|
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
                (_%__kont179104179105%_
                 (lambda (_%$%g178305178318%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%$%g178289178329%_
                    (lambda ()
                      (let ((_%$%g178305178318%_ _%__stx179097179098%_))
                        (if (gx#identifier? _%$%g178305178318%_)
                            (_%__kont179104179105%_ _%$%g178305178318%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g178290178311%_))))))
                   (_%__match179120179121%_
                    (lambda (_%$%e178293178336%_
                             _%$%hd178294178340%_
                             _%$%tl178295178343%_
                             _%__splice179102179103%_
                             _%$%target178296178346%_
                             _%$%tl178298178349%_)
                      (letrec ((_%$%loop178299178352%_
                                (lambda (_%$%hd178297178356%_
                                         _%$%arg178303178359%_)
                                  (if (gx#stx-pair? _%$%hd178297178356%_)
                                      (let ((_%$%e178300178362%_
                                             (gx#syntax-e
                                              _%$%hd178297178356%_)))
                                        (let ((_%$%lp-tl178302178369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e178300178362%_)))
                                              (_%$%lp-hd178301178366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e178300178362%_))))
                                          (_%$%loop178299178352%_
                                           _%$%lp-tl178302178369%_
                                           (cons _%$%lp-hd178301178366%_
                                                 _%$%arg178303178359%_))))
                                      (let ((_%$%arg178304178372%_
                                             (reverse _%$%arg178303178359%_)))
                                        (_%__kont179100179101%_
                                         _%$%arg178304178372%_))))))
                        (_%$%loop178299178352%_
                         _%$%target178296178346%_
                         '())))))
              (if (gx#stx-pair? _%__stx179097179098%_)
                  (let ((_%$%e178293178336%_
                         (gx#syntax-e _%__stx179097179098%_)))
                    (let ((_%$%tl178295178343%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e178293178336%_)))
                          (_%$%hd178294178340%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e178293178336%_))))
                      (if (gx#stx-pair/null? _%$%tl178295178343%_)
                          (let ((_%__splice179102179103%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl178295178343%_
                                  '0)))
                            (let ((_%$%tl178298178349%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179102179103%_
                                      '1)))
                                  (_%$%target178296178346%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179102179103%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl178298178349%_)
                                  (_%__match179120179121%_
                                   _%$%e178293178336%_
                                   _%$%hd178294178340%_
                                   _%$%tl178295178343%_
                                   _%__splice179102179103%_
                                   _%$%target178296178346%_
                                   _%$%tl178298178349%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g178289178329%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g178289178329%_)))))
                  (let () (declare (not safe)) (_%$%g178289178329%_))))))))))
