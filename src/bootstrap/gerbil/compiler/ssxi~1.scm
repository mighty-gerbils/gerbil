(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g263419_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263426_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263428_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263430_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263432_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263434_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263446_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263448_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263450_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263452_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263454_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx256877%_)
        (let* ((_%g256881256899%_
                (lambda (_%g256882256895%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g256882256895%_))))
               (_%g256880256954%_
                (lambda (_%g256882256903%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g256882256903%_))
                      (let ((_%e256885256906%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g256882256903%_))))
                        (let ((_%hd256886256910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e256885256906%_)))
                              (_%tl256887256913%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e256885256906%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl256887256913%_))
                              (let ((_%e256888256916%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl256887256913%_))))
                                (let ((_%hd256889256920%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e256888256916%_)))
                                      (_%tl256890256923%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e256888256916%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl256890256923%_))
                                      (let ((_%e256891256926%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl256890256923%_))))
                                        (let ((_%hd256892256930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e256891256926%_)))
                                              (_%tl256893256933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e256891256926%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl256893256933%_))
                                              ((lambda (_%g256883256936%_
                                                        _%g256884256938%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g256884256938%_))
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
                               (cons _%g256884256938%_ '()))
                         (cons _%g256883256936%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g256881256899%_
                                                      _%g256882256903%_)))
                                               _%hd256892256930%_
                                               _%hd256889256920%_)
                                              (_%g256881256899%_
                                               _%g256882256903%_))))
                                      (_%g256881256899%_ _%g256882256903%_))))
                              (_%g256881256899%_ _%g256882256903%_))))
                      (_%g256881256899%_ _%g256882256903%_)))))
          (_%g256880256954%_ _%$stx256877%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx256958%_)
        (let* ((_%g256962256980%_
                (lambda (_%g256963256976%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g256963256976%_))))
               (_%g256961257035%_
                (lambda (_%g256963256984%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g256963256984%_))
                      (let ((_%e256966256987%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g256963256984%_))))
                        (let ((_%hd256967256991%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e256966256987%_)))
                              (_%tl256968256994%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e256966256987%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl256968256994%_))
                              (let ((_%e256969256997%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl256968256994%_))))
                                (let ((_%hd256970257001%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e256969256997%_)))
                                      (_%tl256971257004%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e256969256997%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl256971257004%_))
                                      (let ((_%e256972257007%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl256971257004%_))))
                                        (let ((_%hd256973257011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e256972257007%_)))
                                              (_%tl256974257014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e256972257007%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl256974257014%_))
                                              ((lambda (_%g256964257017%_
                                                        _%g256965257019%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g256965257019%_))
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
                               (cons _%g256965257019%_ '()))
                         (cons _%g256964257017%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g256962256980%_
                                                      _%g256963256984%_)))
                                               _%hd256973257011%_
                                               _%hd256970257001%_)
                                              (_%g256962256980%_
                                               _%g256963256984%_))))
                                      (_%g256962256980%_ _%g256963256984%_))))
                              (_%g256962256980%_ _%g256963256984%_))))
                      (_%g256962256980%_ _%g256963256984%_)))))
          (_%g256961257035%_ _%$stx256958%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx257039%_)
        (let* ((_%g257043257072%_
                (lambda (_%g257044257068%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257044257068%_))))
               (_%g257042257168%_
                (lambda (_%g257044257076%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257044257076%_))
                      (let ((_%e257047257079%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g257044257076%_))))
                        (let ((_%hd257048257083%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257047257079%_)))
                              (_%tl257049257086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257047257079%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl257049257086%_))
                              (let ((_g263397_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl257049257086%_
                                        '0))))
                                (begin
                                  (let ((_g263398_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g263397_)
                                               (##values-length _g263397_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g263398_ 2)))
                                        (error "Context expects 2 values"
                                               _g263398_)))
                                  (let ((_%target257050257089%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263397_ 0)))
                                        (_%tl257052257092%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263397_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl257052257092%_))
                                        (letrec ((_%loop257053257095%_
                                                  (lambda (_%hd257051257099%_
                                                           _%type257057257102%_
                                                           _%symbol257058257103%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd257051257099%_))
                                                        (let ((_%e257054257105%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd257051257099%_))))
                  (let ((_%lp-hd257055257109%_
                         (let ()
                           (declare (not safe))
                           (##car _%e257054257105%_)))
                        (_%lp-tl257056257112%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e257054257105%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd257055257109%_))
                        (let ((_%e257061257115%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd257055257109%_))))
                          (let ((_%hd257062257119%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e257061257115%_)))
                                (_%tl257063257122%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e257061257115%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl257063257122%_))
                                (let ((_%e257064257125%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl257063257122%_))))
                                  (let ((_%hd257065257129%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e257064257125%_)))
                                        (_%tl257066257132%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e257064257125%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl257066257132%_))
                                        (_%loop257053257095%_
                                         _%lp-tl257056257112%_
                                         (cons _%hd257065257129%_
                                               _%type257057257102%_)
                                         (cons _%hd257062257119%_
                                               _%symbol257058257103%_))
                                        (_%g257043257072%_
                                         _%g257044257076%_))))
                                (_%g257043257072%_ _%g257044257076%_))))
                        (_%g257043257072%_ _%g257044257076%_))))
                (let ((_%type257059257135%_ (reverse _%type257057257102%_))
                      (_%symbol257060257137%_
                       (reverse _%symbol257058257103%_)))
                  ((lambda (_%g257045257139%_ _%g257046257141%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g257045257139%_
                                _%g257046257141%_))
                             (let ((__tmp263399
                                    (lambda (_%g257156257160%_
                                             _%g257157257163%_
                                             _%g257158257165%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g257157257163%_
                                                        (cons _%g257156257160%_
                                                              '())))
                                            _%g257158257165%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp263399
                                '()
                                _%g257045257139%_
                                _%g257046257141%_)))))
                   _%type257059257135%_
                   _%symbol257060257137%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop257053257095%_
                                           _%target257050257089%_
                                           '()
                                           '()))
                                        (_%g257043257072%_
                                         _%g257044257076%_)))))
                              (_%g257043257072%_ _%g257044257076%_))))
                      (_%g257043257072%_ _%g257044257076%_)))))
          (_%g257042257168%_ _%$stx257039%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx257173%_)
        (let* ((_%__stx262708262709%_ _%$stx257173%_)
               (_%g257178257220%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262708262709%_)))))
          (let ((_%__kont262711262712%_
                 (lambda (_%g257180257348%_
                          _%g257181257350%_
                          _%g257182257351%_
                          _%g257183257352%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g257183257352%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g257182257351%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g257181257350%_ '()))
                                           (cons _%g257180257348%_ '())))))))
                (_%__kont262713262714%_
                 (lambda (_%g257199257267%_
                          _%g257200257269%_
                          _%g257201257270%_
                          _%g257202257271%_)
                   (cons _%g257202257271%_
                         (cons _%g257201257270%_
                               (cons _%g257200257269%_
                                     (cons _%g257199257267%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match262747262748%_
                   (lambda (_%e257184257298%_
                            _%hd257185257302%_
                            _%tl257186257305%_
                            _%e257187257308%_
                            _%hd257188257312%_
                            _%tl257189257315%_
                            _%e257190257318%_
                            _%hd257191257322%_
                            _%tl257192257325%_
                            _%e257193257328%_
                            _%hd257194257332%_
                            _%tl257195257335%_
                            _%e257196257338%_
                            _%hd257197257342%_
                            _%tl257198257345%_)
                     (let ((_%g257180257348%_ _%hd257197257342%_)
                           (_%g257181257350%_ _%hd257194257332%_)
                           (_%g257182257351%_ _%hd257191257322%_)
                           (_%g257183257352%_ _%hd257188257312%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g257183257352%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g257182257351%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g257181257350%_)))
                           (_%__kont262711262712%_
                            _%g257180257348%_
                            _%g257181257350%_
                            _%g257182257351%_
                            _%g257183257352%_)
                           (let ()
                             (declare (not safe))
                             (_%g257178257220%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx262708262709%_))
                  (let ((_%e257184257298%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx262708262709%_))))
                    (let ((_%tl257186257305%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257184257298%_)))
                          (_%hd257185257302%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257184257298%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl257186257305%_))
                          (let ((_%e257187257308%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl257186257305%_))))
                            (let ((_%tl257189257315%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e257187257308%_)))
                                  (_%hd257188257312%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e257187257308%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl257189257315%_))
                                  (let ((_%e257190257318%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl257189257315%_))))
                                    (let ((_%tl257192257325%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e257190257318%_)))
                                          (_%hd257191257322%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e257190257318%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl257192257325%_))
                                          (let ((_%e257193257328%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl257192257325%_))))
                                            (let ((_%tl257195257335%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e257193257328%_)))
                                                  (_%hd257194257332%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e257193257328%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl257195257335%_))
                                                  (let ((_%e257196257338%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl257195257335%_))))
                                                    (let ((_%tl257198257345%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e257196257338%_)))
                                                          (_%hd257197257342%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e257196257338%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl257198257345%_))
                                                          (_%__match262747262748%_
                                                           _%e257184257298%_
                                                           _%hd257185257302%_
                                                           _%tl257186257305%_
                                                           _%e257187257308%_
                                                           _%hd257188257312%_
                                                           _%tl257189257315%_
                                                           _%e257190257318%_
                                                           _%hd257191257322%_
                                                           _%tl257192257325%_
                                                           _%e257193257328%_
                                                           _%hd257194257332%_
                                                           _%tl257195257335%_
                                                           _%e257196257338%_
                                                           _%hd257197257342%_
                                                           _%tl257198257345%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g257178257220%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl257195257335%_))
                                                      (_%__kont262713262714%_
                                                       _%hd257194257332%_
                                                       _%hd257191257322%_
                                                       _%hd257188257312%_
                                                       _%hd257185257302%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g257178257220%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g257178257220%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g257178257220%_)))))
                          (let () (declare (not safe)) (_%g257178257220%_)))))
                  (let () (declare (not safe)) (_%g257178257220%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx257377%_)
        (let* ((_%g257381257416%_
                (lambda (_%g257382257412%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257382257412%_))))
               (_%g257380257529%_
                (lambda (_%g257382257420%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257382257420%_))
                      (let ((_%e257386257423%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g257382257420%_))))
                        (let ((_%hd257387257427%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257386257423%_)))
                              (_%tl257388257430%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257386257423%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl257388257430%_))
                              (let ((_g263400_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl257388257430%_
                                        '0))))
                                (begin
                                  (let ((_g263401_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g263400_)
                                               (##values-length _g263400_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g263401_ 2)))
                                        (error "Context expects 2 values"
                                               _g263401_)))
                                  (let ((_%target257389257433%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263400_ 0)))
                                        (_%tl257391257436%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263400_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl257391257436%_))
                                        (letrec ((_%loop257392257439%_
                                                  (lambda (_%hd257390257443%_
                                                           _%symbol257396257446%_
                                                           _%method257397257447%_
                                                           _%type-t257398257448%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd257390257443%_))
                                                        (let ((_%e257393257450%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd257390257443%_))))
                  (let ((_%lp-hd257394257454%_
                         (let ()
                           (declare (not safe))
                           (##car _%e257393257450%_)))
                        (_%lp-tl257395257457%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e257393257450%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd257394257454%_))
                        (let ((_%e257402257460%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd257394257454%_))))
                          (let ((_%hd257403257464%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e257402257460%_)))
                                (_%tl257404257467%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e257402257460%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl257404257467%_))
                                (let ((_%e257405257470%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl257404257467%_))))
                                  (let ((_%hd257406257474%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e257405257470%_)))
                                        (_%tl257407257477%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e257405257470%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl257407257477%_))
                                        (let ((_%e257408257480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl257407257477%_))))
                                          (let ((_%hd257409257484%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e257408257480%_)))
                                                (_%tl257410257487%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e257408257480%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl257410257487%_))
                                                (_%loop257392257439%_
                                                 _%lp-tl257395257457%_
                                                 (cons _%hd257409257484%_
                                                       _%symbol257396257446%_)
                                                 (cons _%hd257406257474%_
                                                       _%method257397257447%_)
                                                 (cons _%hd257403257464%_
                                                       _%type-t257398257448%_))
                                                (_%g257381257416%_
                                                 _%g257382257420%_))))
                                        (_%g257381257416%_
                                         _%g257382257420%_))))
                                (_%g257381257416%_ _%g257382257420%_))))
                        (_%g257381257416%_ _%g257382257420%_))))
                (let ((_%symbol257399257490%_ (reverse _%symbol257396257446%_))
                      (_%method257400257492%_ (reverse _%method257397257447%_))
                      (_%type-t257401257493%_
                       (reverse _%type-t257398257448%_)))
                  ((lambda (_%g257383257495%_
                            _%g257384257497%_
                            _%g257385257498%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g257383257495%_
                                _%g257384257497%_
                                _%g257385257498%_))
                             (let ((__tmp263402
                                    (lambda (_%g257514257519%_
                                             _%g257515257522%_
                                             _%g257516257524%_
                                             _%g257517257526%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g257516257524%_
                                                        (cons _%g257515257522%_
                                                              (cons _%g257514257519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g257517257526%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp263402
                                '()
                                _%g257383257495%_
                                _%g257384257497%_
                                _%g257385257498%_)))))
                   _%symbol257399257490%_
                   _%method257400257492%_
                   _%type-t257401257493%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop257392257439%_
                                           _%target257389257433%_
                                           '()
                                           '()
                                           '()))
                                        (_%g257381257416%_
                                         _%g257382257420%_)))))
                              (_%g257381257416%_ _%g257382257420%_))))
                      (_%g257381257416%_ _%g257382257420%_)))))
          (_%g257380257529%_ _%$stx257377%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx257534%_)
        (let* ((_%g257538257571%_
                (lambda (_%g257539257567%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257539257567%_))))
               (_%g257537257681%_
                (lambda (_%g257539257575%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257539257575%_))
                      (let ((_%e257543257578%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g257539257575%_))))
                        (let ((_%hd257544257582%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257543257578%_)))
                              (_%tl257545257585%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257543257578%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257545257585%_))
                              (let ((_%e257546257588%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl257545257585%_))))
                                (let ((_%hd257547257592%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257546257588%_)))
                                      (_%tl257548257595%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257546257588%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl257548257595%_))
                                      (let ((_g263403_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl257548257595%_
                                                '0))))
                                        (begin
                                          (let ((_g263404_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g263403_)
                                                       (##values-length
                                                        _g263403_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g263404_ 2)))
                                                (error "Context expects 2 values"
                                                       _g263404_)))
                                          (let ((_%target257549257598%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g263403_ 0)))
                                                (_%tl257551257601%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g263403_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl257551257601%_))
                                                (letrec ((_%loop257552257604%_
                                                          (lambda (_%hd257550257608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol257556257611%_
                           _%method257557257612%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd257550257608%_))
                        (let ((_%e257553257614%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd257550257608%_))))
                          (let ((_%lp-hd257554257618%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e257553257614%_)))
                                (_%lp-tl257555257621%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e257553257614%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd257554257618%_))
                                (let ((_%e257560257624%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd257554257618%_))))
                                  (let ((_%hd257561257628%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e257560257624%_)))
                                        (_%tl257562257631%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e257560257624%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl257562257631%_))
                                        (let ((_%e257563257634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl257562257631%_))))
                                          (let ((_%hd257564257638%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e257563257634%_)))
                                                (_%tl257565257641%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e257563257634%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl257565257641%_))
                                                (_%loop257552257604%_
                                                 _%lp-tl257555257621%_
                                                 (cons _%hd257564257638%_
                                                       _%symbol257556257611%_)
                                                 (cons _%hd257561257628%_
                                                       _%method257557257612%_))
                                                (_%g257538257571%_
                                                 _%g257539257575%_))))
                                        (_%g257538257571%_
                                         _%g257539257575%_))))
                                (_%g257538257571%_ _%g257539257575%_))))
                        (let ((_%symbol257558257644%_
                               (reverse _%symbol257556257611%_))
                              (_%method257559257646%_
                               (reverse _%method257557257612%_)))
                          ((lambda (_%g257540257648%_
                                    _%g257541257650%_
                                    _%g257542257651%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g257540257648%_
                                        _%g257541257650%_))
                                     (let ((__tmp263405
                                            (lambda (_%g257669257673%_
                                                     _%g257670257676%_
                                                     _%g257671257678%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g257542257651%_
                                                                (cons _%g257670257676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g257669257673%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g257671257678%_))))
                                       (declare (not safe))
                                       (foldr__1
                                        __tmp263405
                                        '()
                                        _%g257540257648%_
                                        _%g257541257650%_)))))
                           _%symbol257558257644%_
                           _%method257559257646%_
                           _%hd257547257592%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop257552257604%_
                                                   _%target257549257598%_
                                                   '()
                                                   '()))
                                                (_%g257538257571%_
                                                 _%g257539257575%_)))))
                                      (_%g257538257571%_ _%g257539257575%_))))
                              (_%g257538257571%_ _%g257539257575%_))))
                      (_%g257538257571%_ _%g257539257575%_)))))
          (_%g257537257681%_ _%$stx257534%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx257686%_)
        (let* ((_%g257690257704%_
                (lambda (_%g257691257700%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257691257700%_))))
               (_%g257689257745%_
                (lambda (_%g257691257708%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257691257708%_))
                      (let ((_%e257693257711%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g257691257708%_))))
                        (let ((_%hd257694257715%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257693257711%_)))
                              (_%tl257695257718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257693257711%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257695257718%_))
                              (let ((_%e257696257721%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl257695257718%_))))
                                (let ((_%hd257697257725%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257696257721%_)))
                                      (_%tl257698257728%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257696257721%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl257698257728%_))
                                      ((lambda (_%g257692257731%_)
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
                                                           (cons _%g257692257731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd257697257725%_)
                                      (_%g257690257704%_ _%g257691257708%_))))
                              (_%g257690257704%_ _%g257691257708%_))))
                      (_%g257690257704%_ _%g257691257708%_)))))
          (_%g257689257745%_ _%$stx257686%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx257749%_)
        (let* ((_%g257753257807%_
                (lambda (_%g257754257803%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257754257803%_))))
               (_%g257752257988%_
                (lambda (_%g257754257811%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257754257811%_))
                      (let ((_%e257766257814%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g257754257811%_))))
                        (let ((_%hd257767257818%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257766257814%_)))
                              (_%tl257768257821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257766257814%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257768257821%_))
                              (let ((_%e257769257824%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl257768257821%_))))
                                (let ((_%hd257770257828%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257769257824%_)))
                                      (_%tl257771257831%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257769257824%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl257771257831%_))
                                      (let ((_%e257772257834%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl257771257831%_))))
                                        (let ((_%hd257773257838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e257772257834%_)))
                                              (_%tl257774257841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e257772257834%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl257774257841%_))
                                              (let ((_%e257775257844%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl257774257841%_))))
                                                (let ((_%hd257776257848%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e257775257844%_)))
                                                      (_%tl257777257851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e257775257844%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl257777257851%_))
                                                      (let ((_%e257778257854%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl257777257851%_))))
                (let ((_%hd257779257858%_
                       (let () (declare (not safe)) (##car _%e257778257854%_)))
                      (_%tl257780257861%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e257778257854%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl257780257861%_))
                      (let ((_%e257781257864%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl257780257861%_))))
                        (let ((_%hd257782257868%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257781257864%_)))
                              (_%tl257783257871%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257781257864%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257783257871%_))
                              (let ((_%e257784257874%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl257783257871%_))))
                                (let ((_%hd257785257878%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257784257874%_)))
                                      (_%tl257786257881%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257784257874%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl257786257881%_))
                                      (let ((_%e257787257884%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl257786257881%_))))
                                        (let ((_%hd257788257888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e257787257884%_)))
                                              (_%tl257789257891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e257787257884%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl257789257891%_))
                                              (let ((_%e257790257894%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl257789257891%_))))
                                                (let ((_%hd257791257898%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e257790257894%_)))
                                                      (_%tl257792257901%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e257790257894%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl257792257901%_))
                                                      (let ((_%e257793257904%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl257792257901%_))))
                (let ((_%hd257794257908%_
                       (let () (declare (not safe)) (##car _%e257793257904%_)))
                      (_%tl257795257911%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e257793257904%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl257795257911%_))
                      (let ((_%e257796257914%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl257795257911%_))))
                        (let ((_%hd257797257918%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257796257914%_)))
                              (_%tl257798257921%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257796257914%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257798257921%_))
                              (let ((_%e257799257924%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl257798257921%_))))
                                (let ((_%hd257800257928%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257799257924%_)))
                                      (_%tl257801257931%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257799257924%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl257801257931%_))
                                      ((lambda (_%g257755257934%_
                                                _%g257756257936%_
                                                _%g257757257937%_
                                                _%g257758257938%_
                                                _%g257759257939%_
                                                _%g257760257940%_
                                                _%g257761257941%_
                                                _%g257762257942%_
                                                _%g257763257943%_
                                                _%g257764257944%_
                                                _%g257765257945%_)
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
                                                           (cons _%g257765257945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g257764257944%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g257763257943%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g257762257942%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g257761257941%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g257760257940%_ '()))
                                           (cons _%g257759257939%_
                                                 (cons _%g257758257938%_
                                                       (cons _%g257757257937%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g257756257936%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g257755257934%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd257800257928%_
                                       _%hd257797257918%_
                                       _%hd257794257908%_
                                       _%hd257791257898%_
                                       _%hd257788257888%_
                                       _%hd257785257878%_
                                       _%hd257782257868%_
                                       _%hd257779257858%_
                                       _%hd257776257848%_
                                       _%hd257773257838%_
                                       _%hd257770257828%_)
                                      (_%g257753257807%_ _%g257754257811%_))))
                              (_%g257753257807%_ _%g257754257811%_))))
                      (_%g257753257807%_ _%g257754257811%_))))
              (_%g257753257807%_ _%g257754257811%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g257753257807%_
                                               _%g257754257811%_))))
                                      (_%g257753257807%_ _%g257754257811%_))))
                              (_%g257753257807%_ _%g257754257811%_))))
                      (_%g257753257807%_ _%g257754257811%_))))
              (_%g257753257807%_ _%g257754257811%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g257753257807%_
                                               _%g257754257811%_))))
                                      (_%g257753257807%_ _%g257754257811%_))))
                              (_%g257753257807%_ _%g257754257811%_))))
                      (_%g257753257807%_ _%g257754257811%_)))))
          (_%g257752257988%_ _%$stx257749%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx257992%_)
        (let* ((_%g257996258010%_
                (lambda (_%g257997258006%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257997258006%_))))
               (_%g257995258051%_
                (lambda (_%g257997258014%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257997258014%_))
                      (let ((_%e257999258017%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g257997258014%_))))
                        (let ((_%hd258000258021%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257999258017%_)))
                              (_%tl258001258024%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257999258017%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258001258024%_))
                              (let ((_%e258002258027%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258001258024%_))))
                                (let ((_%hd258003258031%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258002258027%_)))
                                      (_%tl258004258034%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258002258027%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl258004258034%_))
                                      ((lambda (_%g257998258037%_)
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
                                                           (cons _%g257998258037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd258003258031%_)
                                      (_%g257996258010%_ _%g257997258014%_))))
                              (_%g257996258010%_ _%g257997258014%_))))
                      (_%g257996258010%_ _%g257997258014%_)))))
          (_%g257995258051%_ _%$stx257992%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx258055%_)
        (let* ((_%g258059258073%_
                (lambda (_%g258060258069%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258060258069%_))))
               (_%g258058258114%_
                (lambda (_%g258060258077%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258060258077%_))
                      (let ((_%e258062258080%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258060258077%_))))
                        (let ((_%hd258063258084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258062258080%_)))
                              (_%tl258064258087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258062258080%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258064258087%_))
                              (let ((_%e258065258090%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258064258087%_))))
                                (let ((_%hd258066258094%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258065258090%_)))
                                      (_%tl258067258097%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258065258090%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl258067258097%_))
                                      ((lambda (_%g258061258100%_)
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
                                                           (cons _%g258061258100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd258066258094%_)
                                      (_%g258059258073%_ _%g258060258077%_))))
                              (_%g258059258073%_ _%g258060258077%_))))
                      (_%g258059258073%_ _%g258060258077%_)))))
          (_%g258058258114%_ _%$stx258055%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx258118%_)
        (let* ((_%g258122258144%_
                (lambda (_%g258123258140%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258123258140%_))))
               (_%g258121258213%_
                (lambda (_%g258123258148%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258123258148%_))
                      (let ((_%e258127258151%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258123258148%_))))
                        (let ((_%hd258128258155%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258127258151%_)))
                              (_%tl258129258158%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258127258151%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258129258158%_))
                              (let ((_%e258130258161%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258129258158%_))))
                                (let ((_%hd258131258165%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258130258161%_)))
                                      (_%tl258132258168%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258130258161%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258132258168%_))
                                      (let ((_%e258133258171%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258132258168%_))))
                                        (let ((_%hd258134258175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258133258171%_)))
                                              (_%tl258135258178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258133258171%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl258135258178%_))
                                              (let ((_%e258136258181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl258135258178%_))))
                                                (let ((_%hd258137258185%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e258136258181%_)))
                                                      (_%tl258138258188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e258136258181%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl258138258188%_))
                                                      ((lambda (_%g258124258191%_
                                                                _%g258125258193%_
                                                                _%g258126258194%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g258126258194%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g258125258193%_ '()))
                                   (cons _%g258124258191%_ '())))))
               _%hd258137258185%_
               _%hd258134258175%_
               _%hd258131258165%_)
              (_%g258122258144%_ _%g258123258148%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g258122258144%_
                                               _%g258123258148%_))))
                                      (_%g258122258144%_ _%g258123258148%_))))
                              (_%g258122258144%_ _%g258123258148%_))))
                      (_%g258122258144%_ _%g258123258148%_)))))
          (_%g258121258213%_ _%$stx258118%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx258217%_)
        (let* ((_%g258221258243%_
                (lambda (_%g258222258239%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258222258239%_))))
               (_%g258220258312%_
                (lambda (_%g258222258247%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258222258247%_))
                      (let ((_%e258226258250%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258222258247%_))))
                        (let ((_%hd258227258254%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258226258250%_)))
                              (_%tl258228258257%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258226258250%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258228258257%_))
                              (let ((_%e258229258260%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258228258257%_))))
                                (let ((_%hd258230258264%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258229258260%_)))
                                      (_%tl258231258267%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258229258260%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258231258267%_))
                                      (let ((_%e258232258270%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258231258267%_))))
                                        (let ((_%hd258233258274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258232258270%_)))
                                              (_%tl258234258277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258232258270%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl258234258277%_))
                                              (let ((_%e258235258280%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl258234258277%_))))
                                                (let ((_%hd258236258284%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e258235258280%_)))
                                                      (_%tl258237258287%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e258235258280%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl258237258287%_))
                                                      ((lambda (_%g258223258290%_
                                                                _%g258224258292%_
                                                                _%g258225258293%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g258225258293%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g258224258292%_ '()))
                                   (cons _%g258223258290%_ '())))))
               _%hd258236258284%_
               _%hd258233258274%_
               _%hd258230258264%_)
              (_%g258221258243%_ _%g258222258247%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g258221258243%_
                                               _%g258222258247%_))))
                                      (_%g258221258243%_ _%g258222258247%_))))
                              (_%g258221258243%_ _%g258222258247%_))))
                      (_%g258221258243%_ _%g258222258247%_)))))
          (_%g258220258312%_ _%$stx258217%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx258316%_)
        (let* ((_%g258320258334%_
                (lambda (_%g258321258330%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258321258330%_))))
               (_%g258319258375%_
                (lambda (_%g258321258338%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258321258338%_))
                      (let ((_%e258323258341%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258321258338%_))))
                        (let ((_%hd258324258345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258323258341%_)))
                              (_%tl258325258348%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258323258341%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258325258348%_))
                              (let ((_%e258326258351%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258325258348%_))))
                                (let ((_%hd258327258355%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258326258351%_)))
                                      (_%tl258328258358%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258326258351%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl258328258358%_))
                                      ((lambda (_%g258322258361%_)
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
                                                           (cons _%g258322258361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd258327258355%_)
                                      (_%g258320258334%_ _%g258321258338%_))))
                              (_%g258320258334%_ _%g258321258338%_))))
                      (_%g258320258334%_ _%g258321258338%_)))))
          (_%g258319258375%_ _%$stx258316%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx258379%_)
        (let* ((_%g258383258401%_
                (lambda (_%g258384258397%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258384258397%_))))
               (_%g258382258456%_
                (lambda (_%g258384258405%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258384258405%_))
                      (let ((_%e258387258408%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258384258405%_))))
                        (let ((_%hd258388258412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258387258408%_)))
                              (_%tl258389258415%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258387258408%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258389258415%_))
                              (let ((_%e258390258418%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258389258415%_))))
                                (let ((_%hd258391258422%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258390258418%_)))
                                      (_%tl258392258425%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258390258418%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258392258425%_))
                                      (let ((_%e258393258428%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258392258425%_))))
                                        (let ((_%hd258394258432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258393258428%_)))
                                              (_%tl258395258435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258393258428%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl258395258435%_))
                                              ((lambda (_%g258385258438%_
                                                        _%g258386258440%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g258386258440%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g258385258438%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd258394258432%_
                                               _%hd258391258422%_)
                                              (_%g258383258401%_
                                               _%g258384258405%_))))
                                      (_%g258383258401%_ _%g258384258405%_))))
                              (_%g258383258401%_ _%g258384258405%_))))
                      (_%g258383258401%_ _%g258384258405%_)))))
          (_%g258382258456%_ _%$stx258379%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx258460%_)
        (let* ((_%__stx262776262777%_ _%$stx258460%_)
               (_%g258467258528%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262776262777%_)))))
          (let ((_%__kont262779262780%_
                 (lambda (_%g258469258766%_ _%g258470258768%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g258470258768%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g258469258766%_ '()))
                                     '())))))
                (_%__kont262781262782%_
                 (lambda (_%g258480258705%_
                          _%g258481258707%_
                          _%g258482258708%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g258482258708%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g258481258707%_ '()))
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
                                 (cons _%g258480258705%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont262783262784%_
                 (lambda (_%g258499258629%_ _%g258500258631%_)
                   (cons _%g258500258631%_
                         (cons _%g258499258629%_ (cons '#f '())))))
                (_%__kont262785262786%_
                 (lambda (_%g258507258579%_
                          _%g258508258581%_
                          _%g258509258582%_)
                   (cons _%g258509258582%_
                         (cons _%g258508258581%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g258507258579%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx262776262777%_))
                (let ((_%e258471258736%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx262776262777%_))))
                  (let ((_%tl258473258743%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e258471258736%_)))
                        (_%hd258472258740%_
                         (let ()
                           (declare (not safe))
                           (##car _%e258471258736%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl258473258743%_))
                        (let ((_%e258474258746%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl258473258743%_))))
                          (let ((_%tl258476258753%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e258474258746%_)))
                                (_%hd258475258750%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e258474258746%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl258476258753%_))
                                (let ((_%e258477258756%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl258476258753%_))))
                                  (let ((_%tl258479258763%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e258477258756%_)))
                                        (_%hd258478258760%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e258477258756%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl258479258763%_))
                                        (_%__kont262779262780%_
                                         _%hd258478258760%_
                                         _%hd258475258750%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl258479258763%_))
                                            (let ((_%e258492258681%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl258479258763%_))))
                                              (let ((_%tl258494258688%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e258492258681%_)))
                                                    (_%hd258493258685%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e258492258681%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd258493258685%_))
                                                    (let ((_%e258495258691%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd258493258685%_))))
                                                      (if (equal? _%e258495258691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl258494258688%_))
                      (let ((_%e258496258695%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl258494258688%_))))
                        (let ((_%tl258498258702%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258496258695%_)))
                              (_%hd258497258699%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258496258695%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl258498258702%_))
                              (_%__kont262781262782%_
                               _%hd258497258699%_
                               _%hd258478258760%_
                               _%hd258475258750%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd258478258760%_))
                                  (let ((_%e258519258565%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd258478258760%_))))
                                    (declare (not safe))
                                    (_%g258467258528%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g258467258528%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd258478258760%_))
                          (let ((_%e258519258565%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd258478258760%_))))
                            (if (equal? _%e258519258565%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl258494258688%_))
                                    (_%__kont262785262786%_
                                     _%hd258493258685%_
                                     _%hd258475258750%_
                                     _%hd258472258740%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g258467258528%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g258467258528%_))))
                          (let () (declare (not safe)) (_%g258467258528%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd258478258760%_))
                      (let ((_%e258519258565%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd258478258760%_))))
                        (if (equal? _%e258519258565%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl258494258688%_))
                                (_%__kont262785262786%_
                                 _%hd258493258685%_
                                 _%hd258475258750%_
                                 _%hd258472258740%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g258467258528%_)))
                            (let () (declare (not safe)) (_%g258467258528%_))))
                      (let () (declare (not safe)) (_%g258467258528%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd258478258760%_))
                                                        (let ((_%e258519258565%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd258478258760%_))))
                  (if (equal? _%e258519258565%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl258494258688%_))
                          (_%__kont262785262786%_
                           _%hd258493258685%_
                           _%hd258475258750%_
                           _%hd258472258740%_)
                          (let () (declare (not safe)) (_%g258467258528%_)))
                      (let () (declare (not safe)) (_%g258467258528%_))))
                (let () (declare (not safe)) (_%g258467258528%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd258478258760%_))
                                                (let ((_%e258519258565%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd258478258760%_))))
                                                  (declare (not safe))
                                                  (_%g258467258528%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g258467258528%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl258476258753%_))
                                    (_%__kont262783262784%_
                                     _%hd258475258750%_
                                     _%hd258472258740%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g258467258528%_))))))
                        (let () (declare (not safe)) (_%g258467258528%_)))))
                (let () (declare (not safe)) (_%g258467258528%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx258787%_)
        (let* ((_%g258791258820%_
                (lambda (_%g258792258816%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258792258816%_))))
               (_%g258790258925%_
                (lambda (_%g258792258824%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258792258824%_))
                      (let ((_%e258794258827%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258792258824%_))))
                        (let ((_%hd258795258831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258794258827%_)))
                              (_%tl258796258834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258794258827%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl258796258834%_))
                              (let ((_g263406_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl258796258834%_
                                        '0))))
                                (begin
                                  (let ((_g263407_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g263406_)
                                               (##values-length _g263406_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g263407_ 2)))
                                        (error "Context expects 2 values"
                                               _g263407_)))
                                  (let ((_%target258797258837%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263406_ 0)))
                                        (_%tl258799258840%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263406_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl258799258840%_))
                                        (letrec ((_%loop258800258843%_
                                                  (lambda (_%hd258798258847%_
                                                           _%clause258804258850%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd258798258847%_))
                                                        (let ((_%e258801258852%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd258798258847%_))))
                  (let ((_%lp-hd258802258856%_
                         (let ()
                           (declare (not safe))
                           (##car _%e258801258852%_)))
                        (_%lp-tl258803258859%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e258801258852%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd258802258856%_))
                        (let ((_g263408_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd258802258856%_
                                  '0))))
                          (begin
                            (let ((_g263409_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g263408_)
                                         (##values-length _g263408_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g263409_ 2)))
                                  (error "Context expects 2 values"
                                         _g263409_)))
                            (let ((_%target258806258862%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g263408_ 0)))
                                  (_%tl258808258865%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g263408_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl258808258865%_))
                                  (letrec ((_%loop258809258868%_
                                            (lambda (_%hd258807258872%_
                                                     _%clause258813258875%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd258807258872%_))
                                                  (let ((_%e258810258877%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd258807258872%_))))
                                                    (let ((_%lp-hd258811258881%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e258810258877%_)))
                                                          (_%lp-tl258812258884%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e258810258877%_))))
                                                      (_%loop258809258868%_
                                                       _%lp-tl258812258884%_
                                                       (cons _%lp-hd258811258881%_
                                                             _%clause258813258875%_))))
                                                  (let ((_%clause258814258887%_
                                                         (reverse _%clause258813258875%_)))
                                                    (_%loop258800258843%_
                                                     _%lp-tl258803258859%_
                                                     (cons _%clause258814258887%_
                                                           _%clause258804258850%_)))))))
                                    (_%loop258809258868%_
                                     _%target258806258862%_
                                     '()))
                                  (_%g258791258820%_ _%g258792258824%_)))))
                        (_%g258791258820%_ _%g258792258824%_))))
                (let ((_%clause258805258890%_
                       (reverse _%clause258804258850%_)))
                  ((lambda (_%g258793258893%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp263410
                                              (lambda (_%g258908258913%_
                                                       _%g258909258916%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp263411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g258910258919%_ _%g258911258922%_)
                             (cons _%g258910258919%_ _%g258911258922%_))))
                      (declare (not safe))
                      (foldr__0 __tmp263411 '() _%g258908258913%_)))
              _%g258909258916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp263410
                                          '()
                                          _%g258793258893%_)))
                                 '())))
                   _%clause258805258890%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop258800258843%_
                                           _%target258797258837%_
                                           '()))
                                        (_%g258791258820%_
                                         _%g258792258824%_)))))
                              (_%g258791258820%_ _%g258792258824%_))))
                      (_%g258791258820%_ _%g258792258824%_)))))
          (_%g258790258925%_ _%$stx258787%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx258931%_)
        (let* ((_%g258935258953%_
                (lambda (_%g258936258949%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258936258949%_))))
               (_%g258934259008%_
                (lambda (_%g258936258957%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258936258957%_))
                      (let ((_%e258939258960%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258936258957%_))))
                        (let ((_%hd258940258964%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258939258960%_)))
                              (_%tl258941258967%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258939258960%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258941258967%_))
                              (let ((_%e258942258970%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258941258967%_))))
                                (let ((_%hd258943258974%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258942258970%_)))
                                      (_%tl258944258977%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258942258970%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258944258977%_))
                                      (let ((_%e258945258980%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258944258977%_))))
                                        (let ((_%hd258946258984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258945258980%_)))
                                              (_%tl258947258987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258945258980%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl258947258987%_))
                                              ((lambda (_%g258937258990%_
                                                        _%g258938258992%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g258938258992%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g258937258990%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd258946258984%_
                                               _%hd258943258974%_)
                                              (_%g258935258953%_
                                               _%g258936258957%_))))
                                      (_%g258935258953%_ _%g258936258957%_))))
                              (_%g258935258953%_ _%g258936258957%_))))
                      (_%g258935258953%_ _%g258936258957%_)))))
          (_%g258934259008%_ _%$stx258931%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx259012%_)
        (let* ((_%g259016259034%_
                (lambda (_%g259017259030%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259017259030%_))))
               (_%g259015259089%_
                (lambda (_%g259017259038%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259017259038%_))
                      (let ((_%e259020259041%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259017259038%_))))
                        (let ((_%hd259021259045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259020259041%_)))
                              (_%tl259022259048%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259020259041%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259022259048%_))
                              (let ((_%e259023259051%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259022259048%_))))
                                (let ((_%hd259024259055%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259023259051%_)))
                                      (_%tl259025259058%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259023259051%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259025259058%_))
                                      (let ((_%e259026259061%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259025259058%_))))
                                        (let ((_%hd259027259065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259026259061%_)))
                                              (_%tl259028259068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259026259061%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259028259068%_))
                                              ((lambda (_%g259018259071%_
                                                        _%g259019259073%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g259019259073%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g259018259071%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd259027259065%_
                                               _%hd259024259055%_)
                                              (_%g259016259034%_
                                               _%g259017259038%_))))
                                      (_%g259016259034%_ _%g259017259038%_))))
                              (_%g259016259034%_ _%g259017259038%_))))
                      (_%g259016259034%_ _%g259017259038%_)))))
          (_%g259015259089%_ _%$stx259012%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx259093%_)
        (let* ((_%g259097259126%_
                (lambda (_%g259098259122%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259098259122%_))))
               (_%g259096259222%_
                (lambda (_%g259098259130%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259098259130%_))
                      (let ((_%e259101259133%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259098259130%_))))
                        (let ((_%hd259102259137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259101259133%_)))
                              (_%tl259103259140%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259101259133%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl259103259140%_))
                              (let ((_g263412_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl259103259140%_
                                        '0))))
                                (begin
                                  (let ((_g263413_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g263412_)
                                               (##values-length _g263412_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g263413_ 2)))
                                        (error "Context expects 2 values"
                                               _g263413_)))
                                  (let ((_%target259104259143%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263412_ 0)))
                                        (_%tl259106259146%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263412_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259106259146%_))
                                        (letrec ((_%loop259107259149%_
                                                  (lambda (_%hd259105259153%_
                                                           _%rule259111259156%_
                                                           _%proc259112259157%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd259105259153%_))
                                                        (let ((_%e259108259159%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd259105259153%_))))
                  (let ((_%lp-hd259109259163%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259108259159%_)))
                        (_%lp-tl259110259166%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259108259159%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd259109259163%_))
                        (let ((_%e259115259169%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd259109259163%_))))
                          (let ((_%hd259116259173%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e259115259169%_)))
                                (_%tl259117259176%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e259115259169%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl259117259176%_))
                                (let ((_%e259118259179%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl259117259176%_))))
                                  (let ((_%hd259119259183%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259118259179%_)))
                                        (_%tl259120259186%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259118259179%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259120259186%_))
                                        (_%loop259107259149%_
                                         _%lp-tl259110259166%_
                                         (cons _%hd259119259183%_
                                               _%rule259111259156%_)
                                         (cons _%hd259116259173%_
                                               _%proc259112259157%_))
                                        (_%g259097259126%_
                                         _%g259098259130%_))))
                                (_%g259097259126%_ _%g259098259130%_))))
                        (_%g259097259126%_ _%g259098259130%_))))
                (let ((_%rule259113259189%_ (reverse _%rule259111259156%_))
                      (_%proc259114259191%_ (reverse _%proc259112259157%_)))
                  ((lambda (_%g259099259193%_ _%g259100259195%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g259099259193%_
                                _%g259100259195%_))
                             (let ((__tmp263414
                                    (lambda (_%g259210259214%_
                                             _%g259211259217%_
                                             _%g259212259219%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g259211259217%_
                                                        (cons _%g259210259214%_
                                                              '())))
                                            _%g259212259219%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp263414
                                '()
                                _%g259099259193%_
                                _%g259100259195%_)))))
                   _%rule259113259189%_
                   _%proc259114259191%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop259107259149%_
                                           _%target259104259143%_
                                           '()
                                           '()))
                                        (_%g259097259126%_
                                         _%g259098259130%_)))))
                              (_%g259097259126%_ _%g259098259130%_))))
                      (_%g259097259126%_ _%g259098259130%_)))))
          (_%g259096259222%_ _%$stx259093%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx259227%_)
        (let* ((_%g259231259249%_
                (lambda (_%g259232259245%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259232259245%_))))
               (_%g259230259304%_
                (lambda (_%g259232259253%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259232259253%_))
                      (let ((_%e259235259256%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259232259253%_))))
                        (let ((_%hd259236259260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259235259256%_)))
                              (_%tl259237259263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259235259256%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259237259263%_))
                              (let ((_%e259238259266%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259237259263%_))))
                                (let ((_%hd259239259270%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259238259266%_)))
                                      (_%tl259240259273%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259238259266%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259240259273%_))
                                      (let ((_%e259241259276%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259240259273%_))))
                                        (let ((_%hd259242259280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259241259276%_)))
                                              (_%tl259243259283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259241259276%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259243259283%_))
                                              ((lambda (_%g259233259286%_
                                                        _%g259234259288%_)
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
                                                   (cons _%g259234259288%_
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
                 (cons _%g259233259286%_ '())))
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
                                   (cons _%g259234259288%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd259242259280%_
                                               _%hd259239259270%_)
                                              (_%g259231259249%_
                                               _%g259232259253%_))))
                                      (_%g259231259249%_ _%g259232259253%_))))
                              (_%g259231259249%_ _%g259232259253%_))))
                      (_%g259231259249%_ _%g259232259253%_)))))
          (_%g259230259304%_ _%$stx259227%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx259308%_)
        (let* ((_%__stx262894262895%_ _%$stx259308%_)
               (_%g259313259338%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262894262895%_)))))
          (let ((_%__kont262897262898%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont262899262900%_
                 (lambda (_%g259318259385%_
                          _%g259319259387%_
                          _%g259320259388%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g259320259388%_
                                           (cons _%g259319259387%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g259318259385%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx262894262895%_))
                (let ((_%e259315259414%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx262894262895%_))))
                  (let ((_%tl259317259421%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259315259414%_)))
                        (_%hd259316259418%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259315259414%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl259317259421%_))
                        (_%__kont262897262898%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl259317259421%_))
                            (let ((_%e259324259355%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl259317259421%_))))
                              (let ((_%tl259326259362%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e259324259355%_)))
                                    (_%hd259325259359%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e259324259355%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd259325259359%_))
                                    (let ((_%e259327259365%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd259325259359%_))))
                                      (let ((_%tl259329259372%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e259327259365%_)))
                                            (_%hd259328259369%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e259327259365%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl259329259372%_))
                                            (let ((_%e259330259375%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl259329259372%_))))
                                              (let ((_%tl259332259382%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259330259375%_)))
                                                    (_%hd259331259379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259330259375%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl259332259382%_))
                                                    (_%__kont262899262900%_
                                                     _%tl259326259362%_
                                                     _%hd259331259379%_
                                                     _%hd259328259369%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g259313259338%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g259313259338%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g259313259338%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g259313259338%_))))))
                (let () (declare (not safe)) (_%g259313259338%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx259432%_)
        (let* ((_%__stx262938262939%_ _%$stx259432%_)
               (_%g259437259468%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262938262939%_)))))
          (let ((_%__kont262941262942%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont262943262944%_
                 (lambda (_%g259442259533%_
                          _%g259443259535%_
                          _%g259444259536%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g259444259536%_
                                           (let ((__tmp263415
                                                  (lambda (_%g259556259559%_
                                                           _%g259557259562%_)
                                                    (cons _%g259556259559%_
                                                          _%g259557259562%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp263415
                                              '()
                                              _%g259443259535%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g259442259533%_)
                                     '()))))))
            (let ((_%__match262981262982%_
                   (lambda (_%e259445259475%_
                            _%hd259446259479%_
                            _%tl259447259482%_
                            _%e259448259485%_
                            _%hd259449259489%_
                            _%tl259450259492%_
                            _%e259451259495%_
                            _%hd259452259499%_
                            _%tl259453259502%_
                            _%__splice262945262946%_
                            _%target259454259505%_
                            _%tl259456259508%_)
                     (letrec ((_%loop259457259511%_
                               (lambda (_%hd259455259515%_ _%sig259461259518%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd259455259515%_))
                                     (let ((_%e259458259520%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd259455259515%_))))
                                       (let ((_%lp-tl259460259527%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e259458259520%_)))
                                             (_%lp-hd259459259524%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e259458259520%_))))
                                         (_%loop259457259511%_
                                          _%lp-tl259460259527%_
                                          (cons _%lp-hd259459259524%_
                                                _%sig259461259518%_))))
                                     (let ((_%sig259462259530%_
                                            (reverse _%sig259461259518%_)))
                                       (_%__kont262943262944%_
                                        _%tl259450259492%_
                                        _%sig259462259530%_
                                        _%hd259452259499%_))))))
                       (_%loop259457259511%_ _%target259454259505%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx262938262939%_))
                  (let ((_%e259439259572%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx262938262939%_))))
                    (let ((_%tl259441259579%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259439259572%_)))
                          (_%hd259440259576%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259439259572%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl259441259579%_))
                          (_%__kont262941262942%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259441259579%_))
                              (let ((_%e259448259485%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259441259579%_))))
                                (let ((_%tl259450259492%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259448259485%_)))
                                      (_%hd259449259489%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259448259485%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd259449259489%_))
                                      (let ((_%e259451259495%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd259449259489%_))))
                                        (let ((_%tl259453259502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259451259495%_)))
                                              (_%hd259452259499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259451259495%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl259453259502%_))
                                              (let ((_%__splice262945262946%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl259453259502%_
                                                        '0))))
                                                (let ((_%tl259456259508%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice262945262946%_
                                                          '1)))
                                                      (_%target259454259505%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice262945262946%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259456259508%_))
                                                      (_%__match262981262982%_
                                                       _%e259439259572%_
                                                       _%hd259440259576%_
                                                       _%tl259441259579%_
                                                       _%e259448259485%_
                                                       _%hd259449259489%_
                                                       _%tl259450259492%_
                                                       _%e259451259495%_
                                                       _%hd259452259499%_
                                                       _%tl259453259502%_
                                                       _%__splice262945262946%_
                                                       _%target259454259505%_
                                                       _%tl259456259508%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g259437259468%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g259437259468%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g259437259468%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g259437259468%_))))))
                  (let () (declare (not safe)) (_%g259437259468%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx259591%_)
        (let* ((_%__stx262984262985%_ _%$stx259591%_)
               (_%g259596259643%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262984262985%_)))))
          (let ((_%__kont262987262988%_
                 (lambda (_%g259598259801%_ _%g259599259803%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g259599259803%_
                               (let ((__tmp263416
                                      (lambda (_%g259823259826%_
                                               _%g259824259829%_)
                                        (cons _%g259823259826%_
                                              _%g259824259829%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp263416
                                  '()
                                  _%g259598259801%_))))))
                (_%__kont262991262992%_
                 (lambda (_%g259621259698%_ _%g259622259700%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g259622259700%_
                               (let ((__tmp263417
                                      (lambda (_%g259717259720%_
                                               _%g259718259723%_)
                                        (cons _%g259717259720%_
                                              _%g259718259723%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp263417
                                  '()
                                  _%g259621259698%_)))))))
            (let* ((_%__match263051263052%_
                    (lambda (_%e259623259650%_
                             _%hd259624259654%_
                             _%tl259625259657%_
                             _%e259626259660%_
                             _%hd259627259664%_
                             _%tl259628259667%_
                             _%__splice262993262994%_
                             _%target259629259670%_
                             _%tl259631259673%_)
                      (letrec ((_%loop259632259676%_
                                (lambda (_%hd259630259680%_
                                         _%sig259636259683%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd259630259680%_))
                                      (let ((_%e259633259685%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd259630259680%_))))
                                        (let ((_%lp-tl259635259692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259633259685%_)))
                                              (_%lp-hd259634259689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259633259685%_))))
                                          (_%loop259632259676%_
                                           _%lp-tl259635259692%_
                                           (cons _%lp-hd259634259689%_
                                                 _%sig259636259683%_))))
                                      (let ((_%sig259637259695%_
                                             (reverse _%sig259636259683%_)))
                                        (_%__kont262991262992%_
                                         _%sig259637259695%_
                                         _%hd259627259664%_))))))
                        (_%loop259632259676%_ _%target259629259670%_ '()))))
                   (_%__match263043263044%_
                    (lambda (_%e259623259650%_
                             _%hd259624259654%_
                             _%tl259625259657%_
                             _%e259626259660%_
                             _%hd259627259664%_
                             _%tl259628259667%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl259628259667%_))
                          (let ((_%__splice262993262994%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl259628259667%_
                                    '0))))
                            (let ((_%tl259631259673%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice262993262994%_
                                      '1)))
                                  (_%target259629259670%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice262993262994%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl259631259673%_))
                                  (_%__match263051263052%_
                                   _%e259623259650%_
                                   _%hd259624259654%_
                                   _%tl259625259657%_
                                   _%e259626259660%_
                                   _%hd259627259664%_
                                   _%tl259628259667%_
                                   _%__splice262993262994%_
                                   _%target259629259670%_
                                   _%tl259631259673%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g259596259643%_)))))
                          (let () (declare (not safe)) (_%g259596259643%_)))))
                   (_%__match263031263032%_
                    (lambda (_%e259600259733%_
                             _%hd259601259737%_
                             _%tl259602259740%_
                             _%e259603259743%_
                             _%hd259604259747%_
                             _%tl259605259750%_
                             _%e259606259753%_
                             _%hd259607259757%_
                             _%tl259608259760%_
                             _%e259609259763%_
                             _%hd259610259767%_
                             _%tl259611259770%_
                             _%__splice262989262990%_
                             _%target259612259773%_
                             _%tl259614259776%_)
                      (letrec ((_%loop259615259779%_
                                (lambda (_%hd259613259783%_
                                         _%sig259619259786%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd259613259783%_))
                                      (let ((_%e259616259788%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd259613259783%_))))
                                        (let ((_%lp-tl259618259795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259616259788%_)))
                                              (_%lp-hd259617259792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259616259788%_))))
                                          (_%loop259615259779%_
                                           _%lp-tl259618259795%_
                                           (cons _%lp-hd259617259792%_
                                                 _%sig259619259786%_))))
                                      (let ((_%sig259620259798%_
                                             (reverse _%sig259619259786%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl259608259760%_))
                                            (_%__kont262987262988%_
                                             _%sig259620259798%_
                                             _%hd259604259747%_)
                                            (_%__match263043263044%_
                                             _%e259600259733%_
                                             _%hd259601259737%_
                                             _%tl259602259740%_
                                             _%e259603259743%_
                                             _%hd259604259747%_
                                             _%tl259605259750%_)))))))
                        (_%loop259615259779%_ _%target259612259773%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx262984262985%_))
                  (let ((_%e259600259733%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx262984262985%_))))
                    (let ((_%tl259602259740%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259600259733%_)))
                          (_%hd259601259737%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259600259733%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl259602259740%_))
                          (let ((_%e259603259743%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl259602259740%_))))
                            (let ((_%tl259605259750%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e259603259743%_)))
                                  (_%hd259604259747%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e259603259743%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl259605259750%_))
                                  (let ((_%e259606259753%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl259605259750%_))))
                                    (let ((_%tl259608259760%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e259606259753%_)))
                                          (_%hd259607259757%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e259606259753%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd259607259757%_))
                                          (let ((_%e259609259763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd259607259757%_))))
                                            (let ((_%tl259611259770%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e259609259763%_)))
                                                  (_%hd259610259767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e259609259763%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd259610259767%_))
                                                  (if (let ((__tmp263418
                                                             |gxc[1]#_g263419_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp263418
                                                         _%hd259610259767%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl259611259770%_))
                                                          (let ((_%__splice262989262990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl259611259770%_
                            '0))))
                    (let ((_%tl259614259776%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice262989262990%_ '1)))
                          (_%target259612259773%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice262989262990%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl259614259776%_))
                          (_%__match263031263032%_
                           _%e259600259733%_
                           _%hd259601259737%_
                           _%tl259602259740%_
                           _%e259603259743%_
                           _%hd259604259747%_
                           _%tl259605259750%_
                           _%e259606259753%_
                           _%hd259607259757%_
                           _%tl259608259760%_
                           _%e259609259763%_
                           _%hd259610259767%_
                           _%tl259611259770%_
                           _%__splice262989262990%_
                           _%target259612259773%_
                           _%tl259614259776%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl259605259750%_))
                              (let ((_%__splice262993262994%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl259605259750%_
                                        '0))))
                                (let ((_%tl259631259673%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice262993262994%_
                                          '1)))
                                      (_%target259629259670%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice262993262994%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl259631259673%_))
                                      (_%__match263051263052%_
                                       _%e259600259733%_
                                       _%hd259601259737%_
                                       _%tl259602259740%_
                                       _%e259603259743%_
                                       _%hd259604259747%_
                                       _%tl259605259750%_
                                       _%__splice262993262994%_
                                       _%target259629259670%_
                                       _%tl259631259673%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g259596259643%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g259596259643%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl259605259750%_))
                      (let ((_%__splice262993262994%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl259605259750%_
                                '0))))
                        (let ((_%tl259631259673%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice262993262994%_ '1)))
                              (_%target259629259670%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice262993262994%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl259631259673%_))
                              (_%__match263051263052%_
                               _%e259600259733%_
                               _%hd259601259737%_
                               _%tl259602259740%_
                               _%e259603259743%_
                               _%hd259604259747%_
                               _%tl259605259750%_
                               _%__splice262993262994%_
                               _%target259629259670%_
                               _%tl259631259673%_)
                              (let ()
                                (declare (not safe))
                                (_%g259596259643%_)))))
                      (let () (declare (not safe)) (_%g259596259643%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl259605259750%_))
                  (let ((_%__splice262993262994%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl259605259750%_
                            '0))))
                    (let ((_%tl259631259673%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice262993262994%_ '1)))
                          (_%target259629259670%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice262993262994%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl259631259673%_))
                          (_%__match263051263052%_
                           _%e259600259733%_
                           _%hd259601259737%_
                           _%tl259602259740%_
                           _%e259603259743%_
                           _%hd259604259747%_
                           _%tl259605259750%_
                           _%__splice262993262994%_
                           _%target259629259670%_
                           _%tl259631259673%_)
                          (let () (declare (not safe)) (_%g259596259643%_)))))
                  (let () (declare (not safe)) (_%g259596259643%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl259605259750%_))
                                                      (let ((_%__splice262993262994%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl259605259750%_
                        '0))))
                (let ((_%tl259631259673%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice262993262994%_ '1)))
                      (_%target259629259670%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice262993262994%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl259631259673%_))
                      (_%__match263051263052%_
                       _%e259600259733%_
                       _%hd259601259737%_
                       _%tl259602259740%_
                       _%e259603259743%_
                       _%hd259604259747%_
                       _%tl259605259750%_
                       _%__splice262993262994%_
                       _%target259629259670%_
                       _%tl259631259673%_)
                      (let () (declare (not safe)) (_%g259596259643%_)))))
              (let () (declare (not safe)) (_%g259596259643%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl259605259750%_))
                                              (let ((_%__splice262993262994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl259605259750%_
                                                        '0))))
                                                (let ((_%tl259631259673%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice262993262994%_
                                                          '1)))
                                                      (_%target259629259670%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice262993262994%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259631259673%_))
                                                      (_%__match263051263052%_
                                                       _%e259600259733%_
                                                       _%hd259601259737%_
                                                       _%tl259602259740%_
                                                       _%e259603259743%_
                                                       _%hd259604259747%_
                                                       _%tl259605259750%_
                                                       _%__splice262993262994%_
                                                       _%target259629259670%_
                                                       _%tl259631259673%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g259596259643%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g259596259643%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl259605259750%_))
                                      (let ((_%__splice262993262994%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl259605259750%_
                                                '0))))
                                        (let ((_%tl259631259673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice262993262994%_
                                                  '1)))
                                              (_%target259629259670%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice262993262994%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259631259673%_))
                                              (_%__match263051263052%_
                                               _%e259600259733%_
                                               _%hd259601259737%_
                                               _%tl259602259740%_
                                               _%e259603259743%_
                                               _%hd259604259747%_
                                               _%tl259605259750%_
                                               _%__splice262993262994%_
                                               _%target259629259670%_
                                               _%tl259631259673%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g259596259643%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g259596259643%_))))))
                          (let () (declare (not safe)) (_%g259596259643%_)))))
                  (let () (declare (not safe)) (_%g259596259643%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx260986%_ _%id260988%_)
        (let ((_%proc260992%_
               (let ((__tmp263420
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id260988%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp263420))))
          (if (procedure? _%proc260992%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx260986%_
                 _%id260988%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx260977%_ _%id260979%_)
        (let ((_%klass260983%_
               (let ((__tmp263421
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id260979%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp263421))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass260983%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx260977%_
                 _%id260979%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx260227%_ _%proc260229%_ _%sig260230%_)
        (letrec ((_%signature-arity260232%_
                  (lambda (_%args260909%_)
                    (let _%loop260912%_ ((_%rest260915%_ _%args260909%_)
                                         (_%count260917%_ '0))
                      (let* ((_%rest260918260929%_ _%rest260915%_)
                             (_%E260922260935%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest260918260929%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K260925260966%_
                               (lambda (_%rest260963%_)
                                 (_%loop260912%_
                                  _%rest260963%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count260917%_ '1)))))
                              (_%K260924260955%_ (lambda () _%count260917%_))
                              (_%K260923260943%_
                               (lambda () (cons _%count260917%_ '()))))
                          (let ((_%try-match260920260959%_
                                 (lambda ()
                                   (if (null? _%rest260918260929%_)
                                       (_%K260924260955%_)
                                       (_%K260923260943%_)))))
                            (if (pair? _%rest260918260929%_)
                                (let* ((_%tl260927260970%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest260918260929%_)))
                                       (_%rest260974%_ _%tl260927260970%_))
                                  (_%K260925260966%_ _%rest260974%_))
                                (_%try-match260920260959%_))))))))
                 (_%make-signature260234%_
                  (lambda (_%args260791%_
                           _%return260793%_
                           _%effect260794%_
                           _%unchecked260795%_)
                    (let ((__tmp263422
                           (lambda (_%g260796260798%_)
                             (|gxc[1]#verify-class!|
                              _%ctx260227%_
                              _%g260796260798%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp263422 _%args260791%_))
                    (|gxc[1]#verify-class!| _%ctx260227%_ _%return260793%_)
                    (if _%unchecked260795%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx260227%_
                         _%unchecked260795%_)
                        '#!void)
                    (let ((_%arity260802%_
                           (_%signature-arity260232%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args260791%_)))))
                      (if _%effect260794%_
                          (let ((_%effect260805%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect260794%_))))
                            (if (and (list? _%effect260805%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect260805%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx260227%_
                                   _%proc260229%_
                                   _%effect260805%_))))
                          '#!void)
                      (cons _%arity260802%_
                            (cons (let* ((_%g260808260831%_
                                          (lambda (_%g260809260827%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g260809260827%_))))
                                         (_%g260807260905%_
                                          (lambda (_%g260809260835%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g260809260835%_))
                                                (let ((_%e260814260838%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g260809260835%_))))
                                                  (let ((_%hd260815260842%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e260814260838%_)))
                                                        (_%tl260816260845%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e260814260838%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl260816260845%_))
                                                        (let ((_%e260817260848%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl260816260845%_))))
                  (let ((_%hd260818260852%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260817260848%_)))
                        (_%tl260819260855%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260817260848%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl260819260855%_))
                        (let ((_%e260820260858%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl260819260855%_))))
                          (let ((_%hd260821260862%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260820260858%_)))
                                (_%tl260822260865%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260820260858%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl260822260865%_))
                                (let ((_%e260823260868%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl260822260865%_))))
                                  (let ((_%hd260824260872%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260823260868%_)))
                                        (_%tl260825260875%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260823260868%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260825260875%_))
                                        ((lambda (_%g260810260878%_
                                                  _%g260811260880%_
                                                  _%g260812260881%_
                                                  _%g260813260882%_)
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
                           (cons _%g260813260882%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g260812260881%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g260811260880%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g260810260878%_ '()))
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
                                         _%hd260824260872%_
                                         _%hd260821260862%_
                                         _%hd260818260852%_
                                         _%hd260815260842%_)
                                        (_%g260808260831%_
                                         _%g260809260835%_))))
                                (_%g260808260831%_ _%g260809260835%_))))
                        (_%g260808260831%_ _%g260809260835%_))))
                (_%g260808260831%_ _%g260809260835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g260808260831%_
                                                 _%g260809260835%_)))))
                                    (_%g260807260905%_
                                     (list _%args260791%_
                                           _%return260793%_
                                           _%effect260794%_
                                           _%unchecked260795%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx260227%_ _%proc260229%_)
          (let* ((_%__stx263062263063%_ _%sig260230%_)
                 (_%g260241260344%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx263062263063%_)))))
            (let ((_%__kont263065263066%_
                   (lambda (_%g260243260772%_ _%g260244260774%_)
                     (_%make-signature260234%_
                      _%g260244260774%_
                      _%g260243260772%_
                      '#f
                      '#f)))
                  (_%__kont263067263068%_
                   (lambda (_%g260251260723%_
                            _%g260252260725%_
                            _%g260253260726%_)
                     (_%make-signature260234%_
                      _%g260253260726%_
                      _%g260252260725%_
                      _%g260251260723%_
                      '#f)))
                  (_%__kont263069263070%_
                   (lambda (_%g260267260647%_
                            _%g260268260649%_
                            _%g260269260650%_)
                     (_%make-signature260234%_
                      _%g260269260650%_
                      _%g260268260649%_
                      _%g260267260647%_
                      (let ((__tmp263423
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc260229%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp263423)))))
                  (_%__kont263071263072%_
                   (lambda (_%g260287260553%_
                            _%g260288260555%_
                            _%g260289260556%_
                            _%g260290260557%_)
                     (_%make-signature260234%_
                      _%g260290260557%_
                      _%g260289260556%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g260287260553%_)))))
                  (_%__kont263073263074%_
                   (lambda (_%g260311260460%_ _%g260312260462%_)
                     (_%make-signature260234%_
                      _%g260312260462%_
                      _%g260311260460%_
                      '#f
                      (let ((__tmp263424
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc260229%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp263424)))))
                  (_%__kont263075263076%_
                   (lambda (_%g260323260395%_
                            _%g260324260397%_
                            _%g260325260398%_)
                     (_%make-signature260234%_
                      _%g260325260398%_
                      _%g260324260397%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g260323260395%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx263062263063%_))
                  (let ((_%e260245260752%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx263062263063%_))))
                    (let ((_%tl260247260759%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e260245260752%_)))
                          (_%hd260246260756%_
                           (let ()
                             (declare (not safe))
                             (##car _%e260245260752%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl260247260759%_))
                          (let ((_%e260248260762%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl260247260759%_))))
                            (let ((_%tl260250260769%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e260248260762%_)))
                                  (_%hd260249260766%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e260248260762%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl260250260769%_))
                                  (_%__kont263065263066%_
                                   _%hd260249260766%_
                                   _%hd260246260756%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260250260769%_))
                                      (let ((_%e260260260699%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260250260769%_))))
                                        (let ((_%tl260262260706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260260260699%_)))
                                              (_%hd260261260703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260260260699%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd260261260703%_))
                                              (let ((_%e260263260709%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd260261260703%_))))
                                                (if (equal? _%e260263260709%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl260262260706%_))
                                                        (let ((_%e260264260713%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl260262260706%_))))
                  (let ((_%tl260266260720%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260264260713%_)))
                        (_%hd260265260717%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260264260713%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl260266260720%_))
                        (_%__kont263067263068%_
                         _%hd260265260717%_
                         _%hd260249260766%_
                         _%hd260246260756%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl260266260720%_))
                            (let ((_%e260283260633%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl260266260720%_))))
                              (let ((_%tl260285260640%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e260283260633%_)))
                                    (_%hd260284260637%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e260283260633%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd260284260637%_))
                                    (let ((_%e260286260643%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd260284260637%_))))
                                      (if (equal? _%e260286260643%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260285260640%_))
                                              (_%__kont263069263070%_
                                               _%hd260265260717%_
                                               _%hd260249260766%_
                                               _%hd260246260756%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl260285260640%_))
                                                  (let ((_%e260308260543%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl260285260640%_))))
                                                    (let ((_%tl260310260550%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e260308260543%_)))
                                                          (_%hd260309260547%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e260308260543%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl260310260550%_))
                                                          (_%__kont263071263072%_
                                                           _%hd260309260547%_
                                                           _%hd260265260717%_
                                                           _%hd260249260766%_
                                                           _%hd260246260756%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g260241260344%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g260241260344%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g260241260344%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g260241260344%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g260241260344%_))))))
                (let () (declare (not safe)) (_%g260241260344%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e260263260709%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl260262260706%_))
                                                            (_%__kont263073263074%_
                                                             _%hd260249260766%_
                                                             _%hd260246260756%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl260262260706%_))
                        (let ((_%e260336260385%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl260262260706%_))))
                          (let ((_%tl260338260392%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260336260385%_)))
                                (_%hd260337260389%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260336260385%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl260338260392%_))
                                (_%__kont263075263076%_
                                 _%hd260337260389%_
                                 _%hd260249260766%_
                                 _%hd260246260756%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g260241260344%_)))))
                        (let () (declare (not safe)) (_%g260241260344%_))))
                (let () (declare (not safe)) (_%g260241260344%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g260241260344%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g260241260344%_))))))
                          (let () (declare (not safe)) (_%g260241260344%_)))))
                  (let () (declare (not safe)) (_%g260241260344%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig259838%_)
        (let* ((_%g259841259921%_
                (lambda (_%g259842259917%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259842259917%_))))
               (_%g259840260223%_
                (lambda (_%g259842259925%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259842259925%_))
                      (let ((_%e259848259928%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259842259925%_))))
                        (let ((_%hd259849259932%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259848259928%_)))
                              (_%tl259850259935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259848259928%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259850259935%_))
                              (let ((_%e259851259938%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259850259935%_))))
                                (let ((_%hd259852259942%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259851259938%_)))
                                      (_%tl259853259945%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259851259938%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd259852259942%_))
                                      (let ((_%e259854259948%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd259852259942%_))))
                                        (if (equal? _%e259854259948%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl259853259945%_))
                                                (let ((_%e259855259952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl259853259945%_))))
                                                  (let ((_%hd259856259956%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e259855259952%_)))
                                                        (_%tl259857259959%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e259855259952%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd259856259956%_))
                                                        (let ((_%e259858259962%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd259856259956%_))))
                  (let ((_%hd259859259966%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259858259962%_)))
                        (_%tl259860259969%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259858259962%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd259859259966%_))
                        (if (let ((__tmp263425 |gxc[1]#_g263426_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp263425
                               _%hd259859259966%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl259860259969%_))
                                (let ((_%e259861259972%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl259860259969%_))))
                                  (let ((_%hd259862259976%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259861259972%_)))
                                        (_%tl259863259979%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259861259972%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259863259979%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl259857259959%_))
                                            (let ((_%e259864259982%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl259857259959%_))))
                                              (let ((_%hd259865259986%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259864259982%_)))
                                                    (_%tl259866259989%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259864259982%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd259865259986%_))
                                                    (let ((_%e259867259992%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd259865259986%_))))
                                                      (if (equal? _%e259867259992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl259866259989%_))
                      (let ((_%e259868259996%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl259866259989%_))))
                        (let ((_%hd259869260000%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259868259996%_)))
                              (_%tl259870260003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259868259996%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd259869260000%_))
                              (let ((_%e259871260006%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd259869260000%_))))
                                (let ((_%hd259872260010%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259871260006%_)))
                                      (_%tl259873260013%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259871260006%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd259872260010%_))
                                      (if (let ((__tmp263427
                                                 |gxc[1]#_g263428_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp263427
                                             _%hd259872260010%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl259873260013%_))
                                              (let ((_%e259874260016%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl259873260013%_))))
                                                (let ((_%hd259875260020%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e259874260016%_)))
                                                      (_%tl259876260023%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e259874260016%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259876260023%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl259870260003%_))
                                                          (let ((_%e259877260026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl259870260003%_))))
                    (let ((_%hd259878260030%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259877260026%_)))
                          (_%tl259879260033%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259877260026%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd259878260030%_))
                          (let ((_%e259880260036%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd259878260030%_))))
                            (if (equal? _%e259880260036%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl259879260033%_))
                                    (let ((_%e259881260040%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl259879260033%_))))
                                      (let ((_%hd259882260044%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e259881260040%_)))
                                            (_%tl259883260047%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e259881260040%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd259882260044%_))
                                            (let ((_%e259884260050%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd259882260044%_))))
                                              (let ((_%hd259885260054%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259884260050%_)))
                                                    (_%tl259886260057%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259884260050%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd259885260054%_))
                                                    (if (let ((__tmp263429
                                                               |gxc[1]#_g263430_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp263429
                                                           _%hd259885260054%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl259886260057%_))
                                                            (let ((_%e259887260060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl259886260057%_))))
                      (let ((_%hd259888260064%_
                             (let ()
                               (declare (not safe))
                               (##car _%e259887260060%_)))
                            (_%tl259889260067%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e259887260060%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl259889260067%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl259883260047%_))
                                (let ((_%e259890260070%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl259883260047%_))))
                                  (let ((_%hd259891260074%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259890260070%_)))
                                        (_%tl259892260077%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259890260070%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd259891260074%_))
                                        (let ((_%e259893260080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd259891260074%_))))
                                          (if (equal? _%e259893260080%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl259892260077%_))
                                                  (let ((_%e259894260084%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl259892260077%_))))
                                                    (let ((_%hd259895260088%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e259894260084%_)))
                                                          (_%tl259896260091%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e259894260084%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd259895260088%_))
                                                          (let ((_%e259897260094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd259895260088%_))))
                    (let ((_%hd259898260098%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259897260094%_)))
                          (_%tl259899260101%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259897260094%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd259898260098%_))
                          (if (let ((__tmp263431 |gxc[1]#_g263432_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp263431
                                 _%hd259898260098%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl259899260101%_))
                                  (let ((_%e259900260104%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl259899260101%_))))
                                    (let ((_%hd259901260108%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e259900260104%_)))
                                          (_%tl259902260111%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e259900260104%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl259902260111%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl259896260091%_))
                                              (let ((_%e259903260114%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl259896260091%_))))
                                                (let ((_%hd259904260118%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e259903260114%_)))
                                                      (_%tl259905260121%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e259903260114%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd259904260118%_))
                                                      (let ((_%e259906260124%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd259904260118%_))))
                (if (equal? _%e259906260124%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl259905260121%_))
                        (let ((_%e259907260128%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl259905260121%_))))
                          (let ((_%hd259908260132%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e259907260128%_)))
                                (_%tl259909260135%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e259907260128%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd259908260132%_))
                                (let ((_%e259910260138%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd259908260132%_))))
                                  (let ((_%hd259911260142%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259910260138%_)))
                                        (_%tl259912260145%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259910260138%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd259911260142%_))
                                        (if (let ((__tmp263433
                                                   |gxc[1]#_g263434_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp263433
                                               _%hd259911260142%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl259912260145%_))
                                                (let ((_%e259913260148%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl259912260145%_))))
                                                  (let ((_%hd259914260152%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e259913260148%_)))
                                                        (_%tl259915260155%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e259913260148%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259915260155%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl259909260135%_))
                                                            ((lambda (_%g259843260158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g259844260160%_
                              _%g259845260161%_
                              _%g259846260162%_
                              _%g259847260163%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g259844260160%_))
                           (cons _%g259844260160%_
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
                       (cons _%g259846260162%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g259843260158%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd259914260152%_
                     _%hd259901260108%_
                     _%hd259888260064%_
                     _%hd259875260020%_
                     _%hd259862259976%_)
                    (_%g259841259921%_ _%g259842259925%_))
                (_%g259841259921%_ _%g259842259925%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g259841259921%_
                                                 _%g259842259925%_))
                                            (_%g259841259921%_
                                             _%g259842259925%_))
                                        (_%g259841259921%_
                                         _%g259842259925%_))))
                                (_%g259841259921%_ _%g259842259925%_))))
                        (_%g259841259921%_ _%g259842259925%_))
                    (_%g259841259921%_ _%g259842259925%_)))
              (_%g259841259921%_ _%g259842259925%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g259841259921%_
                                               _%g259842259925%_))
                                          (_%g259841259921%_
                                           _%g259842259925%_))))
                                  (_%g259841259921%_ _%g259842259925%_))
                              (_%g259841259921%_ _%g259842259925%_))
                          (_%g259841259921%_ _%g259842259925%_))))
                  (_%g259841259921%_ _%g259842259925%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g259841259921%_
                                                   _%g259842259925%_))
                                              (_%g259841259921%_
                                               _%g259842259925%_)))
                                        (_%g259841259921%_
                                         _%g259842259925%_))))
                                (_%g259841259921%_ _%g259842259925%_))
                            (_%g259841259921%_ _%g259842259925%_))))
                    (_%g259841259921%_ _%g259842259925%_))
                (_%g259841259921%_ _%g259842259925%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g259841259921%_
                                                     _%g259842259925%_))))
                                            (_%g259841259921%_
                                             _%g259842259925%_))))
                                    (_%g259841259921%_ _%g259842259925%_))
                                (_%g259841259921%_ _%g259842259925%_)))
                          (_%g259841259921%_ _%g259842259925%_))))
                  (_%g259841259921%_ _%g259842259925%_))
              (_%g259841259921%_ _%g259842259925%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g259841259921%_
                                               _%g259842259925%_))
                                          (_%g259841259921%_
                                           _%g259842259925%_))
                                      (_%g259841259921%_ _%g259842259925%_))))
                              (_%g259841259921%_ _%g259842259925%_))))
                      (_%g259841259921%_ _%g259842259925%_))
                  (_%g259841259921%_ _%g259842259925%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g259841259921%_
                                                     _%g259842259925%_))))
                                            (_%g259841259921%_
                                             _%g259842259925%_))
                                        (_%g259841259921%_
                                         _%g259842259925%_))))
                                (_%g259841259921%_ _%g259842259925%_))
                            (_%g259841259921%_ _%g259842259925%_))
                        (_%g259841259921%_ _%g259842259925%_))))
                (_%g259841259921%_ _%g259842259925%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g259841259921%_
                                                 _%g259842259925%_))
                                            (_%g259841259921%_
                                             _%g259842259925%_)))
                                      (_%g259841259921%_ _%g259842259925%_))))
                              (_%g259841259921%_ _%g259842259925%_))))
                      (_%g259841259921%_ _%g259842259925%_)))))
          (_%g259840260223%_ _%sig259838%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx260995%_)
        (let* ((_%g260998261016%_
                (lambda (_%g260999261012%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260999261012%_))))
               (_%g260997261071%_
                (lambda (_%g260999261020%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260999261020%_))
                      (let ((_%e261002261023%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260999261020%_))))
                        (let ((_%hd261003261027%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261002261023%_)))
                              (_%tl261004261030%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261002261023%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261004261030%_))
                              (let ((_%e261005261033%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261004261030%_))))
                                (let ((_%hd261006261037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261005261033%_)))
                                      (_%tl261007261040%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261005261033%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261007261040%_))
                                      (let ((_%e261008261043%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261007261040%_))))
                                        (let ((_%hd261009261047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261008261043%_)))
                                              (_%tl261010261050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261008261043%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261010261050%_))
                                              ((lambda (_%g261000261053%_
                                                        _%g261001261055%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g261001261055%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g261000261053%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx260995%_
                                                        _%g261001261055%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx260995%_
                                                        _%g261000261053%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g261001261055%_
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
                                                   (cons _%g261000261053%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g260998261016%_
                                                      _%g260999261020%_)))
                                               _%hd261009261047%_
                                               _%hd261006261037%_)
                                              (_%g260998261016%_
                                               _%g260999261020%_))))
                                      (_%g260998261016%_ _%g260999261020%_))))
                              (_%g260998261016%_ _%g260999261020%_))))
                      (_%g260998261016%_ _%g260999261020%_)))))
          (_%g260997261071%_ _%stx260995%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx261075%_)
        (let* ((_%g261078261102%_
                (lambda (_%g261079261098%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261079261098%_))))
               (_%g261077261383%_
                (lambda (_%g261079261106%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261079261106%_))
                      (let ((_%e261082261109%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261079261106%_))))
                        (let ((_%hd261083261113%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261082261109%_)))
                              (_%tl261084261116%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261082261109%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261084261116%_))
                              (let ((_%e261085261119%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261084261116%_))))
                                (let ((_%hd261086261123%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261085261119%_)))
                                      (_%tl261087261126%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261085261119%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl261087261126%_))
                                      (let ((_g263435_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl261087261126%_
                                                '0))))
                                        (begin
                                          (let ((_g263436_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g263435_)
                                                       (##values-length
                                                        _g263435_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g263436_ 2)))
                                                (error "Context expects 2 values"
                                                       _g263436_)))
                                          (let ((_%target261088261129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g263435_ 0)))
                                                (_%tl261090261132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g263435_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261090261132%_))
                                                (letrec ((_%loop261091261135%_
                                                          (lambda (_%hd261089261139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature261095261142%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd261089261139%_))
                        (let ((_%e261092261144%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd261089261139%_))))
                          (let ((_%lp-hd261093261148%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261092261144%_)))
                                (_%lp-tl261094261151%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261092261144%_))))
                            (_%loop261091261135%_
                             _%lp-tl261094261151%_
                             (cons _%lp-hd261093261148%_
                                   _%signature261095261142%_))))
                        (let ((_%signature261096261154%_
                               (reverse _%signature261095261142%_)))
                          ((lambda (_%g261080261157%_ _%g261081261159%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g261081261159%_))
                                 (let* ((_%g261177261192%_
                                         (lambda (_%g261178261188%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g261178261188%_))))
                                        (_%g261176261371%_
                                         (lambda (_%g261178261196%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g261178261196%_))
                                               (let ((_%e261181261199%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g261178261196%_))))
                                                 (let ((_%hd261182261203%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e261181261199%_)))
                                                       (_%tl261183261206%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e261181261199%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl261183261206%_))
                                                       (let ((_%e261184261209%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl261183261206%_))))
                 (let ((_%hd261185261213%_
                        (let ()
                          (declare (not safe))
                          (##car _%e261184261209%_)))
                       (_%tl261186261216%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e261184261209%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl261186261216%_))
                       ((lambda (_%g261179261219%_ _%g261180261221%_)
                          (let* ((_%g261237261245%_
                                  (lambda (_%g261238261241%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g261238261241%_))))
                                 (_%g261236261367%_
                                  (lambda (_%g261238261249%_)
                                    ((lambda (_%g261239261252%_)
                                       (let* ((_%unchecked261265%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g261179261219%_))
                                              (_%g261268261276%_
                                               (lambda (_%g261269261272%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g261269261272%_))))
                                              (_%g261267261299%_
                                               (lambda (_%g261269261280%_)
                                                 ((lambda (_%g261270261283%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g261239261252%_
                                                                (cons _%g261270261283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g261269261280%_))))
                                         (_%g261267261299%_
                                          (if _%unchecked261265%_
                                              (let* ((_%g261303261318%_
                                                      (lambda (_%g261304261314%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g261304261314%_))))
                                                     (_%g261302261363%_
                                                      (lambda (_%g261304261322%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g261304261322%_))
                                                            (let ((_%e261307261325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g261304261322%_))))
                      (let ((_%hd261308261329%_
                             (let ()
                               (declare (not safe))
                               (##car _%e261307261325%_)))
                            (_%tl261309261332%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e261307261325%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl261309261332%_))
                            (let ((_%e261310261335%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl261309261332%_))))
                              (let ((_%hd261311261339%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e261310261335%_)))
                                    (_%tl261312261342%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e261310261335%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl261312261342%_))
                                    ((lambda (_%g261305261345%_
                                              _%g261306261347%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g261306261347%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g261180261221%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g261305261345%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd261311261339%_
                                     _%hd261308261329%_)
                                    (_%g261303261318%_ _%g261304261322%_))))
                            (_%g261303261318%_ _%g261304261322%_))))
                    (_%g261303261318%_ _%g261304261322%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g261302261363%_
                                                 _%unchecked261265%_))
                                              '(begin)))))
                                     _%g261238261249%_))))
                            (_%g261236261367%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g261081261159%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g261180261221%_ '()))
                   (cons '#f (cons 'signature: (cons _%g261179261219%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd261185261213%_
                        _%hd261182261203%_)
                       (_%g261177261192%_ _%g261178261196%_))))
               (_%g261177261192%_ _%g261178261196%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g261177261192%_
                                                _%g261178261196%_)))))
                                   (_%g261176261371%_
                                    (|gxc[1]#parse-signature|
                                     _%stx261075%_
                                     _%g261081261159%_
                                     (let ((__tmp263437
                                            (lambda (_%g261374261377%_
                                                     _%g261375261380%_)
                                              (cons _%g261374261377%_
                                                    _%g261375261380%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp263437
                                        '()
                                        _%g261080261157%_)))))
                                 (_%g261078261102%_ _%g261079261106%_)))
                           _%signature261096261154%_
                           _%hd261086261123%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop261091261135%_
                                                   _%target261088261129%_
                                                   '()))
                                                (_%g261078261102%_
                                                 _%g261079261106%_)))))
                                      (_%g261078261102%_ _%g261079261106%_))))
                              (_%g261078261102%_ _%g261079261106%_))))
                      (_%g261078261102%_ _%g261079261106%_)))))
          (_%g261077261383%_ _%stx261075%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx261388%_)
        (let* ((_%g261391261415%_
                (lambda (_%g261392261411%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261392261411%_))))
               (_%g261390262290%_
                (lambda (_%g261392261419%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261392261419%_))
                      (let ((_%e261395261422%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261392261419%_))))
                        (let ((_%hd261396261426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261395261422%_)))
                              (_%tl261397261429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261395261422%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261397261429%_))
                              (let ((_%e261398261432%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261397261429%_))))
                                (let ((_%hd261399261436%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261398261432%_)))
                                      (_%tl261400261439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261398261432%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl261400261439%_))
                                      (let ((_g263438_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl261400261439%_
                                                '0))))
                                        (begin
                                          (let ((_g263439_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g263438_)
                                                       (##values-length
                                                        _g263438_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g263439_ 2)))
                                                (error "Context expects 2 values"
                                                       _g263439_)))
                                          (let ((_%target261401261442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g263438_ 0)))
                                                (_%tl261403261445%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g263438_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261403261445%_))
                                                (letrec ((_%loop261404261448%_
                                                          (lambda (_%hd261402261452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature261408261455%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd261402261452%_))
                        (let ((_%e261405261457%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd261402261452%_))))
                          (let ((_%lp-hd261406261461%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261405261457%_)))
                                (_%lp-tl261407261464%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261405261457%_))))
                            (_%loop261404261448%_
                             _%lp-tl261407261464%_
                             (cons _%lp-hd261406261461%_
                                   _%case-signature261408261455%_))))
                        (let ((_%case-signature261409261467%_
                               (reverse _%case-signature261408261455%_)))
                          ((lambda (_%g261393261470%_ _%g261394261472%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g261394261472%_))
                                 (let* ((_%signatures261503%_
                                         (map (lambda (_%g261489261491%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx261388%_
                                                 _%g261394261472%_
                                                 _%g261489261491%_))
                                              (let ((__tmp263440
                                                     (lambda (_%g261494261497%_
                                                              _%g261495261500%_)
                                                       (cons _%g261494261497%_
                                                             _%g261495261500%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp263440
                                                 '()
                                                 _%g261393261470%_))))
                                        (_%g261506261532%_
                                         (lambda (_%g261507261528%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g261507261528%_))))
                                        (_%g261505262286%_
                                         (lambda (_%g261507261536%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g261507261536%_))
                                               (let ((_g263441_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g261507261536%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g263442_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g263441_)
                        (##values-length _g263441_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g263442_ 2)))
                 (error "Context expects 2 values" _g263442_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target261510261539%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g263441_
                                                             0)))
                                                         (_%tl261512261542%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g263441_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl261512261542%_))
                                                         (letrec ((_%loop261513261545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd261511261549%_
                                    _%sig261517261552%_
                                    _%arity261518261553%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd261511261549%_))
                                 (let ((_%e261514261555%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd261511261549%_))))
                                   (let ((_%lp-hd261515261559%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e261514261555%_)))
                                         (_%lp-tl261516261562%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e261514261555%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd261515261559%_))
                                         (let ((_%e261521261565%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd261515261559%_))))
                                           (let ((_%hd261522261569%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e261521261565%_)))
                                                 (_%tl261523261572%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e261521261565%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl261523261572%_))
                                                 (let ((_%e261524261575%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl261523261572%_))))
                                                   (let ((_%hd261525261579%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e261524261575%_)))
                                                         (_%tl261526261582%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e261524261575%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl261526261582%_))
                                                         (_%loop261513261545%_
                                                          _%lp-tl261516261562%_
                                                          (cons _%hd261525261579%_
                                                                _%sig261517261552%_)
                                                          (cons _%hd261522261569%_
                                                                _%arity261518261553%_))
                                                         (_%g261506261532%_
                                                          _%g261507261536%_))))
                                                 (_%g261506261532%_
                                                  _%g261507261536%_))))
                                         (_%g261506261532%_
                                          _%g261507261536%_))))
                                 (let ((_%sig261519261585%_
                                        (reverse _%sig261517261552%_))
                                       (_%arity261520261587%_
                                        (reverse _%arity261518261553%_)))
                                   ((lambda (_%g261508261589%_
                                             _%g261509261591%_)
                                      (let* ((_%g261608261616%_
                                              (lambda (_%g261609261612%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g261609261612%_))))
                                             (_%g261607262271%_
                                              (lambda (_%g261609261620%_)
                                                ((lambda (_%g261610261623%_)
                                                   (let* ((_%g261636261644%_
                                                           (lambda (_%g261637261640%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g261637261640%_))))
                  (_%g261635261666%_
                   (lambda (_%g261637261648%_)
                     ((lambda (_%g261638261651%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g261610261623%_
                                    (cons _%g261638261651%_ '()))))
                      _%g261637261648%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g261635261666%_
                                                      (let ((_g263443_
                                                             (let _%loop261670%_ ((_%rest261673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures261503%_)
                                          (_%unchecked-proc261675%_ '#f)
                                          (_%unchecked-clauses261676%_ '()))
                       (let* ((_%rest261677261685%_ _%rest261673%_)
                              (_%else261679261697%_
                               (lambda ()
                                 (values _%unchecked-proc261675%_
                                         (reverse!
                                          _%unchecked-clauses261676%_))))
                              (_%K261681262138%_
                               (lambda (_%rest261701%_ _%hd261703%_)
                                 (let* ((_%g261705261792%_
                                         (lambda (_%g261706261788%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g261706261788%_))))
                                        (_%g261704262134%_
                                         (lambda (_%g261706261796%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g261706261796%_))
                                               (let ((_%e261713261799%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g261706261796%_))))
                                                 (let ((_%hd261714261803%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e261713261799%_)))
                                                       (_%tl261715261806%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e261713261799%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl261715261806%_))
                                                       (let ((_%e261716261809%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl261715261806%_))))
                 (let ((_%hd261717261813%_
                        (let ()
                          (declare (not safe))
                          (##car _%e261716261809%_)))
                       (_%tl261718261816%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e261716261809%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd261717261813%_))
                       (let ((_%e261719261819%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd261717261813%_))))
                         (let ((_%hd261720261823%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e261719261819%_)))
                               (_%tl261721261826%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e261719261819%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl261721261826%_))
                               (let ((_%e261722261829%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl261721261826%_))))
                                 (let ((_%hd261723261833%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e261722261829%_)))
                                       (_%tl261724261836%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e261722261829%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd261723261833%_))
                                       (let ((_%e261725261839%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd261723261833%_))))
                                         (if (equal? _%e261725261839%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl261724261836%_))
                                                 (let ((_%e261726261843%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl261724261836%_))))
                                                   (let ((_%hd261727261847%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e261726261843%_)))
                                                         (_%tl261728261850%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e261726261843%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd261727261847%_))
                                                         (let ((_%e261729261853%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd261727261847%_))))
                   (let ((_%hd261730261857%_
                          (let ()
                            (declare (not safe))
                            (##car _%e261729261853%_)))
                         (_%tl261731261860%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e261729261853%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd261730261857%_))
                         (if (let ((__tmp263445 |gxc[1]#_g263446_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp263445
                                _%hd261730261857%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl261731261860%_))
                                 (let ((_%e261732261863%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl261731261860%_))))
                                   (let ((_%hd261733261867%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e261732261863%_)))
                                         (_%tl261734261870%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e261732261863%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl261734261870%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl261728261850%_))
                                             (let ((_%e261735261873%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl261728261850%_))))
                                               (let ((_%hd261736261877%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e261735261873%_)))
                                                     (_%tl261737261880%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e261735261873%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd261736261877%_))
                                                     (let ((_%e261738261883%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd261736261877%_))))
                                                       (if (equal? _%e261738261883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl261737261880%_))
                       (let ((_%e261739261887%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl261737261880%_))))
                         (let ((_%hd261740261891%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e261739261887%_)))
                               (_%tl261741261894%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e261739261887%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd261740261891%_))
                               (let ((_%e261742261897%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd261740261891%_))))
                                 (let ((_%hd261743261901%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e261742261897%_)))
                                       (_%tl261744261904%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e261742261897%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd261743261901%_))
                                       (if (let ((__tmp263447
                                                  |gxc[1]#_g263448_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp263447
                                              _%hd261743261901%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl261744261904%_))
                                               (let ((_%e261745261907%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl261744261904%_))))
                                                 (let ((_%hd261746261911%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e261745261907%_)))
                                                       (_%tl261747261914%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e261745261907%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl261747261914%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl261741261894%_))
                                                           (let ((_%e261748261917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl261741261894%_))))
                     (let ((_%hd261749261921%_
                            (let ()
                              (declare (not safe))
                              (##car _%e261748261917%_)))
                           (_%tl261750261924%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e261748261917%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd261749261921%_))
                           (let ((_%e261751261927%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd261749261921%_))))
                             (if (equal? _%e261751261927%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl261750261924%_))
                                     (let ((_%e261752261931%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl261750261924%_))))
                                       (let ((_%hd261753261935%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e261752261931%_)))
                                             (_%tl261754261938%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e261752261931%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd261753261935%_))
                                             (let ((_%e261755261941%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd261753261935%_))))
                                               (let ((_%hd261756261945%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e261755261941%_)))
                                                     (_%tl261757261948%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e261755261941%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd261756261945%_))
                                                     (if (let ((__tmp263449
                                                                |gxc[1]#_g263450_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp263449
                                                            _%hd261756261945%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl261757261948%_))
                     (let ((_%e261758261951%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl261757261948%_))))
                       (let ((_%hd261759261955%_
                              (let ()
                                (declare (not safe))
                                (##car _%e261758261951%_)))
                             (_%tl261760261958%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e261758261951%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl261760261958%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl261754261938%_))
                                 (let ((_%e261761261961%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl261754261938%_))))
                                   (let ((_%hd261762261965%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e261761261961%_)))
                                         (_%tl261763261968%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e261761261961%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd261762261965%_))
                                         (let ((_%e261764261971%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd261762261965%_))))
                                           (if (equal? _%e261764261971%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl261763261968%_))
                                                   (let ((_%e261765261975%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl261763261968%_))))
                                                     (let ((_%hd261766261979%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e261765261975%_)))
                                                           (_%tl261767261982%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e261765261975%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd261766261979%_))
                                                           (let ((_%e261768261985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd261766261979%_))))
                     (let ((_%hd261769261989%_
                            (let ()
                              (declare (not safe))
                              (##car _%e261768261985%_)))
                           (_%tl261770261992%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e261768261985%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd261769261989%_))
                           (if (let ((__tmp263451 |gxc[1]#_g263452_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp263451
                                  _%hd261769261989%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl261770261992%_))
                                   (let ((_%e261771261995%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl261770261992%_))))
                                     (let ((_%hd261772261999%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e261771261995%_)))
                                           (_%tl261773262002%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e261771261995%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl261773262002%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl261767261982%_))
                                               (let ((_%e261774262005%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl261767261982%_))))
                                                 (let ((_%hd261775262009%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e261774262005%_)))
                                                       (_%tl261776262012%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e261774262005%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd261775262009%_))
                                                       (let ((_%e261777262015%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd261775262009%_))))
                 (if (equal? _%e261777262015%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl261776262012%_))
                         (let ((_%e261778262019%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl261776262012%_))))
                           (let ((_%hd261779262023%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e261778262019%_)))
                                 (_%tl261780262026%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e261778262019%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd261779262023%_))
                                 (let ((_%e261781262029%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd261779262023%_))))
                                   (let ((_%hd261782262033%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e261781262029%_)))
                                         (_%tl261783262036%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e261781262029%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd261782262033%_))
                                         (if (let ((__tmp263453
                                                    |gxc[1]#_g263454_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp263453
                                                _%hd261782262033%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl261783262036%_))
                                                 (let ((_%e261784262039%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl261783262036%_))))
                                                   (let ((_%hd261785262043%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e261784262039%_)))
                                                         (_%tl261786262046%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e261784262039%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl261786262046%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl261780262026%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl261718261816%_))
                         ((lambda (_%g261707262049%_
                                   _%g261708262051%_
                                   _%g261709262052%_
                                   _%g261710262053%_
                                   _%g261711262054%_
                                   _%g261712262055%_)
                            (let ((_%clause262126%_
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
                                                     (cons _%g261712262055%_
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
                                                 (cons _%g261710262053%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g261707262049%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked262128%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g261708262051%_))))
                              (_%loop261670%_
                               _%rest261701%_
                               (let ((_%$e262130%_ _%unchecked262128%_))
                                 (if _%$e262130%_
                                     _%$e262130%_
                                     _%unchecked-proc261675%_))
                               (cons _%clause262126%_
                                     _%unchecked-clauses261676%_))))
                          _%hd261785262043%_
                          _%hd261772261999%_
                          _%hd261759261955%_
                          _%hd261746261911%_
                          _%hd261733261867%_
                          _%hd261714261803%_)
                         (_%g261705261792%_ _%g261706261796%_))
                     (_%g261705261792%_ _%g261706261796%_))
                 (_%g261705261792%_ _%g261706261796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g261705261792%_
                                                  _%g261706261796%_))
                                             (_%g261705261792%_
                                              _%g261706261796%_))
                                         (_%g261705261792%_
                                          _%g261706261796%_))))
                                 (_%g261705261792%_ _%g261706261796%_))))
                         (_%g261705261792%_ _%g261706261796%_))
                     (_%g261705261792%_ _%g261706261796%_)))
               (_%g261705261792%_ _%g261706261796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g261705261792%_
                                                _%g261706261796%_))
                                           (_%g261705261792%_
                                            _%g261706261796%_))))
                                   (_%g261705261792%_ _%g261706261796%_))
                               (_%g261705261792%_ _%g261706261796%_))
                           (_%g261705261792%_ _%g261706261796%_))))
                   (_%g261705261792%_ _%g261706261796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g261705261792%_
                                                    _%g261706261796%_))
                                               (_%g261705261792%_
                                                _%g261706261796%_)))
                                         (_%g261705261792%_
                                          _%g261706261796%_))))
                                 (_%g261705261792%_ _%g261706261796%_))
                             (_%g261705261792%_ _%g261706261796%_))))
                     (_%g261705261792%_ _%g261706261796%_))
                 (_%g261705261792%_ _%g261706261796%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g261705261792%_
                                                      _%g261706261796%_))))
                                             (_%g261705261792%_
                                              _%g261706261796%_))))
                                     (_%g261705261792%_ _%g261706261796%_))
                                 (_%g261705261792%_ _%g261706261796%_)))
                           (_%g261705261792%_ _%g261706261796%_))))
                   (_%g261705261792%_ _%g261706261796%_))
               (_%g261705261792%_ _%g261706261796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g261705261792%_
                                                _%g261706261796%_))
                                           (_%g261705261792%_
                                            _%g261706261796%_))
                                       (_%g261705261792%_ _%g261706261796%_))))
                               (_%g261705261792%_ _%g261706261796%_))))
                       (_%g261705261792%_ _%g261706261796%_))
                   (_%g261705261792%_ _%g261706261796%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g261705261792%_
                                                      _%g261706261796%_))))
                                             (_%g261705261792%_
                                              _%g261706261796%_))
                                         (_%g261705261792%_
                                          _%g261706261796%_))))
                                 (_%g261705261792%_ _%g261706261796%_))
                             (_%g261705261792%_ _%g261706261796%_))
                         (_%g261705261792%_ _%g261706261796%_))))
                 (_%g261705261792%_ _%g261706261796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g261705261792%_
                                                  _%g261706261796%_))
                                             (_%g261705261792%_
                                              _%g261706261796%_)))
                                       (_%g261705261792%_ _%g261706261796%_))))
                               (_%g261705261792%_ _%g261706261796%_))))
                       (_%g261705261792%_ _%g261706261796%_))))
               (_%g261705261792%_ _%g261706261796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g261705261792%_
                                                _%g261706261796%_)))))
                                   (_%g261704262134%_ _%hd261703%_)))))
                         (if (pair? _%rest261677261685%_)
                             (let ((_%hd261682262142%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest261677261685%_)))
                                   (_%tl261683262145%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest261677261685%_))))
                               (let* ((_%hd262148%_ _%hd261682262142%_)
                                      (_%rest262151%_ _%tl261683262145%_))
                                 (_%K261681262138%_
                                  _%rest262151%_
                                  _%hd262148%_)))
                             (_%else261679261697%_))))))
                (begin
                  (let ((_g263444_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g263443_)
                               (##values-length _g263443_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g263444_ 2)))
                        (error "Context expects 2 values" _g263444_)))
                  (let ((_%unchecked-proc262154%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g263443_ 0)))
                        (_%unchecked-clauses262156%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g263443_ 1))))
                    (if _%unchecked-proc262154%_
                        (let* ((_%g262158262182%_
                                (lambda (_%g262159262178%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g262159262178%_))))
                               (_%g262157262267%_
                                (lambda (_%g262159262186%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g262159262186%_))
                                      (let ((_%e262162262189%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g262159262186%_))))
                                        (let ((_%hd262163262193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262162262189%_)))
                                              (_%tl262164262196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262162262189%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262164262196%_))
                                              (let ((_%e262165262199%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262164262196%_))))
                                                (let ((_%hd262166262203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262165262199%_)))
                                                      (_%tl262167262206%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262165262199%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd262166262203%_))
                                                      (let ((_g263455_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd262166262203%_ '0))))
                (begin
                  (let ((_g263456_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g263455_)
                               (##values-length _g263455_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g263456_ 2)))
                        (error "Context expects 2 values" _g263456_)))
                  (let ((_%target262168262209%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g263455_ 0)))
                        (_%tl262170262212%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g263455_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl262170262212%_))
                        (letrec ((_%loop262171262215%_
                                  (lambda (_%hd262169262219%_
                                           _%clause262175262222%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd262169262219%_))
                                        (let ((_%e262172262224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd262169262219%_))))
                                          (let ((_%lp-hd262173262228%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e262172262224%_)))
                                                (_%lp-tl262174262231%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e262172262224%_))))
                                            (_%loop262171262215%_
                                             _%lp-tl262174262231%_
                                             (cons _%lp-hd262173262228%_
                                                   _%clause262175262222%_))))
                                        (let ((_%clause262176262234%_
                                               (reverse _%clause262175262222%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262167262206%_))
                                              ((lambda (_%g262160262237%_
                                                        _%g262161262239%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g262161262239%_
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
                                             (let ((__tmp263457
                                                    (lambda (_%g262258262261%_
                                                             _%g262259262264%_)
                                                      (cons _%g262258262261%_
                                                            _%g262259262264%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp263457
                                                '()
                                                _%g262160262237%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause262176262234%_
                                               _%hd262163262193%_)
                                              (_%g262158262182%_
                                               _%g262159262186%_)))))))
                          (_%loop262171262215%_ _%target262168262209%_ '()))
                        (_%g262158262182%_ _%g262159262186%_)))))
              (_%g262158262182%_ _%g262159262186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262158262182%_
                                               _%g262159262186%_))))
                                      (_%g262158262182%_ _%g262159262186%_)))))
                          (_%g262157262267%_
                           (list _%unchecked-proc262154%_
                                 _%unchecked-clauses262156%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g261609261620%_))))
                                        (_%g261607262271%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g261394261472%_
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
                                          _%g261508261589%_
                                          _%g261509261591%_))
                                       (let ((__tmp263458
                                              (lambda (_%g262274262278%_
                                                       _%g262275262281%_
                                                       _%g262276262283%_)
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
                                (cons _%g262275262281%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g262274262278%_ '())))))
              _%g262276262283%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__1
                                          __tmp263458
                                          '()
                                          _%g261508261589%_
                                          _%g261509261591%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig261519261585%_
                                    _%arity261520261587%_))))))
                   (_%loop261513261545%_ _%target261510261539%_ '() '()))
                 (_%g261506261532%_ _%g261507261536%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g261506261532%_
                                                _%g261507261536%_)))))
                                   (_%g261505262286%_ _%signatures261503%_))
                                 (_%g261391261415%_ _%g261392261419%_)))
                           _%case-signature261409261467%_
                           _%hd261399261436%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop261404261448%_
                                                   _%target261401261442%_
                                                   '()))
                                                (_%g261391261415%_
                                                 _%g261392261419%_)))))
                                      (_%g261391261415%_ _%g261392261419%_))))
                              (_%g261391261415%_ _%g261392261419%_))))
                      (_%g261391261415%_ _%g261392261419%_)))))
          (_%g261390262290%_ _%stx261388%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx262298%_)
        (let* ((_%__stx263278263279%_ _%$stx262298%_)
               (_%g262304262364%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx263278263279%_)))))
          (let ((_%__kont263281263282%_
                 (lambda (_%g262306262586%_ _%g262307262588%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262307262588%_ '()))
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
                                                       (cons _%g262307262588%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g262306262586%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont263283263284%_
                 (lambda (_%g262321262511%_
                          _%g262322262513%_
                          _%g262323262514%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262323262514%_ '()))
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
                                                       (cons _%g262323262514%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g262322262513%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262321262511%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont263285263286%_
                 (lambda (_%g262340262425%_
                          _%g262341262427%_
                          _%g262342262428%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262342262428%_ '()))
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
                                                       (cons _%g262342262428%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g262341262427%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262340262425%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx263278263279%_))
                (let ((_%e262308262542%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx263278263279%_))))
                  (let ((_%tl262310262549%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262308262542%_)))
                        (_%hd262309262546%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262308262542%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl262310262549%_))
                        (let ((_%e262311262552%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl262310262549%_))))
                          (let ((_%tl262313262559%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262311262552%_)))
                                (_%hd262312262556%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262311262552%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd262312262556%_))
                                (let ((_%e262314262562%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd262312262556%_))))
                                  (if (equal? _%e262314262562%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl262313262559%_))
                                          (let ((_%e262315262566%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl262313262559%_))))
                                            (let ((_%tl262317262573%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e262315262566%_)))
                                                  (_%hd262316262570%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e262315262566%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl262317262573%_))
                                                  (let ((_%e262318262576%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl262317262573%_))))
                                                    (let ((_%tl262320262583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262318262576%_)))
                                                          (_%hd262319262580%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262318262576%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl262320262583%_))
                                                          (_%__kont263281263282%_
                                                           _%hd262319262580%_
                                                           _%hd262316262570%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g262304262364%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g262304262364%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g262304262364%_)))
                                      (if (equal? _%e262314262562%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262313262559%_))
                                              (let ((_%e262331262481%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262313262559%_))))
                                                (let ((_%tl262333262488%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262331262481%_)))
                                                      (_%hd262332262485%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262331262481%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl262333262488%_))
                                                      (let ((_%e262334262491%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl262333262488%_))))
                (let ((_%tl262336262498%_
                       (let () (declare (not safe)) (##cdr _%e262334262491%_)))
                      (_%hd262335262495%_
                       (let ()
                         (declare (not safe))
                         (##car _%e262334262491%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl262336262498%_))
                      (let ((_%e262337262501%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl262336262498%_))))
                        (let ((_%tl262339262508%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262337262501%_)))
                              (_%hd262338262505%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262337262501%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl262339262508%_))
                              (_%__kont263283263284%_
                               _%hd262338262505%_
                               _%hd262335262495%_
                               _%hd262332262485%_)
                              (let ()
                                (declare (not safe))
                                (_%g262304262364%_)))))
                      (let () (declare (not safe)) (_%g262304262364%_)))))
              (let () (declare (not safe)) (_%g262304262364%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g262304262364%_)))
                                          (if (equal? _%e262314262562%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl262313262559%_))
                                                  (let ((_%e262350262395%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl262313262559%_))))
                                                    (let ((_%tl262352262402%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262350262395%_)))
                                                          (_%hd262351262399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262350262395%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl262352262402%_))
                                                          (let ((_%e262353262405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl262352262402%_))))
                    (let ((_%tl262355262412%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262353262405%_)))
                          (_%hd262354262409%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262353262405%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl262355262412%_))
                          (let ((_%e262356262415%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl262355262412%_))))
                            (let ((_%tl262358262422%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e262356262415%_)))
                                  (_%hd262357262419%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e262356262415%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl262358262422%_))
                                  (_%__kont263285263286%_
                                   _%hd262357262419%_
                                   _%hd262354262409%_
                                   _%hd262351262399%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g262304262364%_)))))
                          (let () (declare (not safe)) (_%g262304262364%_)))))
                  (let () (declare (not safe)) (_%g262304262364%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g262304262364%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g262304262364%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g262304262364%_)))))
                        (let () (declare (not safe)) (_%g262304262364%_)))))
                (let () (declare (not safe)) (_%g262304262364%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx262610%_)
        (let* ((_%g262614262634%_
                (lambda (_%g262615262630%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262615262630%_))))
               (_%g262613262703%_
                (lambda (_%g262615262638%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262615262638%_))
                      (let ((_%e262617262641%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262615262638%_))))
                        (let ((_%hd262618262645%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262617262641%_)))
                              (_%tl262619262648%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262617262641%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl262619262648%_))
                              (let ((_g263459_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl262619262648%_
                                        '0))))
                                (begin
                                  (let ((_g263460_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g263459_)
                                               (##values-length _g263459_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g263460_ 2)))
                                        (error "Context expects 2 values"
                                               _g263460_)))
                                  (let ((_%target262620262651%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263459_ 0)))
                                        (_%tl262622262654%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263459_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262622262654%_))
                                        (letrec ((_%loop262623262657%_
                                                  (lambda (_%hd262621262661%_
                                                           _%decl262627262664%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd262621262661%_))
                                                        (let ((_%e262624262666%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd262621262661%_))))
                  (let ((_%lp-hd262625262670%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262624262666%_)))
                        (_%lp-tl262626262673%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262624262666%_))))
                    (_%loop262623262657%_
                     _%lp-tl262626262673%_
                     (cons _%lp-hd262625262670%_ _%decl262627262664%_))))
                (let ((_%decl262628262676%_ (reverse _%decl262627262664%_)))
                  ((lambda (_%g262616262679%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp263461
                                  (lambda (_%g262694262697%_ _%g262695262700%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g262694262697%_)
                                          _%g262695262700%_))))
                             (declare (not safe))
                             (foldr__0 __tmp263461 '() _%g262616262679%_))))
                   _%decl262628262676%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop262623262657%_
                                           _%target262620262651%_
                                           '()))
                                        (_%g262614262634%_
                                         _%g262615262638%_)))))
                              (_%g262614262634%_ _%g262615262638%_))))
                      (_%g262614262634%_ _%g262615262638%_)))))
          (_%g262613262703%_ _%$stx262610%_))))))
