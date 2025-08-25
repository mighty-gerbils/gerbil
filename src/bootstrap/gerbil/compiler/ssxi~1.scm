(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g216459_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g216466_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g216468_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g216470_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g216472_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g216474_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g216486_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g216488_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g216490_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g216492_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g216494_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx209877%_)
        (let* ((_%g209881209899%_
                (lambda (_%g209882209895%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209882209895%_))))
               (_%g209880209954%_
                (lambda (_%g209882209903%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209882209903%_))
                      (let ((_%e209885209906%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g209882209903%_))))
                        (let ((_%hd209886209910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209885209906%_)))
                              (_%tl209887209913%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209885209906%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl209887209913%_))
                              (let ((_%e209888209916%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl209887209913%_))))
                                (let ((_%hd209889209920%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209888209916%_)))
                                      (_%tl209890209923%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209888209916%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl209890209923%_))
                                      (let ((_%e209891209926%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl209890209923%_))))
                                        (let ((_%hd209892209930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e209891209926%_)))
                                              (_%tl209893209933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e209891209926%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl209893209933%_))
                                              ((lambda (_%L209936%_
                                                        _%L209938%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L209938%_))
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
                               (cons _%L209938%_ '()))
                         (cons _%L209936%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g209881209899%_
                                                      _%g209882209903%_)))
                                               _%hd209892209930%_
                                               _%hd209889209920%_)
                                              (_%g209881209899%_
                                               _%g209882209903%_))))
                                      (_%g209881209899%_ _%g209882209903%_))))
                              (_%g209881209899%_ _%g209882209903%_))))
                      (_%g209881209899%_ _%g209882209903%_)))))
          (_%g209880209954%_ _%$stx209877%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx209958%_)
        (let* ((_%g209962209980%_
                (lambda (_%g209963209976%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209963209976%_))))
               (_%g209961210035%_
                (lambda (_%g209963209984%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209963209984%_))
                      (let ((_%e209966209987%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g209963209984%_))))
                        (let ((_%hd209967209991%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209966209987%_)))
                              (_%tl209968209994%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209966209987%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl209968209994%_))
                              (let ((_%e209969209997%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl209968209994%_))))
                                (let ((_%hd209970210001%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209969209997%_)))
                                      (_%tl209971210004%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209969209997%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl209971210004%_))
                                      (let ((_%e209972210007%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl209971210004%_))))
                                        (let ((_%hd209973210011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e209972210007%_)))
                                              (_%tl209974210014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e209972210007%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl209974210014%_))
                                              ((lambda (_%L210017%_
                                                        _%L210019%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L210019%_))
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
                               (cons _%L210019%_ '()))
                         (cons _%L210017%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g209962209980%_
                                                      _%g209963209984%_)))
                                               _%hd209973210011%_
                                               _%hd209970210001%_)
                                              (_%g209962209980%_
                                               _%g209963209984%_))))
                                      (_%g209962209980%_ _%g209963209984%_))))
                              (_%g209962209980%_ _%g209963209984%_))))
                      (_%g209962209980%_ _%g209963209984%_)))))
          (_%g209961210035%_ _%$stx209958%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx210039%_)
        (let* ((_%g210043210072%_
                (lambda (_%g210044210068%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210044210068%_))))
               (_%g210042210172%_
                (lambda (_%g210044210076%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210044210076%_))
                      (let ((_%e210047210079%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g210044210076%_))))
                        (let ((_%hd210048210083%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210047210079%_)))
                              (_%tl210049210086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210047210079%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl210049210086%_))
                              (let ((_g216437_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl210049210086%_
                                        '0))))
                                (begin
                                  (let ((_g216438_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g216437_)
                                               (##values-length _g216437_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g216438_ 2)))
                                        (error "Context expects 2 values"
                                               _g216438_)))
                                  (let ((_%target210050210089%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g216437_ 0)))
                                        (_%tl210052210092%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g216437_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl210052210092%_))
                                        (letrec ((_%loop210053210095%_
                                                  (lambda (_%hd210051210099%_
                                                           _%type210057210102%_
                                                           _%symbol210058210104%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd210051210099%_))
                                                        (let ((_%e210054210107%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd210051210099%_))))
                  (let ((_%lp-hd210055210111%_
                         (let ()
                           (declare (not safe))
                           (##car _%e210054210107%_)))
                        (_%lp-tl210056210114%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e210054210107%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd210055210111%_))
                        (let ((_%e210061210117%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd210055210111%_))))
                          (let ((_%hd210062210121%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e210061210117%_)))
                                (_%tl210063210124%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e210061210117%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl210063210124%_))
                                (let ((_%e210064210127%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl210063210124%_))))
                                  (let ((_%hd210065210131%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e210064210127%_)))
                                        (_%tl210066210134%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e210064210127%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl210066210134%_))
                                        (_%loop210053210095%_
                                         _%lp-tl210056210114%_
                                         (cons _%hd210065210131%_
                                               _%type210057210102%_)
                                         (cons _%hd210062210121%_
                                               _%symbol210058210104%_))
                                        (_%g210043210072%_
                                         _%g210044210076%_))))
                                (_%g210043210072%_ _%g210044210076%_))))
                        (_%g210043210072%_ _%g210044210076%_))))
                (let ((_%type210059210137%_ (reverse _%type210057210102%_))
                      (_%symbol210060210140%_
                       (reverse _%symbol210058210104%_)))
                  ((lambda (_%L210143%_ _%L210145%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L210143%_
                                _%L210145%_))
                             (let ((__tmp216439
                                    (lambda (_%g210160210164%_
                                             _%g210161210167%_
                                             _%g210162210169%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g210161210167%_
                                                        (cons _%g210160210164%_
                                                              '())))
                                            _%g210162210169%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp216439
                                '()
                                _%L210143%_
                                _%L210145%_)))))
                   _%type210059210137%_
                   _%symbol210060210140%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop210053210095%_
                                           _%target210050210089%_
                                           '()
                                           '()))
                                        (_%g210043210072%_
                                         _%g210044210076%_)))))
                              (_%g210043210072%_ _%g210044210076%_))))
                      (_%g210043210072%_ _%g210044210076%_)))))
          (_%g210042210172%_ _%$stx210039%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx210177%_)
        (let* ((_%__stx215748215749%_ _%$stx210177%_)
               (_%g210182210224%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx215748215749%_)))))
          (let ((_%__kont215751215752%_
                 (lambda (_%L210352%_ _%L210354%_ _%L210355%_ _%L210356%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L210356%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L210355%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L210354%_ '()))
                                           (cons _%L210352%_ '())))))))
                (_%__kont215753215754%_
                 (lambda (_%L210271%_ _%L210273%_ _%L210274%_ _%L210275%_)
                   (cons _%L210275%_
                         (cons _%L210274%_
                               (cons _%L210273%_
                                     (cons _%L210271%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match215787215788%_
                   (lambda (_%e210188210302%_
                            _%hd210189210306%_
                            _%tl210190210309%_
                            _%e210191210312%_
                            _%hd210192210316%_
                            _%tl210193210319%_
                            _%e210194210322%_
                            _%hd210195210326%_
                            _%tl210196210329%_
                            _%e210197210332%_
                            _%hd210198210336%_
                            _%tl210199210339%_
                            _%e210200210342%_
                            _%hd210201210346%_
                            _%tl210202210349%_)
                     (let ((_%L210352%_ _%hd210201210346%_)
                           (_%L210354%_ _%hd210198210336%_)
                           (_%L210355%_ _%hd210195210326%_)
                           (_%L210356%_ _%hd210192210316%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L210356%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L210355%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L210354%_)))
                           (_%__kont215751215752%_
                            _%L210352%_
                            _%L210354%_
                            _%L210355%_
                            _%L210356%_)
                           (let ()
                             (declare (not safe))
                             (_%g210182210224%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx215748215749%_))
                  (let ((_%e210188210302%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx215748215749%_))))
                    (let ((_%tl210190210309%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e210188210302%_)))
                          (_%hd210189210306%_
                           (let ()
                             (declare (not safe))
                             (##car _%e210188210302%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl210190210309%_))
                          (let ((_%e210191210312%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl210190210309%_))))
                            (let ((_%tl210193210319%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e210191210312%_)))
                                  (_%hd210192210316%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e210191210312%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl210193210319%_))
                                  (let ((_%e210194210322%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl210193210319%_))))
                                    (let ((_%tl210196210329%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e210194210322%_)))
                                          (_%hd210195210326%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e210194210322%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl210196210329%_))
                                          (let ((_%e210197210332%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl210196210329%_))))
                                            (let ((_%tl210199210339%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e210197210332%_)))
                                                  (_%hd210198210336%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e210197210332%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl210199210339%_))
                                                  (let ((_%e210200210342%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl210199210339%_))))
                                                    (let ((_%tl210202210349%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e210200210342%_)))
                                                          (_%hd210201210346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e210200210342%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl210202210349%_))
                                                          (_%__match215787215788%_
                                                           _%e210188210302%_
                                                           _%hd210189210306%_
                                                           _%tl210190210309%_
                                                           _%e210191210312%_
                                                           _%hd210192210316%_
                                                           _%tl210193210319%_
                                                           _%e210194210322%_
                                                           _%hd210195210326%_
                                                           _%tl210196210329%_
                                                           _%e210197210332%_
                                                           _%hd210198210336%_
                                                           _%tl210199210339%_
                                                           _%e210200210342%_
                                                           _%hd210201210346%_
                                                           _%tl210202210349%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g210182210224%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl210199210339%_))
                                                      (_%__kont215753215754%_
                                                       _%hd210198210336%_
                                                       _%hd210195210326%_
                                                       _%hd210192210316%_
                                                       _%hd210189210306%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g210182210224%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g210182210224%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g210182210224%_)))))
                          (let () (declare (not safe)) (_%g210182210224%_)))))
                  (let () (declare (not safe)) (_%g210182210224%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx210381%_)
        (let* ((_%g210385210420%_
                (lambda (_%g210386210416%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210386210416%_))))
               (_%g210384210539%_
                (lambda (_%g210386210424%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210386210424%_))
                      (let ((_%e210390210427%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g210386210424%_))))
                        (let ((_%hd210391210431%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210390210427%_)))
                              (_%tl210392210434%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210390210427%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl210392210434%_))
                              (let ((_g216440_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl210392210434%_
                                        '0))))
                                (begin
                                  (let ((_g216441_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g216440_)
                                               (##values-length _g216440_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g216441_ 2)))
                                        (error "Context expects 2 values"
                                               _g216441_)))
                                  (let ((_%target210393210437%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g216440_ 0)))
                                        (_%tl210395210440%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g216440_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl210395210440%_))
                                        (letrec ((_%loop210396210443%_
                                                  (lambda (_%hd210394210447%_
                                                           _%symbol210400210450%_
                                                           _%method210401210452%_
                                                           _%type-t210402210454%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd210394210447%_))
                                                        (let ((_%e210397210457%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd210394210447%_))))
                  (let ((_%lp-hd210398210461%_
                         (let ()
                           (declare (not safe))
                           (##car _%e210397210457%_)))
                        (_%lp-tl210399210464%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e210397210457%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd210398210461%_))
                        (let ((_%e210406210467%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd210398210461%_))))
                          (let ((_%hd210407210471%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e210406210467%_)))
                                (_%tl210408210474%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e210406210467%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl210408210474%_))
                                (let ((_%e210409210477%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl210408210474%_))))
                                  (let ((_%hd210410210481%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e210409210477%_)))
                                        (_%tl210411210484%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e210409210477%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl210411210484%_))
                                        (let ((_%e210412210487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl210411210484%_))))
                                          (let ((_%hd210413210491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e210412210487%_)))
                                                (_%tl210414210494%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e210412210487%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl210414210494%_))
                                                (_%loop210396210443%_
                                                 _%lp-tl210399210464%_
                                                 (cons _%hd210413210491%_
                                                       _%symbol210400210450%_)
                                                 (cons _%hd210410210481%_
                                                       _%method210401210452%_)
                                                 (cons _%hd210407210471%_
                                                       _%type-t210402210454%_))
                                                (_%g210385210420%_
                                                 _%g210386210424%_))))
                                        (_%g210385210420%_
                                         _%g210386210424%_))))
                                (_%g210385210420%_ _%g210386210424%_))))
                        (_%g210385210420%_ _%g210386210424%_))))
                (let ((_%symbol210403210497%_ (reverse _%symbol210400210450%_))
                      (_%method210404210500%_ (reverse _%method210401210452%_))
                      (_%type-t210405210502%_
                       (reverse _%type-t210402210454%_)))
                  ((lambda (_%L210505%_ _%L210507%_ _%L210508%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L210505%_
                                _%L210507%_
                                _%L210508%_))
                             (let ((__tmp216442
                                    (lambda (_%g210524210529%_
                                             _%g210525210532%_
                                             _%g210526210534%_
                                             _%g210527210536%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g210526210534%_
                                                        (cons _%g210525210532%_
                                                              (cons _%g210524210529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g210527210536%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp216442
                                '()
                                _%L210505%_
                                _%L210507%_
                                _%L210508%_)))))
                   _%symbol210403210497%_
                   _%method210404210500%_
                   _%type-t210405210502%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop210396210443%_
                                           _%target210393210437%_
                                           '()
                                           '()
                                           '()))
                                        (_%g210385210420%_
                                         _%g210386210424%_)))))
                              (_%g210385210420%_ _%g210386210424%_))))
                      (_%g210385210420%_ _%g210386210424%_)))))
          (_%g210384210539%_ _%$stx210381%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx210544%_)
        (let* ((_%g210548210581%_
                (lambda (_%g210549210577%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210549210577%_))))
               (_%g210547210695%_
                (lambda (_%g210549210585%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210549210585%_))
                      (let ((_%e210553210588%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g210549210585%_))))
                        (let ((_%hd210554210592%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210553210588%_)))
                              (_%tl210555210595%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210553210588%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210555210595%_))
                              (let ((_%e210556210598%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl210555210595%_))))
                                (let ((_%hd210557210602%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210556210598%_)))
                                      (_%tl210558210605%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210556210598%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl210558210605%_))
                                      (let ((_g216443_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl210558210605%_
                                                '0))))
                                        (begin
                                          (let ((_g216444_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g216443_)
                                                       (##values-length
                                                        _g216443_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g216444_ 2)))
                                                (error "Context expects 2 values"
                                                       _g216444_)))
                                          (let ((_%target210559210608%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g216443_ 0)))
                                                (_%tl210561210611%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g216443_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl210561210611%_))
                                                (letrec ((_%loop210562210614%_
                                                          (lambda (_%hd210560210618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol210566210621%_
                           _%method210567210623%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd210560210618%_))
                        (let ((_%e210563210626%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd210560210618%_))))
                          (let ((_%lp-hd210564210630%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e210563210626%_)))
                                (_%lp-tl210565210633%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e210563210626%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd210564210630%_))
                                (let ((_%e210570210636%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd210564210630%_))))
                                  (let ((_%hd210571210640%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e210570210636%_)))
                                        (_%tl210572210643%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e210570210636%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl210572210643%_))
                                        (let ((_%e210573210646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl210572210643%_))))
                                          (let ((_%hd210574210650%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e210573210646%_)))
                                                (_%tl210575210653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e210573210646%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl210575210653%_))
                                                (_%loop210562210614%_
                                                 _%lp-tl210565210633%_
                                                 (cons _%hd210574210650%_
                                                       _%symbol210566210621%_)
                                                 (cons _%hd210571210640%_
                                                       _%method210567210623%_))
                                                (_%g210548210581%_
                                                 _%g210549210585%_))))
                                        (_%g210548210581%_
                                         _%g210549210585%_))))
                                (_%g210548210581%_ _%g210549210585%_))))
                        (let ((_%symbol210568210656%_
                               (reverse _%symbol210566210621%_))
                              (_%method210569210659%_
                               (reverse _%method210567210623%_)))
                          ((lambda (_%L210662%_ _%L210664%_ _%L210665%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L210662%_
                                        _%L210664%_))
                                     (let ((__tmp216445
                                            (lambda (_%g210683210687%_
                                                     _%g210684210690%_
                                                     _%g210685210692%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L210665%_
                                                                (cons _%g210684210690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g210683210687%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g210685210692%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp216445
                                        '()
                                        _%L210662%_
                                        _%L210664%_)))))
                           _%symbol210568210656%_
                           _%method210569210659%_
                           _%hd210557210602%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop210562210614%_
                                                   _%target210559210608%_
                                                   '()
                                                   '()))
                                                (_%g210548210581%_
                                                 _%g210549210585%_)))))
                                      (_%g210548210581%_ _%g210549210585%_))))
                              (_%g210548210581%_ _%g210549210585%_))))
                      (_%g210548210581%_ _%g210549210585%_)))))
          (_%g210547210695%_ _%$stx210544%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx210700%_)
        (let* ((_%g210704210718%_
                (lambda (_%g210705210714%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210705210714%_))))
               (_%g210703210759%_
                (lambda (_%g210705210722%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210705210722%_))
                      (let ((_%e210707210725%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g210705210722%_))))
                        (let ((_%hd210708210729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210707210725%_)))
                              (_%tl210709210732%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210707210725%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210709210732%_))
                              (let ((_%e210710210735%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl210709210732%_))))
                                (let ((_%hd210711210739%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210710210735%_)))
                                      (_%tl210712210742%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210710210735%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210712210742%_))
                                      ((lambda (_%L210745%_)
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
                                                           (cons _%L210745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd210711210739%_)
                                      (_%g210704210718%_ _%g210705210722%_))))
                              (_%g210704210718%_ _%g210705210722%_))))
                      (_%g210704210718%_ _%g210705210722%_)))))
          (_%g210703210759%_ _%$stx210700%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx210763%_)
        (let* ((_%g210767210821%_
                (lambda (_%g210768210817%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210768210817%_))))
               (_%g210766211002%_
                (lambda (_%g210768210825%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210768210825%_))
                      (let ((_%e210780210828%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g210768210825%_))))
                        (let ((_%hd210781210832%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210780210828%_)))
                              (_%tl210782210835%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210780210828%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210782210835%_))
                              (let ((_%e210783210838%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl210782210835%_))))
                                (let ((_%hd210784210842%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210783210838%_)))
                                      (_%tl210785210845%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210783210838%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210785210845%_))
                                      (let ((_%e210786210848%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl210785210845%_))))
                                        (let ((_%hd210787210852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210786210848%_)))
                                              (_%tl210788210855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210786210848%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl210788210855%_))
                                              (let ((_%e210789210858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl210788210855%_))))
                                                (let ((_%hd210790210862%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e210789210858%_)))
                                                      (_%tl210791210865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e210789210858%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl210791210865%_))
                                                      (let ((_%e210792210868%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl210791210865%_))))
                (let ((_%hd210793210872%_
                       (let () (declare (not safe)) (##car _%e210792210868%_)))
                      (_%tl210794210875%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e210792210868%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl210794210875%_))
                      (let ((_%e210795210878%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl210794210875%_))))
                        (let ((_%hd210796210882%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210795210878%_)))
                              (_%tl210797210885%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210795210878%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210797210885%_))
                              (let ((_%e210798210888%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl210797210885%_))))
                                (let ((_%hd210799210892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210798210888%_)))
                                      (_%tl210800210895%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210798210888%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210800210895%_))
                                      (let ((_%e210801210898%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl210800210895%_))))
                                        (let ((_%hd210802210902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210801210898%_)))
                                              (_%tl210803210905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210801210898%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl210803210905%_))
                                              (let ((_%e210804210908%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl210803210905%_))))
                                                (let ((_%hd210805210912%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e210804210908%_)))
                                                      (_%tl210806210915%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e210804210908%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl210806210915%_))
                                                      (let ((_%e210807210918%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl210806210915%_))))
                (let ((_%hd210808210922%_
                       (let () (declare (not safe)) (##car _%e210807210918%_)))
                      (_%tl210809210925%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e210807210918%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl210809210925%_))
                      (let ((_%e210810210928%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl210809210925%_))))
                        (let ((_%hd210811210932%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210810210928%_)))
                              (_%tl210812210935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210810210928%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210812210935%_))
                              (let ((_%e210813210938%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl210812210935%_))))
                                (let ((_%hd210814210942%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210813210938%_)))
                                      (_%tl210815210945%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210813210938%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210815210945%_))
                                      ((lambda (_%L210948%_
                                                _%L210950%_
                                                _%L210951%_
                                                _%L210952%_
                                                _%L210953%_
                                                _%L210954%_
                                                _%L210955%_
                                                _%L210956%_
                                                _%L210957%_
                                                _%L210958%_
                                                _%L210959%_)
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
                                                           (cons _%L210959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L210958%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L210957%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L210956%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L210955%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L210954%_ '()))
                                           (cons _%L210953%_
                                                 (cons _%L210952%_
                                                       (cons _%L210951%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L210950%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L210948%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd210814210942%_
                                       _%hd210811210932%_
                                       _%hd210808210922%_
                                       _%hd210805210912%_
                                       _%hd210802210902%_
                                       _%hd210799210892%_
                                       _%hd210796210882%_
                                       _%hd210793210872%_
                                       _%hd210790210862%_
                                       _%hd210787210852%_
                                       _%hd210784210842%_)
                                      (_%g210767210821%_ _%g210768210825%_))))
                              (_%g210767210821%_ _%g210768210825%_))))
                      (_%g210767210821%_ _%g210768210825%_))))
              (_%g210767210821%_ _%g210768210825%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g210767210821%_
                                               _%g210768210825%_))))
                                      (_%g210767210821%_ _%g210768210825%_))))
                              (_%g210767210821%_ _%g210768210825%_))))
                      (_%g210767210821%_ _%g210768210825%_))))
              (_%g210767210821%_ _%g210768210825%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g210767210821%_
                                               _%g210768210825%_))))
                                      (_%g210767210821%_ _%g210768210825%_))))
                              (_%g210767210821%_ _%g210768210825%_))))
                      (_%g210767210821%_ _%g210768210825%_)))))
          (_%g210766211002%_ _%$stx210763%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx211006%_)
        (let* ((_%g211010211024%_
                (lambda (_%g211011211020%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211011211020%_))))
               (_%g211009211065%_
                (lambda (_%g211011211028%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211011211028%_))
                      (let ((_%e211013211031%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211011211028%_))))
                        (let ((_%hd211014211035%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211013211031%_)))
                              (_%tl211015211038%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211013211031%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211015211038%_))
                              (let ((_%e211016211041%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211015211038%_))))
                                (let ((_%hd211017211045%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211016211041%_)))
                                      (_%tl211018211048%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211016211041%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211018211048%_))
                                      ((lambda (_%L211051%_)
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
                                                           (cons _%L211051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd211017211045%_)
                                      (_%g211010211024%_ _%g211011211028%_))))
                              (_%g211010211024%_ _%g211011211028%_))))
                      (_%g211010211024%_ _%g211011211028%_)))))
          (_%g211009211065%_ _%$stx211006%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx211069%_)
        (let* ((_%g211073211087%_
                (lambda (_%g211074211083%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211074211083%_))))
               (_%g211072211128%_
                (lambda (_%g211074211091%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211074211091%_))
                      (let ((_%e211076211094%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211074211091%_))))
                        (let ((_%hd211077211098%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211076211094%_)))
                              (_%tl211078211101%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211076211094%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211078211101%_))
                              (let ((_%e211079211104%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211078211101%_))))
                                (let ((_%hd211080211108%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211079211104%_)))
                                      (_%tl211081211111%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211079211104%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211081211111%_))
                                      ((lambda (_%L211114%_)
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
                                                           (cons _%L211114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd211080211108%_)
                                      (_%g211073211087%_ _%g211074211091%_))))
                              (_%g211073211087%_ _%g211074211091%_))))
                      (_%g211073211087%_ _%g211074211091%_)))))
          (_%g211072211128%_ _%$stx211069%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx211132%_)
        (let* ((_%g211136211158%_
                (lambda (_%g211137211154%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211137211154%_))))
               (_%g211135211227%_
                (lambda (_%g211137211162%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211137211162%_))
                      (let ((_%e211141211165%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211137211162%_))))
                        (let ((_%hd211142211169%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211141211165%_)))
                              (_%tl211143211172%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211141211165%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211143211172%_))
                              (let ((_%e211144211175%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211143211172%_))))
                                (let ((_%hd211145211179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211144211175%_)))
                                      (_%tl211146211182%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211144211175%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211146211182%_))
                                      (let ((_%e211147211185%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl211146211182%_))))
                                        (let ((_%hd211148211189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211147211185%_)))
                                              (_%tl211149211192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211147211185%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl211149211192%_))
                                              (let ((_%e211150211195%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl211149211192%_))))
                                                (let ((_%hd211151211199%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e211150211195%_)))
                                                      (_%tl211152211202%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e211150211195%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211152211202%_))
                                                      ((lambda (_%L211205%_
                                                                _%L211207%_
                                                                _%L211208%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L211208%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L211207%_ '()))
                                   (cons _%L211205%_ '())))))
               _%hd211151211199%_
               _%hd211148211189%_
               _%hd211145211179%_)
              (_%g211136211158%_ _%g211137211162%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g211136211158%_
                                               _%g211137211162%_))))
                                      (_%g211136211158%_ _%g211137211162%_))))
                              (_%g211136211158%_ _%g211137211162%_))))
                      (_%g211136211158%_ _%g211137211162%_)))))
          (_%g211135211227%_ _%$stx211132%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx211231%_)
        (let* ((_%g211235211257%_
                (lambda (_%g211236211253%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211236211253%_))))
               (_%g211234211326%_
                (lambda (_%g211236211261%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211236211261%_))
                      (let ((_%e211240211264%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211236211261%_))))
                        (let ((_%hd211241211268%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211240211264%_)))
                              (_%tl211242211271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211240211264%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211242211271%_))
                              (let ((_%e211243211274%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211242211271%_))))
                                (let ((_%hd211244211278%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211243211274%_)))
                                      (_%tl211245211281%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211243211274%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211245211281%_))
                                      (let ((_%e211246211284%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl211245211281%_))))
                                        (let ((_%hd211247211288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211246211284%_)))
                                              (_%tl211248211291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211246211284%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl211248211291%_))
                                              (let ((_%e211249211294%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl211248211291%_))))
                                                (let ((_%hd211250211298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e211249211294%_)))
                                                      (_%tl211251211301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e211249211294%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211251211301%_))
                                                      ((lambda (_%L211304%_
                                                                _%L211306%_
                                                                _%L211307%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L211307%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L211306%_ '()))
                                   (cons _%L211304%_ '())))))
               _%hd211250211298%_
               _%hd211247211288%_
               _%hd211244211278%_)
              (_%g211235211257%_ _%g211236211261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g211235211257%_
                                               _%g211236211261%_))))
                                      (_%g211235211257%_ _%g211236211261%_))))
                              (_%g211235211257%_ _%g211236211261%_))))
                      (_%g211235211257%_ _%g211236211261%_)))))
          (_%g211234211326%_ _%$stx211231%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx211330%_)
        (let* ((_%g211334211348%_
                (lambda (_%g211335211344%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211335211344%_))))
               (_%g211333211389%_
                (lambda (_%g211335211352%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211335211352%_))
                      (let ((_%e211337211355%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211335211352%_))))
                        (let ((_%hd211338211359%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211337211355%_)))
                              (_%tl211339211362%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211337211355%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211339211362%_))
                              (let ((_%e211340211365%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211339211362%_))))
                                (let ((_%hd211341211369%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211340211365%_)))
                                      (_%tl211342211372%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211340211365%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211342211372%_))
                                      ((lambda (_%L211375%_)
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
                                                           (cons _%L211375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd211341211369%_)
                                      (_%g211334211348%_ _%g211335211352%_))))
                              (_%g211334211348%_ _%g211335211352%_))))
                      (_%g211334211348%_ _%g211335211352%_)))))
          (_%g211333211389%_ _%$stx211330%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx211393%_)
        (let* ((_%g211397211415%_
                (lambda (_%g211398211411%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211398211411%_))))
               (_%g211396211470%_
                (lambda (_%g211398211419%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211398211419%_))
                      (let ((_%e211401211422%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211398211419%_))))
                        (let ((_%hd211402211426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211401211422%_)))
                              (_%tl211403211429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211401211422%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211403211429%_))
                              (let ((_%e211404211432%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211403211429%_))))
                                (let ((_%hd211405211436%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211404211432%_)))
                                      (_%tl211406211439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211404211432%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211406211439%_))
                                      (let ((_%e211407211442%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl211406211439%_))))
                                        (let ((_%hd211408211446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211407211442%_)))
                                              (_%tl211409211449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211407211442%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211409211449%_))
                                              ((lambda (_%L211452%_
                                                        _%L211454%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L211454%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L211452%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd211408211446%_
                                               _%hd211405211436%_)
                                              (_%g211397211415%_
                                               _%g211398211419%_))))
                                      (_%g211397211415%_ _%g211398211419%_))))
                              (_%g211397211415%_ _%g211398211419%_))))
                      (_%g211397211415%_ _%g211398211419%_)))))
          (_%g211396211470%_ _%$stx211393%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx211474%_)
        (let* ((_%__stx215816215817%_ _%$stx211474%_)
               (_%g211481211542%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx215816215817%_)))))
          (let ((_%__kont215819215820%_
                 (lambda (_%L211780%_ _%L211782%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L211782%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L211780%_ '()))
                                     '())))))
                (_%__kont215821215822%_
                 (lambda (_%L211719%_ _%L211721%_ _%L211722%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L211722%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L211721%_ '()))
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
                                 (cons _%L211719%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont215823215824%_
                 (lambda (_%L211643%_ _%L211645%_)
                   (cons _%L211645%_ (cons _%L211643%_ (cons '#f '())))))
                (_%__kont215825215826%_
                 (lambda (_%L211593%_ _%L211595%_ _%L211596%_)
                   (cons _%L211596%_
                         (cons _%L211595%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L211593%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx215816215817%_))
                (let ((_%e211485211750%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx215816215817%_))))
                  (let ((_%tl211487211757%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211485211750%_)))
                        (_%hd211486211754%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211485211750%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl211487211757%_))
                        (let ((_%e211488211760%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl211487211757%_))))
                          (let ((_%tl211490211767%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211488211760%_)))
                                (_%hd211489211764%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211488211760%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl211490211767%_))
                                (let ((_%e211491211770%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl211490211767%_))))
                                  (let ((_%tl211493211777%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211491211770%_)))
                                        (_%hd211492211774%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211491211770%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211493211777%_))
                                        (_%__kont215819215820%_
                                         _%hd211492211774%_
                                         _%hd211489211764%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl211493211777%_))
                                            (let ((_%e211506211695%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl211493211777%_))))
                                              (let ((_%tl211508211702%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e211506211695%_)))
                                                    (_%hd211507211699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e211506211695%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd211507211699%_))
                                                    (let ((_%e211509211705%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd211507211699%_))))
                                                      (if (equal? _%e211509211705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl211508211702%_))
                      (let ((_%e211510211709%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl211508211702%_))))
                        (let ((_%tl211512211716%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211510211709%_)))
                              (_%hd211511211713%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211510211709%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl211512211716%_))
                              (_%__kont215821215822%_
                               _%hd211511211713%_
                               _%hd211492211774%_
                               _%hd211489211764%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd211492211774%_))
                                  (let ((_%e211533211579%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd211492211774%_))))
                                    (declare (not safe))
                                    (_%g211481211542%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g211481211542%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd211492211774%_))
                          (let ((_%e211533211579%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd211492211774%_))))
                            (if (equal? _%e211533211579%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl211508211702%_))
                                    (_%__kont215825215826%_
                                     _%hd211507211699%_
                                     _%hd211489211764%_
                                     _%hd211486211754%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g211481211542%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g211481211542%_))))
                          (let () (declare (not safe)) (_%g211481211542%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd211492211774%_))
                      (let ((_%e211533211579%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd211492211774%_))))
                        (if (equal? _%e211533211579%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl211508211702%_))
                                (_%__kont215825215826%_
                                 _%hd211507211699%_
                                 _%hd211489211764%_
                                 _%hd211486211754%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g211481211542%_)))
                            (let () (declare (not safe)) (_%g211481211542%_))))
                      (let () (declare (not safe)) (_%g211481211542%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd211492211774%_))
                                                        (let ((_%e211533211579%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd211492211774%_))))
                  (if (equal? _%e211533211579%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl211508211702%_))
                          (_%__kont215825215826%_
                           _%hd211507211699%_
                           _%hd211489211764%_
                           _%hd211486211754%_)
                          (let () (declare (not safe)) (_%g211481211542%_)))
                      (let () (declare (not safe)) (_%g211481211542%_))))
                (let () (declare (not safe)) (_%g211481211542%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd211492211774%_))
                                                (let ((_%e211533211579%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd211492211774%_))))
                                                  (declare (not safe))
                                                  (_%g211481211542%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211481211542%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl211490211767%_))
                                    (_%__kont215823215824%_
                                     _%hd211489211764%_
                                     _%hd211486211754%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g211481211542%_))))))
                        (let () (declare (not safe)) (_%g211481211542%_)))))
                (let () (declare (not safe)) (_%g211481211542%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx211801%_)
        (let* ((_%g211805211834%_
                (lambda (_%g211806211830%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211806211830%_))))
               (_%g211804211943%_
                (lambda (_%g211806211838%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211806211838%_))
                      (let ((_%e211808211841%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211806211838%_))))
                        (let ((_%hd211809211845%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211808211841%_)))
                              (_%tl211810211848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211808211841%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl211810211848%_))
                              (let ((_g216446_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl211810211848%_
                                        '0))))
                                (begin
                                  (let ((_g216447_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g216446_)
                                               (##values-length _g216446_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g216447_ 2)))
                                        (error "Context expects 2 values"
                                               _g216447_)))
                                  (let ((_%target211811211851%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g216446_ 0)))
                                        (_%tl211813211854%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g216446_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211813211854%_))
                                        (letrec ((_%loop211814211857%_
                                                  (lambda (_%hd211812211861%_
                                                           _%clause211818211864%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd211812211861%_))
                                                        (let ((_%e211815211867%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd211812211861%_))))
                  (let ((_%lp-hd211816211871%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211815211867%_)))
                        (_%lp-tl211817211874%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211815211867%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd211816211871%_))
                        (let ((_g216448_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd211816211871%_
                                  '0))))
                          (begin
                            (let ((_g216449_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g216448_)
                                         (##values-length _g216448_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g216449_ 2)))
                                  (error "Context expects 2 values"
                                         _g216449_)))
                            (let ((_%target211820211877%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g216448_ 0)))
                                  (_%tl211822211880%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g216448_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl211822211880%_))
                                  (letrec ((_%loop211823211883%_
                                            (lambda (_%hd211821211887%_
                                                     _%clause211827211890%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd211821211887%_))
                                                  (let ((_%e211824211893%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd211821211887%_))))
                                                    (let ((_%lp-hd211825211897%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211824211893%_)))
                                                          (_%lp-tl211826211900%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211824211893%_))))
                                                      (_%loop211823211883%_
                                                       _%lp-tl211826211900%_
                                                       (cons _%lp-hd211825211897%_
                                                             _%clause211827211890%_))))
                                                  (let ((_%clause211828211903%_
                                                         (reverse _%clause211827211890%_)))
                                                    (_%loop211814211857%_
                                                     _%lp-tl211817211874%_
                                                     (cons _%clause211828211903%_
                                                           _%clause211818211864%_)))))))
                                    (_%loop211823211883%_
                                     _%target211820211877%_
                                     '()))
                                  (_%g211805211834%_ _%g211806211838%_)))))
                        (_%g211805211834%_ _%g211806211838%_))))
                (let ((_%clause211819211907%_
                       (reverse _%clause211818211864%_)))
                  ((lambda (_%L211911%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp216450
                                              (lambda (_%g211926211931%_
                                                       _%g211927211934%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp216451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g211928211937%_ _%g211929211940%_)
                             (cons _%g211928211937%_ _%g211929211940%_))))
                      (declare (not safe))
                      (__foldr1 __tmp216451 '() _%g211926211931%_)))
              _%g211927211934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp216450
                                          '()
                                          _%L211911%_)))
                                 '())))
                   _%clause211819211907%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop211814211857%_
                                           _%target211811211851%_
                                           '()))
                                        (_%g211805211834%_
                                         _%g211806211838%_)))))
                              (_%g211805211834%_ _%g211806211838%_))))
                      (_%g211805211834%_ _%g211806211838%_)))))
          (_%g211804211943%_ _%$stx211801%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx211949%_)
        (let* ((_%g211953211971%_
                (lambda (_%g211954211967%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211954211967%_))))
               (_%g211952212026%_
                (lambda (_%g211954211975%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211954211975%_))
                      (let ((_%e211957211978%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g211954211975%_))))
                        (let ((_%hd211958211982%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211957211978%_)))
                              (_%tl211959211985%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211957211978%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211959211985%_))
                              (let ((_%e211960211988%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl211959211985%_))))
                                (let ((_%hd211961211992%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211960211988%_)))
                                      (_%tl211962211995%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211960211988%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211962211995%_))
                                      (let ((_%e211963211998%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl211962211995%_))))
                                        (let ((_%hd211964212002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211963211998%_)))
                                              (_%tl211965212005%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211963211998%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211965212005%_))
                                              ((lambda (_%L212008%_
                                                        _%L212010%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L212010%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L212008%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd211964212002%_
                                               _%hd211961211992%_)
                                              (_%g211953211971%_
                                               _%g211954211975%_))))
                                      (_%g211953211971%_ _%g211954211975%_))))
                              (_%g211953211971%_ _%g211954211975%_))))
                      (_%g211953211971%_ _%g211954211975%_)))))
          (_%g211952212026%_ _%$stx211949%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx212030%_)
        (let* ((_%g212034212052%_
                (lambda (_%g212035212048%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212035212048%_))))
               (_%g212033212107%_
                (lambda (_%g212035212056%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212035212056%_))
                      (let ((_%e212038212059%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212035212056%_))))
                        (let ((_%hd212039212063%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212038212059%_)))
                              (_%tl212040212066%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212038212059%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212040212066%_))
                              (let ((_%e212041212069%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212040212066%_))))
                                (let ((_%hd212042212073%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212041212069%_)))
                                      (_%tl212043212076%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212041212069%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212043212076%_))
                                      (let ((_%e212044212079%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212043212076%_))))
                                        (let ((_%hd212045212083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212044212079%_)))
                                              (_%tl212046212086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212044212079%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212046212086%_))
                                              ((lambda (_%L212089%_
                                                        _%L212091%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L212091%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L212089%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd212045212083%_
                                               _%hd212042212073%_)
                                              (_%g212034212052%_
                                               _%g212035212056%_))))
                                      (_%g212034212052%_ _%g212035212056%_))))
                              (_%g212034212052%_ _%g212035212056%_))))
                      (_%g212034212052%_ _%g212035212056%_)))))
          (_%g212033212107%_ _%$stx212030%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx212111%_)
        (let* ((_%g212115212144%_
                (lambda (_%g212116212140%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212116212140%_))))
               (_%g212114212244%_
                (lambda (_%g212116212148%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212116212148%_))
                      (let ((_%e212119212151%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212116212148%_))))
                        (let ((_%hd212120212155%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212119212151%_)))
                              (_%tl212121212158%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212119212151%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl212121212158%_))
                              (let ((_g216452_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl212121212158%_
                                        '0))))
                                (begin
                                  (let ((_g216453_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g216452_)
                                               (##values-length _g216452_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g216453_ 2)))
                                        (error "Context expects 2 values"
                                               _g216453_)))
                                  (let ((_%target212122212161%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g216452_ 0)))
                                        (_%tl212124212164%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g216452_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl212124212164%_))
                                        (letrec ((_%loop212125212167%_
                                                  (lambda (_%hd212123212171%_
                                                           _%rule212129212174%_
                                                           _%proc212130212176%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd212123212171%_))
                                                        (let ((_%e212126212179%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd212123212171%_))))
                  (let ((_%lp-hd212127212183%_
                         (let ()
                           (declare (not safe))
                           (##car _%e212126212179%_)))
                        (_%lp-tl212128212186%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e212126212179%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd212127212183%_))
                        (let ((_%e212133212189%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd212127212183%_))))
                          (let ((_%hd212134212193%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e212133212189%_)))
                                (_%tl212135212196%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e212133212189%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl212135212196%_))
                                (let ((_%e212136212199%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl212135212196%_))))
                                  (let ((_%hd212137212203%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e212136212199%_)))
                                        (_%tl212138212206%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e212136212199%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl212138212206%_))
                                        (_%loop212125212167%_
                                         _%lp-tl212128212186%_
                                         (cons _%hd212137212203%_
                                               _%rule212129212174%_)
                                         (cons _%hd212134212193%_
                                               _%proc212130212176%_))
                                        (_%g212115212144%_
                                         _%g212116212148%_))))
                                (_%g212115212144%_ _%g212116212148%_))))
                        (_%g212115212144%_ _%g212116212148%_))))
                (let ((_%rule212131212209%_ (reverse _%rule212129212174%_))
                      (_%proc212132212212%_ (reverse _%proc212130212176%_)))
                  ((lambda (_%L212215%_ _%L212217%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L212215%_
                                _%L212217%_))
                             (let ((__tmp216454
                                    (lambda (_%g212232212236%_
                                             _%g212233212239%_
                                             _%g212234212241%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g212233212239%_
                                                        (cons _%g212232212236%_
                                                              '())))
                                            _%g212234212241%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp216454
                                '()
                                _%L212215%_
                                _%L212217%_)))))
                   _%rule212131212209%_
                   _%proc212132212212%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop212125212167%_
                                           _%target212122212161%_
                                           '()
                                           '()))
                                        (_%g212115212144%_
                                         _%g212116212148%_)))))
                              (_%g212115212144%_ _%g212116212148%_))))
                      (_%g212115212144%_ _%g212116212148%_)))))
          (_%g212114212244%_ _%$stx212111%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx212249%_)
        (let* ((_%g212253212271%_
                (lambda (_%g212254212267%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212254212267%_))))
               (_%g212252212326%_
                (lambda (_%g212254212275%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212254212275%_))
                      (let ((_%e212257212278%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212254212275%_))))
                        (let ((_%hd212258212282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212257212278%_)))
                              (_%tl212259212285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212257212278%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212259212285%_))
                              (let ((_%e212260212288%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212259212285%_))))
                                (let ((_%hd212261212292%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212260212288%_)))
                                      (_%tl212262212295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212260212288%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212262212295%_))
                                      (let ((_%e212263212298%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl212262212295%_))))
                                        (let ((_%hd212264212302%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212263212298%_)))
                                              (_%tl212265212305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212263212298%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212265212305%_))
                                              ((lambda (_%L212308%_
                                                        _%L212310%_)
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
                                                   (cons _%L212310%_ '()))
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
                 (cons _%L212308%_ '())))
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
                                   (cons _%L212310%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd212264212302%_
                                               _%hd212261212292%_)
                                              (_%g212253212271%_
                                               _%g212254212275%_))))
                                      (_%g212253212271%_ _%g212254212275%_))))
                              (_%g212253212271%_ _%g212254212275%_))))
                      (_%g212253212271%_ _%g212254212275%_)))))
          (_%g212252212326%_ _%$stx212249%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx212330%_)
        (let* ((_%__stx215934215935%_ _%$stx212330%_)
               (_%g212335212360%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx215934215935%_)))))
          (let ((_%__kont215937215938%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont215939215940%_
                 (lambda (_%L212407%_ _%L212409%_ _%L212410%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L212410%_ (cons _%L212409%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L212407%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx215934215935%_))
                (let ((_%e212337212436%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx215934215935%_))))
                  (let ((_%tl212339212443%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e212337212436%_)))
                        (_%hd212338212440%_
                         (let ()
                           (declare (not safe))
                           (##car _%e212337212436%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl212339212443%_))
                        (_%__kont215937215938%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl212339212443%_))
                            (let ((_%e212346212377%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl212339212443%_))))
                              (let ((_%tl212348212384%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e212346212377%_)))
                                    (_%hd212347212381%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e212346212377%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd212347212381%_))
                                    (let ((_%e212349212387%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd212347212381%_))))
                                      (let ((_%tl212351212394%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e212349212387%_)))
                                            (_%hd212350212391%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e212349212387%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl212351212394%_))
                                            (let ((_%e212352212397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl212351212394%_))))
                                              (let ((_%tl212354212404%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e212352212397%_)))
                                                    (_%hd212353212401%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e212352212397%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl212354212404%_))
                                                    (_%__kont215939215940%_
                                                     _%tl212348212384%_
                                                     _%hd212353212401%_
                                                     _%hd212350212391%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g212335212360%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g212335212360%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g212335212360%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g212335212360%_))))))
                (let () (declare (not safe)) (_%g212335212360%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx212454%_)
        (let* ((_%__stx215978215979%_ _%$stx212454%_)
               (_%g212459212490%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx215978215979%_)))))
          (let ((_%__kont215981215982%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont215983215984%_
                 (lambda (_%L212557%_ _%L212559%_ _%L212560%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L212560%_
                                           (let ((__tmp216455
                                                  (lambda (_%g212580212583%_
                                                           _%g212581212586%_)
                                                    (cons _%g212580212583%_
                                                          _%g212581212586%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp216455
                                              '()
                                              _%L212559%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L212557%_)
                                     '()))))))
            (let ((_%__match216021216022%_
                   (lambda (_%e212467212497%_
                            _%hd212468212501%_
                            _%tl212469212504%_
                            _%e212470212507%_
                            _%hd212471212511%_
                            _%tl212472212514%_
                            _%e212473212517%_
                            _%hd212474212521%_
                            _%tl212475212524%_
                            _%__splice215985215986%_
                            _%target212476212527%_
                            _%tl212478212530%_)
                     (letrec ((_%loop212479212533%_
                               (lambda (_%hd212477212537%_ _%sig212483212540%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd212477212537%_))
                                     (let ((_%e212480212543%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd212477212537%_))))
                                       (let ((_%lp-tl212482212550%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e212480212543%_)))
                                             (_%lp-hd212481212547%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e212480212543%_))))
                                         (_%loop212479212533%_
                                          _%lp-tl212482212550%_
                                          (cons _%lp-hd212481212547%_
                                                _%sig212483212540%_))))
                                     (let ((_%sig212484212553%_
                                            (reverse _%sig212483212540%_)))
                                       (_%__kont215983215984%_
                                        _%tl212472212514%_
                                        _%sig212484212553%_
                                        _%hd212474212521%_))))))
                       (_%loop212479212533%_ _%target212476212527%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx215978215979%_))
                  (let ((_%e212461212596%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx215978215979%_))))
                    (let ((_%tl212463212603%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e212461212596%_)))
                          (_%hd212462212600%_
                           (let ()
                             (declare (not safe))
                             (##car _%e212461212596%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl212463212603%_))
                          (_%__kont215981215982%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212463212603%_))
                              (let ((_%e212470212507%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212463212603%_))))
                                (let ((_%tl212472212514%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212470212507%_)))
                                      (_%hd212471212511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212470212507%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd212471212511%_))
                                      (let ((_%e212473212517%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd212471212511%_))))
                                        (let ((_%tl212475212524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212473212517%_)))
                                              (_%hd212474212521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212473212517%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl212475212524%_))
                                              (let ((_%__splice215985215986%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl212475212524%_
                                                        '0))))
                                                (let ((_%tl212478212530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice215985215986%_
                                                          '1)))
                                                      (_%target212476212527%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice215985215986%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl212478212530%_))
                                                      (_%__match216021216022%_
                                                       _%e212461212596%_
                                                       _%hd212462212600%_
                                                       _%tl212463212603%_
                                                       _%e212470212507%_
                                                       _%hd212471212511%_
                                                       _%tl212472212514%_
                                                       _%e212473212517%_
                                                       _%hd212474212521%_
                                                       _%tl212475212524%_
                                                       _%__splice215985215986%_
                                                       _%target212476212527%_
                                                       _%tl212478212530%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g212459212490%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g212459212490%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g212459212490%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g212459212490%_))))))
                  (let () (declare (not safe)) (_%g212459212490%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx212615%_)
        (let* ((_%__stx216024216025%_ _%$stx212615%_)
               (_%g212620212667%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx216024216025%_)))))
          (let ((_%__kont216027216028%_
                 (lambda (_%L212829%_ _%L212831%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L212831%_
                               (let ((__tmp216456
                                      (lambda (_%g212851212854%_
                                               _%g212852212857%_)
                                        (cons _%g212851212854%_
                                              _%g212852212857%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp216456 '() _%L212829%_))))))
                (_%__kont216031216032%_
                 (lambda (_%L212724%_ _%L212726%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L212726%_
                               (let ((__tmp216457
                                      (lambda (_%g212743212746%_
                                               _%g212744212749%_)
                                        (cons _%g212743212746%_
                                              _%g212744212749%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp216457 '() _%L212724%_)))))))
            (let* ((_%__match216091216092%_
                    (lambda (_%e212647212674%_
                             _%hd212648212678%_
                             _%tl212649212681%_
                             _%e212650212684%_
                             _%hd212651212688%_
                             _%tl212652212691%_
                             _%__splice216033216034%_
                             _%target212653212694%_
                             _%tl212655212697%_)
                      (letrec ((_%loop212656212700%_
                                (lambda (_%hd212654212704%_
                                         _%sig212660212707%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd212654212704%_))
                                      (let ((_%e212657212710%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd212654212704%_))))
                                        (let ((_%lp-tl212659212717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212657212710%_)))
                                              (_%lp-hd212658212714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212657212710%_))))
                                          (_%loop212656212700%_
                                           _%lp-tl212659212717%_
                                           (cons _%lp-hd212658212714%_
                                                 _%sig212660212707%_))))
                                      (let ((_%sig212661212720%_
                                             (reverse _%sig212660212707%_)))
                                        (_%__kont216031216032%_
                                         _%sig212661212720%_
                                         _%hd212651212688%_))))))
                        (_%loop212656212700%_ _%target212653212694%_ '()))))
                   (_%__match216083216084%_
                    (lambda (_%e212647212674%_
                             _%hd212648212678%_
                             _%tl212649212681%_
                             _%e212650212684%_
                             _%hd212651212688%_
                             _%tl212652212691%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl212652212691%_))
                          (let ((_%__splice216033216034%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl212652212691%_
                                    '0))))
                            (let ((_%tl212655212697%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice216033216034%_
                                      '1)))
                                  (_%target212653212694%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice216033216034%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl212655212697%_))
                                  (_%__match216091216092%_
                                   _%e212647212674%_
                                   _%hd212648212678%_
                                   _%tl212649212681%_
                                   _%e212650212684%_
                                   _%hd212651212688%_
                                   _%tl212652212691%_
                                   _%__splice216033216034%_
                                   _%target212653212694%_
                                   _%tl212655212697%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g212620212667%_)))))
                          (let () (declare (not safe)) (_%g212620212667%_)))))
                   (_%__match216071216072%_
                    (lambda (_%e212624212759%_
                             _%hd212625212763%_
                             _%tl212626212766%_
                             _%e212627212769%_
                             _%hd212628212773%_
                             _%tl212629212776%_
                             _%e212630212779%_
                             _%hd212631212783%_
                             _%tl212632212786%_
                             _%e212633212789%_
                             _%hd212634212793%_
                             _%tl212635212796%_
                             _%__splice216029216030%_
                             _%target212636212799%_
                             _%tl212638212802%_)
                      (letrec ((_%loop212639212805%_
                                (lambda (_%hd212637212809%_
                                         _%sig212643212812%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd212637212809%_))
                                      (let ((_%e212640212815%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd212637212809%_))))
                                        (let ((_%lp-tl212642212822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212640212815%_)))
                                              (_%lp-hd212641212819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212640212815%_))))
                                          (_%loop212639212805%_
                                           _%lp-tl212642212822%_
                                           (cons _%lp-hd212641212819%_
                                                 _%sig212643212812%_))))
                                      (let ((_%sig212644212825%_
                                             (reverse _%sig212643212812%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl212632212786%_))
                                            (_%__kont216027216028%_
                                             _%sig212644212825%_
                                             _%hd212628212773%_)
                                            (_%__match216083216084%_
                                             _%e212624212759%_
                                             _%hd212625212763%_
                                             _%tl212626212766%_
                                             _%e212627212769%_
                                             _%hd212628212773%_
                                             _%tl212629212776%_)))))))
                        (_%loop212639212805%_ _%target212636212799%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx216024216025%_))
                  (let ((_%e212624212759%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx216024216025%_))))
                    (let ((_%tl212626212766%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e212624212759%_)))
                          (_%hd212625212763%_
                           (let ()
                             (declare (not safe))
                             (##car _%e212624212759%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl212626212766%_))
                          (let ((_%e212627212769%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl212626212766%_))))
                            (let ((_%tl212629212776%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e212627212769%_)))
                                  (_%hd212628212773%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e212627212769%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl212629212776%_))
                                  (let ((_%e212630212779%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl212629212776%_))))
                                    (let ((_%tl212632212786%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e212630212779%_)))
                                          (_%hd212631212783%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e212630212779%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd212631212783%_))
                                          (let ((_%e212633212789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd212631212783%_))))
                                            (let ((_%tl212635212796%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e212633212789%_)))
                                                  (_%hd212634212793%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e212633212789%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd212634212793%_))
                                                  (if (let ((__tmp216458
                                                             |gxc[1]#_g216459_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp216458
                                                         _%hd212634212793%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl212635212796%_))
                                                          (let ((_%__splice216029216030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl212635212796%_
                            '0))))
                    (let ((_%tl212638212802%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice216029216030%_ '1)))
                          (_%target212636212799%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice216029216030%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl212638212802%_))
                          (_%__match216071216072%_
                           _%e212624212759%_
                           _%hd212625212763%_
                           _%tl212626212766%_
                           _%e212627212769%_
                           _%hd212628212773%_
                           _%tl212629212776%_
                           _%e212630212779%_
                           _%hd212631212783%_
                           _%tl212632212786%_
                           _%e212633212789%_
                           _%hd212634212793%_
                           _%tl212635212796%_
                           _%__splice216029216030%_
                           _%target212636212799%_
                           _%tl212638212802%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl212629212776%_))
                              (let ((_%__splice216033216034%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl212629212776%_
                                        '0))))
                                (let ((_%tl212655212697%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice216033216034%_
                                          '1)))
                                      (_%target212653212694%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice216033216034%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212655212697%_))
                                      (_%__match216091216092%_
                                       _%e212624212759%_
                                       _%hd212625212763%_
                                       _%tl212626212766%_
                                       _%e212627212769%_
                                       _%hd212628212773%_
                                       _%tl212629212776%_
                                       _%__splice216033216034%_
                                       _%target212653212694%_
                                       _%tl212655212697%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g212620212667%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g212620212667%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl212629212776%_))
                      (let ((_%__splice216033216034%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl212629212776%_
                                '0))))
                        (let ((_%tl212655212697%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice216033216034%_ '1)))
                              (_%target212653212694%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice216033216034%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl212655212697%_))
                              (_%__match216091216092%_
                               _%e212624212759%_
                               _%hd212625212763%_
                               _%tl212626212766%_
                               _%e212627212769%_
                               _%hd212628212773%_
                               _%tl212629212776%_
                               _%__splice216033216034%_
                               _%target212653212694%_
                               _%tl212655212697%_)
                              (let ()
                                (declare (not safe))
                                (_%g212620212667%_)))))
                      (let () (declare (not safe)) (_%g212620212667%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl212629212776%_))
                  (let ((_%__splice216033216034%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl212629212776%_
                            '0))))
                    (let ((_%tl212655212697%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice216033216034%_ '1)))
                          (_%target212653212694%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice216033216034%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl212655212697%_))
                          (_%__match216091216092%_
                           _%e212624212759%_
                           _%hd212625212763%_
                           _%tl212626212766%_
                           _%e212627212769%_
                           _%hd212628212773%_
                           _%tl212629212776%_
                           _%__splice216033216034%_
                           _%target212653212694%_
                           _%tl212655212697%_)
                          (let () (declare (not safe)) (_%g212620212667%_)))))
                  (let () (declare (not safe)) (_%g212620212667%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl212629212776%_))
                                                      (let ((_%__splice216033216034%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl212629212776%_
                        '0))))
                (let ((_%tl212655212697%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice216033216034%_ '1)))
                      (_%target212653212694%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice216033216034%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl212655212697%_))
                      (_%__match216091216092%_
                       _%e212624212759%_
                       _%hd212625212763%_
                       _%tl212626212766%_
                       _%e212627212769%_
                       _%hd212628212773%_
                       _%tl212629212776%_
                       _%__splice216033216034%_
                       _%target212653212694%_
                       _%tl212655212697%_)
                      (let () (declare (not safe)) (_%g212620212667%_)))))
              (let () (declare (not safe)) (_%g212620212667%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl212629212776%_))
                                              (let ((_%__splice216033216034%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl212629212776%_
                                                        '0))))
                                                (let ((_%tl212655212697%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice216033216034%_
                                                          '1)))
                                                      (_%target212653212694%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice216033216034%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl212655212697%_))
                                                      (_%__match216091216092%_
                                                       _%e212624212759%_
                                                       _%hd212625212763%_
                                                       _%tl212626212766%_
                                                       _%e212627212769%_
                                                       _%hd212628212773%_
                                                       _%tl212629212776%_
                                                       _%__splice216033216034%_
                                                       _%target212653212694%_
                                                       _%tl212655212697%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g212620212667%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g212620212667%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl212629212776%_))
                                      (let ((_%__splice216033216034%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl212629212776%_
                                                '0))))
                                        (let ((_%tl212655212697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice216033216034%_
                                                  '1)))
                                              (_%target212653212694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice216033216034%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212655212697%_))
                                              (_%__match216091216092%_
                                               _%e212624212759%_
                                               _%hd212625212763%_
                                               _%tl212626212766%_
                                               _%e212627212769%_
                                               _%hd212628212773%_
                                               _%tl212629212776%_
                                               _%__splice216033216034%_
                                               _%target212653212694%_
                                               _%tl212655212697%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g212620212667%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g212620212667%_))))))
                          (let () (declare (not safe)) (_%g212620212667%_)))))
                  (let () (declare (not safe)) (_%g212620212667%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx214014%_ _%id214016%_)
        (let ((_%proc214020%_
               (let ((__tmp216460
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id214016%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp216460))))
          (if (procedure? _%proc214020%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx214014%_
                 _%id214016%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx214005%_ _%id214007%_)
        (let ((_%klass214011%_
               (let ((__tmp216461
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id214007%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp216461))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass214011%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx214005%_
                 _%id214007%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx213255%_ _%proc213257%_ _%sig213258%_)
        (letrec ((_%signature-arity213260%_
                  (lambda (_%args213937%_)
                    (let _%loop213940%_ ((_%rest213943%_ _%args213937%_)
                                         (_%count213945%_ '0))
                      (let* ((_%rest213946213957%_ _%rest213943%_)
                             (_%E213950213963%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest213946213957%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K213953213994%_
                               (lambda (_%rest213991%_)
                                 (_%loop213940%_
                                  _%rest213991%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count213945%_ '1)))))
                              (_%K213952213983%_ (lambda () _%count213945%_))
                              (_%K213951213971%_
                               (lambda () (cons _%count213945%_ '()))))
                          (let ((_%try-match213948213987%_
                                 (lambda ()
                                   (if (null? _%rest213946213957%_)
                                       (_%K213952213983%_)
                                       (_%K213951213971%_)))))
                            (if (pair? _%rest213946213957%_)
                                (let* ((_%tl213955213998%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest213946213957%_)))
                                       (_%rest214002%_ _%tl213955213998%_))
                                  (_%K213953213994%_ _%rest214002%_))
                                (_%try-match213948213987%_))))))))
                 (_%make-signature213262%_
                  (lambda (_%args213819%_
                           _%return213821%_
                           _%effect213822%_
                           _%unchecked213823%_)
                    (let ((__tmp216462
                           (lambda (_%g213824213826%_)
                             (|gxc[1]#verify-class!|
                              _%ctx213255%_
                              _%g213824213826%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp216462 _%args213819%_))
                    (|gxc[1]#verify-class!| _%ctx213255%_ _%return213821%_)
                    (if _%unchecked213823%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx213255%_
                         _%unchecked213823%_)
                        '#!void)
                    (let ((_%arity213830%_
                           (_%signature-arity213260%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args213819%_)))))
                      (if _%effect213822%_
                          (let ((_%effect213833%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect213822%_))))
                            (if (and (list? _%effect213833%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect213833%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx213255%_
                                   _%proc213257%_
                                   _%effect213833%_))))
                          '#!void)
                      (cons _%arity213830%_
                            (cons (let* ((_%g213836213859%_
                                          (lambda (_%g213837213855%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g213837213855%_))))
                                         (_%g213835213933%_
                                          (lambda (_%g213837213863%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g213837213863%_))
                                                (let ((_%e213842213866%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g213837213863%_))))
                                                  (let ((_%hd213843213870%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e213842213866%_)))
                                                        (_%tl213844213873%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e213842213866%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl213844213873%_))
                                                        (let ((_%e213845213876%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl213844213873%_))))
                  (let ((_%hd213846213880%_
                         (let ()
                           (declare (not safe))
                           (##car _%e213845213876%_)))
                        (_%tl213847213883%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e213845213876%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl213847213883%_))
                        (let ((_%e213848213886%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl213847213883%_))))
                          (let ((_%hd213849213890%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e213848213886%_)))
                                (_%tl213850213893%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e213848213886%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl213850213893%_))
                                (let ((_%e213851213896%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl213850213893%_))))
                                  (let ((_%hd213852213900%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e213851213896%_)))
                                        (_%tl213853213903%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e213851213896%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl213853213903%_))
                                        ((lambda (_%L213906%_
                                                  _%L213908%_
                                                  _%L213909%_
                                                  _%L213910%_)
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
                           (cons _%L213910%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L213909%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L213908%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L213906%_ '()))
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
                                         _%hd213852213900%_
                                         _%hd213849213890%_
                                         _%hd213846213880%_
                                         _%hd213843213870%_)
                                        (_%g213836213859%_
                                         _%g213837213863%_))))
                                (_%g213836213859%_ _%g213837213863%_))))
                        (_%g213836213859%_ _%g213837213863%_))))
                (_%g213836213859%_ _%g213837213863%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g213836213859%_
                                                 _%g213837213863%_)))))
                                    (_%g213835213933%_
                                     (list _%args213819%_
                                           _%return213821%_
                                           _%effect213822%_
                                           _%unchecked213823%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx213255%_ _%proc213257%_)
          (let* ((_%__stx216102216103%_ _%sig213258%_)
                 (_%g213269213372%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx216102216103%_)))))
            (let ((_%__kont216105216106%_
                   (lambda (_%L213800%_ _%L213802%_)
                     (_%make-signature213262%_
                      _%L213802%_
                      _%L213800%_
                      '#f
                      '#f)))
                  (_%__kont216107216108%_
                   (lambda (_%L213751%_ _%L213753%_ _%L213754%_)
                     (_%make-signature213262%_
                      _%L213754%_
                      _%L213753%_
                      _%L213751%_
                      '#f)))
                  (_%__kont216109216110%_
                   (lambda (_%L213675%_ _%L213677%_ _%L213678%_)
                     (_%make-signature213262%_
                      _%L213678%_
                      _%L213677%_
                      _%L213675%_
                      (let ((__tmp216463
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc213257%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp216463)))))
                  (_%__kont216111216112%_
                   (lambda (_%L213581%_ _%L213583%_ _%L213584%_ _%L213585%_)
                     (_%make-signature213262%_
                      _%L213585%_
                      _%L213584%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L213581%_)))))
                  (_%__kont216113216114%_
                   (lambda (_%L213488%_ _%L213490%_)
                     (_%make-signature213262%_
                      _%L213490%_
                      _%L213488%_
                      '#f
                      (let ((__tmp216464
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc213257%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp216464)))))
                  (_%__kont216115216116%_
                   (lambda (_%L213423%_ _%L213425%_ _%L213426%_)
                     (_%make-signature213262%_
                      _%L213426%_
                      _%L213425%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L213423%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx216102216103%_))
                  (let ((_%e213273213780%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx216102216103%_))))
                    (let ((_%tl213275213787%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e213273213780%_)))
                          (_%hd213274213784%_
                           (let ()
                             (declare (not safe))
                             (##car _%e213273213780%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl213275213787%_))
                          (let ((_%e213276213790%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl213275213787%_))))
                            (let ((_%tl213278213797%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e213276213790%_)))
                                  (_%hd213277213794%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e213276213790%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl213278213797%_))
                                  (_%__kont216105216106%_
                                   _%hd213277213794%_
                                   _%hd213274213784%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl213278213797%_))
                                      (let ((_%e213288213727%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl213278213797%_))))
                                        (let ((_%tl213290213734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e213288213727%_)))
                                              (_%hd213289213731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e213288213727%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd213289213731%_))
                                              (let ((_%e213291213737%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd213289213731%_))))
                                                (if (equal? _%e213291213737%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl213290213734%_))
                                                        (let ((_%e213292213741%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl213290213734%_))))
                  (let ((_%tl213294213748%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e213292213741%_)))
                        (_%hd213293213745%_
                         (let ()
                           (declare (not safe))
                           (##car _%e213292213741%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl213294213748%_))
                        (_%__kont216107216108%_
                         _%hd213293213745%_
                         _%hd213277213794%_
                         _%hd213274213784%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl213294213748%_))
                            (let ((_%e213311213661%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl213294213748%_))))
                              (let ((_%tl213313213668%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e213311213661%_)))
                                    (_%hd213312213665%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e213311213661%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd213312213665%_))
                                    (let ((_%e213314213671%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd213312213665%_))))
                                      (if (equal? _%e213314213671%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl213313213668%_))
                                              (_%__kont216109216110%_
                                               _%hd213293213745%_
                                               _%hd213277213794%_
                                               _%hd213274213784%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl213313213668%_))
                                                  (let ((_%e213336213571%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl213313213668%_))))
                                                    (let ((_%tl213338213578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e213336213571%_)))
                                                          (_%hd213337213575%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e213336213571%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl213338213578%_))
                                                          (_%__kont216111216112%_
                                                           _%hd213337213575%_
                                                           _%hd213293213745%_
                                                           _%hd213277213794%_
                                                           _%hd213274213784%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g213269213372%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g213269213372%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g213269213372%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g213269213372%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g213269213372%_))))))
                (let () (declare (not safe)) (_%g213269213372%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e213291213737%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl213290213734%_))
                                                            (_%__kont216113216114%_
                                                             _%hd213277213794%_
                                                             _%hd213274213784%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl213290213734%_))
                        (let ((_%e213364213413%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl213290213734%_))))
                          (let ((_%tl213366213420%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e213364213413%_)))
                                (_%hd213365213417%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e213364213413%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl213366213420%_))
                                (_%__kont216115216116%_
                                 _%hd213365213417%_
                                 _%hd213277213794%_
                                 _%hd213274213784%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g213269213372%_)))))
                        (let () (declare (not safe)) (_%g213269213372%_))))
                (let () (declare (not safe)) (_%g213269213372%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g213269213372%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g213269213372%_))))))
                          (let () (declare (not safe)) (_%g213269213372%_)))))
                  (let () (declare (not safe)) (_%g213269213372%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig212866%_)
        (let* ((_%g212869212949%_
                (lambda (_%g212870212945%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212870212945%_))))
               (_%g212868213251%_
                (lambda (_%g212870212953%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212870212953%_))
                      (let ((_%e212876212956%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g212870212953%_))))
                        (let ((_%hd212877212960%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212876212956%_)))
                              (_%tl212878212963%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212876212956%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212878212963%_))
                              (let ((_%e212879212966%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl212878212963%_))))
                                (let ((_%hd212880212970%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212879212966%_)))
                                      (_%tl212881212973%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212879212966%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd212880212970%_))
                                      (let ((_%e212882212976%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd212880212970%_))))
                                        (if (equal? _%e212882212976%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl212881212973%_))
                                                (let ((_%e212883212980%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl212881212973%_))))
                                                  (let ((_%hd212884212984%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e212883212980%_)))
                                                        (_%tl212885212987%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e212883212980%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd212884212984%_))
                                                        (let ((_%e212886212990%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd212884212984%_))))
                  (let ((_%hd212887212994%_
                         (let ()
                           (declare (not safe))
                           (##car _%e212886212990%_)))
                        (_%tl212888212997%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e212886212990%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd212887212994%_))
                        (if (let ((__tmp216465 |gxc[1]#_g216466_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp216465
                               _%hd212887212994%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl212888212997%_))
                                (let ((_%e212889213000%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl212888212997%_))))
                                  (let ((_%hd212890213004%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e212889213000%_)))
                                        (_%tl212891213007%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e212889213000%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl212891213007%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl212885212987%_))
                                            (let ((_%e212892213010%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl212885212987%_))))
                                              (let ((_%hd212893213014%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e212892213010%_)))
                                                    (_%tl212894213017%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e212892213010%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd212893213014%_))
                                                    (let ((_%e212895213020%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd212893213014%_))))
                                                      (if (equal? _%e212895213020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl212894213017%_))
                      (let ((_%e212896213024%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl212894213017%_))))
                        (let ((_%hd212897213028%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212896213024%_)))
                              (_%tl212898213031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212896213024%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd212897213028%_))
                              (let ((_%e212899213034%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd212897213028%_))))
                                (let ((_%hd212900213038%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212899213034%_)))
                                      (_%tl212901213041%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212899213034%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd212900213038%_))
                                      (if (let ((__tmp216467
                                                 |gxc[1]#_g216468_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp216467
                                             _%hd212900213038%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl212901213041%_))
                                              (let ((_%e212902213044%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl212901213041%_))))
                                                (let ((_%hd212903213048%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212902213044%_)))
                                                      (_%tl212904213051%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212902213044%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl212904213051%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl212898213031%_))
                                                          (let ((_%e212905213054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl212898213031%_))))
                    (let ((_%hd212906213058%_
                           (let ()
                             (declare (not safe))
                             (##car _%e212905213054%_)))
                          (_%tl212907213061%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e212905213054%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd212906213058%_))
                          (let ((_%e212908213064%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd212906213058%_))))
                            (if (equal? _%e212908213064%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl212907213061%_))
                                    (let ((_%e212909213068%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl212907213061%_))))
                                      (let ((_%hd212910213072%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e212909213068%_)))
                                            (_%tl212911213075%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e212909213068%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd212910213072%_))
                                            (let ((_%e212912213078%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd212910213072%_))))
                                              (let ((_%hd212913213082%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e212912213078%_)))
                                                    (_%tl212914213085%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e212912213078%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd212913213082%_))
                                                    (if (let ((__tmp216469
                                                               |gxc[1]#_g216470_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp216469
                                                           _%hd212913213082%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl212914213085%_))
                                                            (let ((_%e212915213088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl212914213085%_))))
                      (let ((_%hd212916213092%_
                             (let ()
                               (declare (not safe))
                               (##car _%e212915213088%_)))
                            (_%tl212917213095%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e212915213088%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl212917213095%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl212911213075%_))
                                (let ((_%e212918213098%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl212911213075%_))))
                                  (let ((_%hd212919213102%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e212918213098%_)))
                                        (_%tl212920213105%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e212918213098%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd212919213102%_))
                                        (let ((_%e212921213108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd212919213102%_))))
                                          (if (equal? _%e212921213108%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl212920213105%_))
                                                  (let ((_%e212922213112%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl212920213105%_))))
                                                    (let ((_%hd212923213116%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e212922213112%_)))
                                                          (_%tl212924213119%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e212922213112%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd212923213116%_))
                                                          (let ((_%e212925213122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd212923213116%_))))
                    (let ((_%hd212926213126%_
                           (let ()
                             (declare (not safe))
                             (##car _%e212925213122%_)))
                          (_%tl212927213129%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e212925213122%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd212926213126%_))
                          (if (let ((__tmp216471 |gxc[1]#_g216472_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp216471
                                 _%hd212926213126%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl212927213129%_))
                                  (let ((_%e212928213132%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl212927213129%_))))
                                    (let ((_%hd212929213136%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e212928213132%_)))
                                          (_%tl212930213139%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e212928213132%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl212930213139%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl212924213119%_))
                                              (let ((_%e212931213142%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl212924213119%_))))
                                                (let ((_%hd212932213146%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212931213142%_)))
                                                      (_%tl212933213149%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212931213142%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd212932213146%_))
                                                      (let ((_%e212934213152%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd212932213146%_))))
                (if (equal? _%e212934213152%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl212933213149%_))
                        (let ((_%e212935213156%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl212933213149%_))))
                          (let ((_%hd212936213160%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e212935213156%_)))
                                (_%tl212937213163%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e212935213156%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd212936213160%_))
                                (let ((_%e212938213166%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd212936213160%_))))
                                  (let ((_%hd212939213170%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e212938213166%_)))
                                        (_%tl212940213173%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e212938213166%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd212939213170%_))
                                        (if (let ((__tmp216473
                                                   |gxc[1]#_g216474_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp216473
                                               _%hd212939213170%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl212940213173%_))
                                                (let ((_%e212941213176%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl212940213173%_))))
                                                  (let ((_%hd212942213180%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e212941213176%_)))
                                                        (_%tl212943213183%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e212941213176%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl212943213183%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl212937213163%_))
                                                            ((lambda (_%L213186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L213188%_
                              _%L213189%_
                              _%L213190%_
                              _%L213191%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L213188%_))
                           (cons _%L213188%_
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
                       (cons _%L213190%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L213186%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd212942213180%_
                     _%hd212929213136%_
                     _%hd212916213092%_
                     _%hd212903213048%_
                     _%hd212890213004%_)
                    (_%g212869212949%_ _%g212870212953%_))
                (_%g212869212949%_ _%g212870212953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g212869212949%_
                                                 _%g212870212953%_))
                                            (_%g212869212949%_
                                             _%g212870212953%_))
                                        (_%g212869212949%_
                                         _%g212870212953%_))))
                                (_%g212869212949%_ _%g212870212953%_))))
                        (_%g212869212949%_ _%g212870212953%_))
                    (_%g212869212949%_ _%g212870212953%_)))
              (_%g212869212949%_ _%g212870212953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g212869212949%_
                                               _%g212870212953%_))
                                          (_%g212869212949%_
                                           _%g212870212953%_))))
                                  (_%g212869212949%_ _%g212870212953%_))
                              (_%g212869212949%_ _%g212870212953%_))
                          (_%g212869212949%_ _%g212870212953%_))))
                  (_%g212869212949%_ _%g212870212953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g212869212949%_
                                                   _%g212870212953%_))
                                              (_%g212869212949%_
                                               _%g212870212953%_)))
                                        (_%g212869212949%_
                                         _%g212870212953%_))))
                                (_%g212869212949%_ _%g212870212953%_))
                            (_%g212869212949%_ _%g212870212953%_))))
                    (_%g212869212949%_ _%g212870212953%_))
                (_%g212869212949%_ _%g212870212953%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g212869212949%_
                                                     _%g212870212953%_))))
                                            (_%g212869212949%_
                                             _%g212870212953%_))))
                                    (_%g212869212949%_ _%g212870212953%_))
                                (_%g212869212949%_ _%g212870212953%_)))
                          (_%g212869212949%_ _%g212870212953%_))))
                  (_%g212869212949%_ _%g212870212953%_))
              (_%g212869212949%_ _%g212870212953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g212869212949%_
                                               _%g212870212953%_))
                                          (_%g212869212949%_
                                           _%g212870212953%_))
                                      (_%g212869212949%_ _%g212870212953%_))))
                              (_%g212869212949%_ _%g212870212953%_))))
                      (_%g212869212949%_ _%g212870212953%_))
                  (_%g212869212949%_ _%g212870212953%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g212869212949%_
                                                     _%g212870212953%_))))
                                            (_%g212869212949%_
                                             _%g212870212953%_))
                                        (_%g212869212949%_
                                         _%g212870212953%_))))
                                (_%g212869212949%_ _%g212870212953%_))
                            (_%g212869212949%_ _%g212870212953%_))
                        (_%g212869212949%_ _%g212870212953%_))))
                (_%g212869212949%_ _%g212870212953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g212869212949%_
                                                 _%g212870212953%_))
                                            (_%g212869212949%_
                                             _%g212870212953%_)))
                                      (_%g212869212949%_ _%g212870212953%_))))
                              (_%g212869212949%_ _%g212870212953%_))))
                      (_%g212869212949%_ _%g212870212953%_)))))
          (_%g212868213251%_ _%sig212866%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx214023%_)
        (let* ((_%g214026214044%_
                (lambda (_%g214027214040%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214027214040%_))))
               (_%g214025214099%_
                (lambda (_%g214027214048%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214027214048%_))
                      (let ((_%e214030214051%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214027214048%_))))
                        (let ((_%hd214031214055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214030214051%_)))
                              (_%tl214032214058%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214030214051%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214032214058%_))
                              (let ((_%e214033214061%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214032214058%_))))
                                (let ((_%hd214034214065%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214033214061%_)))
                                      (_%tl214035214068%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214033214061%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl214035214068%_))
                                      (let ((_%e214036214071%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl214035214068%_))))
                                        (let ((_%hd214037214075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e214036214071%_)))
                                              (_%tl214038214078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e214036214071%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl214038214078%_))
                                              ((lambda (_%L214081%_
                                                        _%L214083%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L214083%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L214081%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx214023%_
                                                        _%L214083%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx214023%_
                                                        _%L214081%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L214083%_
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
                                                   (cons _%L214081%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g214026214044%_
                                                      _%g214027214048%_)))
                                               _%hd214037214075%_
                                               _%hd214034214065%_)
                                              (_%g214026214044%_
                                               _%g214027214048%_))))
                                      (_%g214026214044%_ _%g214027214048%_))))
                              (_%g214026214044%_ _%g214027214048%_))))
                      (_%g214026214044%_ _%g214027214048%_)))))
          (_%g214025214099%_ _%stx214023%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx214103%_)
        (let* ((_%g214106214130%_
                (lambda (_%g214107214126%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214107214126%_))))
               (_%g214105214413%_
                (lambda (_%g214107214134%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214107214134%_))
                      (let ((_%e214110214137%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214107214134%_))))
                        (let ((_%hd214111214141%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214110214137%_)))
                              (_%tl214112214144%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214110214137%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214112214144%_))
                              (let ((_%e214113214147%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214112214144%_))))
                                (let ((_%hd214114214151%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214113214147%_)))
                                      (_%tl214115214154%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214113214147%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl214115214154%_))
                                      (let ((_g216475_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl214115214154%_
                                                '0))))
                                        (begin
                                          (let ((_g216476_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g216475_)
                                                       (##values-length
                                                        _g216475_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g216476_ 2)))
                                                (error "Context expects 2 values"
                                                       _g216476_)))
                                          (let ((_%target214116214157%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g216475_ 0)))
                                                (_%tl214118214160%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g216475_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl214118214160%_))
                                                (letrec ((_%loop214119214163%_
                                                          (lambda (_%hd214117214167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature214123214170%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd214117214167%_))
                        (let ((_%e214120214173%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd214117214167%_))))
                          (let ((_%lp-hd214121214177%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e214120214173%_)))
                                (_%lp-tl214122214180%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e214120214173%_))))
                            (_%loop214119214163%_
                             _%lp-tl214122214180%_
                             (cons _%lp-hd214121214177%_
                                   _%signature214123214170%_))))
                        (let ((_%signature214124214183%_
                               (reverse _%signature214123214170%_)))
                          ((lambda (_%L214187%_ _%L214189%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L214189%_))
                                 (let* ((_%g214207214222%_
                                         (lambda (_%g214208214218%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g214208214218%_))))
                                        (_%g214206214401%_
                                         (lambda (_%g214208214226%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g214208214226%_))
                                               (let ((_%e214211214229%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g214208214226%_))))
                                                 (let ((_%hd214212214233%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e214211214229%_)))
                                                       (_%tl214213214236%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e214211214229%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl214213214236%_))
                                                       (let ((_%e214214214239%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl214213214236%_))))
                 (let ((_%hd214215214243%_
                        (let ()
                          (declare (not safe))
                          (##car _%e214214214239%_)))
                       (_%tl214216214246%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e214214214239%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl214216214246%_))
                       ((lambda (_%L214249%_ _%L214251%_)
                          (let* ((_%g214267214275%_
                                  (lambda (_%g214268214271%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g214268214271%_))))
                                 (_%g214266214397%_
                                  (lambda (_%g214268214279%_)
                                    ((lambda (_%L214282%_)
                                       (let* ((_%unchecked214295%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L214249%_))
                                              (_%g214298214306%_
                                               (lambda (_%g214299214302%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g214299214302%_))))
                                              (_%g214297214329%_
                                               (lambda (_%g214299214310%_)
                                                 ((lambda (_%L214313%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L214282%_
                                                                (cons _%L214313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g214299214310%_))))
                                         (_%g214297214329%_
                                          (if _%unchecked214295%_
                                              (let* ((_%g214333214348%_
                                                      (lambda (_%g214334214344%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g214334214344%_))))
                                                     (_%g214332214393%_
                                                      (lambda (_%g214334214352%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g214334214352%_))
                                                            (let ((_%e214337214355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g214334214352%_))))
                      (let ((_%hd214338214359%_
                             (let ()
                               (declare (not safe))
                               (##car _%e214337214355%_)))
                            (_%tl214339214362%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e214337214355%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl214339214362%_))
                            (let ((_%e214340214365%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl214339214362%_))))
                              (let ((_%hd214341214369%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e214340214365%_)))
                                    (_%tl214342214372%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e214340214365%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl214342214372%_))
                                    ((lambda (_%L214375%_ _%L214377%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L214377%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L214251%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L214375%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd214341214369%_
                                     _%hd214338214359%_)
                                    (_%g214333214348%_ _%g214334214352%_))))
                            (_%g214333214348%_ _%g214334214352%_))))
                    (_%g214333214348%_ _%g214334214352%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g214332214393%_
                                                 _%unchecked214295%_))
                                              '(begin)))))
                                     _%g214268214279%_))))
                            (_%g214266214397%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L214189%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L214251%_ '()))
                   (cons '#f (cons 'signature: (cons _%L214249%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd214215214243%_
                        _%hd214212214233%_)
                       (_%g214207214222%_ _%g214208214226%_))))
               (_%g214207214222%_ _%g214208214226%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g214207214222%_
                                                _%g214208214226%_)))))
                                   (_%g214206214401%_
                                    (|gxc[1]#parse-signature|
                                     _%stx214103%_
                                     _%L214189%_
                                     (let ((__tmp216477
                                            (lambda (_%g214404214407%_
                                                     _%g214405214410%_)
                                              (cons _%g214404214407%_
                                                    _%g214405214410%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp216477
                                        '()
                                        _%L214187%_)))))
                                 (_%g214106214130%_ _%g214107214134%_)))
                           _%signature214124214183%_
                           _%hd214114214151%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop214119214163%_
                                                   _%target214116214157%_
                                                   '()))
                                                (_%g214106214130%_
                                                 _%g214107214134%_)))))
                                      (_%g214106214130%_ _%g214107214134%_))))
                              (_%g214106214130%_ _%g214107214134%_))))
                      (_%g214106214130%_ _%g214107214134%_)))))
          (_%g214105214413%_ _%stx214103%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx214418%_)
        (let* ((_%g214421214445%_
                (lambda (_%g214422214441%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g214422214441%_))))
               (_%g214420215328%_
                (lambda (_%g214422214449%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g214422214449%_))
                      (let ((_%e214425214452%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g214422214449%_))))
                        (let ((_%hd214426214456%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e214425214452%_)))
                              (_%tl214427214459%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e214425214452%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl214427214459%_))
                              (let ((_%e214428214462%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl214427214459%_))))
                                (let ((_%hd214429214466%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214428214462%_)))
                                      (_%tl214430214469%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214428214462%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl214430214469%_))
                                      (let ((_g216478_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl214430214469%_
                                                '0))))
                                        (begin
                                          (let ((_g216479_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g216478_)
                                                       (##values-length
                                                        _g216478_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g216479_ 2)))
                                                (error "Context expects 2 values"
                                                       _g216479_)))
                                          (let ((_%target214431214472%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g216478_ 0)))
                                                (_%tl214433214475%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g216478_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl214433214475%_))
                                                (letrec ((_%loop214434214478%_
                                                          (lambda (_%hd214432214482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature214438214485%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd214432214482%_))
                        (let ((_%e214435214488%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd214432214482%_))))
                          (let ((_%lp-hd214436214492%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e214435214488%_)))
                                (_%lp-tl214437214495%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e214435214488%_))))
                            (_%loop214434214478%_
                             _%lp-tl214437214495%_
                             (cons _%lp-hd214436214492%_
                                   _%case-signature214438214485%_))))
                        (let ((_%case-signature214439214498%_
                               (reverse _%case-signature214438214485%_)))
                          ((lambda (_%L214502%_ _%L214504%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L214504%_))
                                 (let* ((_%signatures214535%_
                                         (map (lambda (_%g214521214523%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx214418%_
                                                 _%L214504%_
                                                 _%g214521214523%_))
                                              (let ((__tmp216480
                                                     (lambda (_%g214526214529%_
                                                              _%g214527214532%_)
                                                       (cons _%g214526214529%_
                                                             _%g214527214532%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp216480
                                                 '()
                                                 _%L214502%_))))
                                        (_%g214538214564%_
                                         (lambda (_%g214539214560%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g214539214560%_))))
                                        (_%g214537215324%_
                                         (lambda (_%g214539214568%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g214539214568%_))
                                               (let ((_g216481_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g214539214568%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g216482_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g216481_)
                        (##values-length _g216481_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g216482_ 2)))
                 (error "Context expects 2 values" _g216482_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target214542214571%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g216481_
                                                             0)))
                                                         (_%tl214544214574%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g216481_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl214544214574%_))
                                                         (letrec ((_%loop214545214577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd214543214581%_
                                    _%sig214549214584%_
                                    _%arity214550214586%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd214543214581%_))
                                 (let ((_%e214546214589%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd214543214581%_))))
                                   (let ((_%lp-hd214547214593%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e214546214589%_)))
                                         (_%lp-tl214548214596%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e214546214589%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd214547214593%_))
                                         (let ((_%e214553214599%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd214547214593%_))))
                                           (let ((_%hd214554214603%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e214553214599%_)))
                                                 (_%tl214555214606%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e214553214599%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl214555214606%_))
                                                 (let ((_%e214556214609%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl214555214606%_))))
                                                   (let ((_%hd214557214613%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e214556214609%_)))
                                                         (_%tl214558214616%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e214556214609%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl214558214616%_))
                                                         (_%loop214545214577%_
                                                          _%lp-tl214548214596%_
                                                          (cons _%hd214557214613%_
                                                                _%sig214549214584%_)
                                                          (cons _%hd214554214603%_
                                                                _%arity214550214586%_))
                                                         (_%g214538214564%_
                                                          _%g214539214568%_))))
                                                 (_%g214538214564%_
                                                  _%g214539214568%_))))
                                         (_%g214538214564%_
                                          _%g214539214568%_))))
                                 (let ((_%sig214551214619%_
                                        (reverse _%sig214549214584%_))
                                       (_%arity214552214622%_
                                        (reverse _%arity214550214586%_)))
                                   ((lambda (_%L214625%_ _%L214627%_)
                                      (let* ((_%g214644214652%_
                                              (lambda (_%g214645214648%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g214645214648%_))))
                                             (_%g214643215309%_
                                              (lambda (_%g214645214656%_)
                                                ((lambda (_%L214659%_)
                                                   (let* ((_%g214672214680%_
                                                           (lambda (_%g214673214676%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g214673214676%_))))
                  (_%g214671214702%_
                   (lambda (_%g214673214684%_)
                     ((lambda (_%L214687%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L214659%_ (cons _%L214687%_ '()))))
                      _%g214673214684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g214671214702%_
                                                      (let ((_g216483_
                                                             (let _%loop214706%_ ((_%rest214709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures214535%_)
                                          (_%unchecked-proc214711%_ '#f)
                                          (_%unchecked-clauses214712%_ '()))
                       (let* ((_%rest214713214721%_ _%rest214709%_)
                              (_%else214715214733%_
                               (lambda ()
                                 (values _%unchecked-proc214711%_
                                         (reverse!
                                          _%unchecked-clauses214712%_))))
                              (_%K214717215174%_
                               (lambda (_%rest214737%_ _%hd214739%_)
                                 (let* ((_%g214741214828%_
                                         (lambda (_%g214742214824%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g214742214824%_))))
                                        (_%g214740215170%_
                                         (lambda (_%g214742214832%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g214742214832%_))
                                               (let ((_%e214749214835%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g214742214832%_))))
                                                 (let ((_%hd214750214839%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e214749214835%_)))
                                                       (_%tl214751214842%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e214749214835%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl214751214842%_))
                                                       (let ((_%e214752214845%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl214751214842%_))))
                 (let ((_%hd214753214849%_
                        (let ()
                          (declare (not safe))
                          (##car _%e214752214845%_)))
                       (_%tl214754214852%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e214752214845%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd214753214849%_))
                       (let ((_%e214755214855%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd214753214849%_))))
                         (let ((_%hd214756214859%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e214755214855%_)))
                               (_%tl214757214862%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e214755214855%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl214757214862%_))
                               (let ((_%e214758214865%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl214757214862%_))))
                                 (let ((_%hd214759214869%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e214758214865%_)))
                                       (_%tl214760214872%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e214758214865%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd214759214869%_))
                                       (let ((_%e214761214875%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd214759214869%_))))
                                         (if (equal? _%e214761214875%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl214760214872%_))
                                                 (let ((_%e214762214879%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl214760214872%_))))
                                                   (let ((_%hd214763214883%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e214762214879%_)))
                                                         (_%tl214764214886%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e214762214879%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd214763214883%_))
                                                         (let ((_%e214765214889%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd214763214883%_))))
                   (let ((_%hd214766214893%_
                          (let ()
                            (declare (not safe))
                            (##car _%e214765214889%_)))
                         (_%tl214767214896%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e214765214889%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd214766214893%_))
                         (if (let ((__tmp216485 |gxc[1]#_g216486_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp216485
                                _%hd214766214893%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl214767214896%_))
                                 (let ((_%e214768214899%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl214767214896%_))))
                                   (let ((_%hd214769214903%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e214768214899%_)))
                                         (_%tl214770214906%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e214768214899%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl214770214906%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl214764214886%_))
                                             (let ((_%e214771214909%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl214764214886%_))))
                                               (let ((_%hd214772214913%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e214771214909%_)))
                                                     (_%tl214773214916%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e214771214909%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd214772214913%_))
                                                     (let ((_%e214774214919%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd214772214913%_))))
                                                       (if (equal? _%e214774214919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl214773214916%_))
                       (let ((_%e214775214923%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl214773214916%_))))
                         (let ((_%hd214776214927%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e214775214923%_)))
                               (_%tl214777214930%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e214775214923%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd214776214927%_))
                               (let ((_%e214778214933%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd214776214927%_))))
                                 (let ((_%hd214779214937%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e214778214933%_)))
                                       (_%tl214780214940%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e214778214933%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd214779214937%_))
                                       (if (let ((__tmp216487
                                                  |gxc[1]#_g216488_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp216487
                                              _%hd214779214937%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl214780214940%_))
                                               (let ((_%e214781214943%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl214780214940%_))))
                                                 (let ((_%hd214782214947%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e214781214943%_)))
                                                       (_%tl214783214950%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e214781214943%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl214783214950%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl214777214930%_))
                                                           (let ((_%e214784214953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl214777214930%_))))
                     (let ((_%hd214785214957%_
                            (let ()
                              (declare (not safe))
                              (##car _%e214784214953%_)))
                           (_%tl214786214960%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e214784214953%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd214785214957%_))
                           (let ((_%e214787214963%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd214785214957%_))))
                             (if (equal? _%e214787214963%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl214786214960%_))
                                     (let ((_%e214788214967%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl214786214960%_))))
                                       (let ((_%hd214789214971%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e214788214967%_)))
                                             (_%tl214790214974%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e214788214967%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd214789214971%_))
                                             (let ((_%e214791214977%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd214789214971%_))))
                                               (let ((_%hd214792214981%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e214791214977%_)))
                                                     (_%tl214793214984%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e214791214977%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd214792214981%_))
                                                     (if (let ((__tmp216489
                                                                |gxc[1]#_g216490_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp216489
                                                            _%hd214792214981%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl214793214984%_))
                     (let ((_%e214794214987%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl214793214984%_))))
                       (let ((_%hd214795214991%_
                              (let ()
                                (declare (not safe))
                                (##car _%e214794214987%_)))
                             (_%tl214796214994%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e214794214987%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl214796214994%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl214790214974%_))
                                 (let ((_%e214797214997%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl214790214974%_))))
                                   (let ((_%hd214798215001%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e214797214997%_)))
                                         (_%tl214799215004%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e214797214997%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd214798215001%_))
                                         (let ((_%e214800215007%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd214798215001%_))))
                                           (if (equal? _%e214800215007%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl214799215004%_))
                                                   (let ((_%e214801215011%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl214799215004%_))))
                                                     (let ((_%hd214802215015%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e214801215011%_)))
                                                           (_%tl214803215018%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e214801215011%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd214802215015%_))
                                                           (let ((_%e214804215021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd214802215015%_))))
                     (let ((_%hd214805215025%_
                            (let ()
                              (declare (not safe))
                              (##car _%e214804215021%_)))
                           (_%tl214806215028%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e214804215021%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd214805215025%_))
                           (if (let ((__tmp216491 |gxc[1]#_g216492_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp216491
                                  _%hd214805215025%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl214806215028%_))
                                   (let ((_%e214807215031%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl214806215028%_))))
                                     (let ((_%hd214808215035%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e214807215031%_)))
                                           (_%tl214809215038%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e214807215031%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl214809215038%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl214803215018%_))
                                               (let ((_%e214810215041%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl214803215018%_))))
                                                 (let ((_%hd214811215045%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e214810215041%_)))
                                                       (_%tl214812215048%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e214810215041%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd214811215045%_))
                                                       (let ((_%e214813215051%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd214811215045%_))))
                 (if (equal? _%e214813215051%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl214812215048%_))
                         (let ((_%e214814215055%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl214812215048%_))))
                           (let ((_%hd214815215059%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e214814215055%_)))
                                 (_%tl214816215062%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e214814215055%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd214815215059%_))
                                 (let ((_%e214817215065%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd214815215059%_))))
                                   (let ((_%hd214818215069%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e214817215065%_)))
                                         (_%tl214819215072%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e214817215065%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd214818215069%_))
                                         (if (let ((__tmp216493
                                                    |gxc[1]#_g216494_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp216493
                                                _%hd214818215069%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl214819215072%_))
                                                 (let ((_%e214820215075%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl214819215072%_))))
                                                   (let ((_%hd214821215079%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e214820215075%_)))
                                                         (_%tl214822215082%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e214820215075%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl214822215082%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl214816215062%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl214754214852%_))
                         ((lambda (_%L215085%_
                                   _%L215087%_
                                   _%L215088%_
                                   _%L215089%_
                                   _%L215090%_
                                   _%L215091%_)
                            (let ((_%clause215162%_
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
                                                     (cons _%L215091%_ '()))
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
                                                 (cons _%L215089%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L215085%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked215164%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L215087%_))))
                              (_%loop214706%_
                               _%rest214737%_
                               (let ((_%$e215166%_ _%unchecked215164%_))
                                 (if _%$e215166%_
                                     _%$e215166%_
                                     _%unchecked-proc214711%_))
                               (cons _%clause215162%_
                                     _%unchecked-clauses214712%_))))
                          _%hd214821215079%_
                          _%hd214808215035%_
                          _%hd214795214991%_
                          _%hd214782214947%_
                          _%hd214769214903%_
                          _%hd214750214839%_)
                         (_%g214741214828%_ _%g214742214832%_))
                     (_%g214741214828%_ _%g214742214832%_))
                 (_%g214741214828%_ _%g214742214832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g214741214828%_
                                                  _%g214742214832%_))
                                             (_%g214741214828%_
                                              _%g214742214832%_))
                                         (_%g214741214828%_
                                          _%g214742214832%_))))
                                 (_%g214741214828%_ _%g214742214832%_))))
                         (_%g214741214828%_ _%g214742214832%_))
                     (_%g214741214828%_ _%g214742214832%_)))
               (_%g214741214828%_ _%g214742214832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g214741214828%_
                                                _%g214742214832%_))
                                           (_%g214741214828%_
                                            _%g214742214832%_))))
                                   (_%g214741214828%_ _%g214742214832%_))
                               (_%g214741214828%_ _%g214742214832%_))
                           (_%g214741214828%_ _%g214742214832%_))))
                   (_%g214741214828%_ _%g214742214832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g214741214828%_
                                                    _%g214742214832%_))
                                               (_%g214741214828%_
                                                _%g214742214832%_)))
                                         (_%g214741214828%_
                                          _%g214742214832%_))))
                                 (_%g214741214828%_ _%g214742214832%_))
                             (_%g214741214828%_ _%g214742214832%_))))
                     (_%g214741214828%_ _%g214742214832%_))
                 (_%g214741214828%_ _%g214742214832%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g214741214828%_
                                                      _%g214742214832%_))))
                                             (_%g214741214828%_
                                              _%g214742214832%_))))
                                     (_%g214741214828%_ _%g214742214832%_))
                                 (_%g214741214828%_ _%g214742214832%_)))
                           (_%g214741214828%_ _%g214742214832%_))))
                   (_%g214741214828%_ _%g214742214832%_))
               (_%g214741214828%_ _%g214742214832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g214741214828%_
                                                _%g214742214832%_))
                                           (_%g214741214828%_
                                            _%g214742214832%_))
                                       (_%g214741214828%_ _%g214742214832%_))))
                               (_%g214741214828%_ _%g214742214832%_))))
                       (_%g214741214828%_ _%g214742214832%_))
                   (_%g214741214828%_ _%g214742214832%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g214741214828%_
                                                      _%g214742214832%_))))
                                             (_%g214741214828%_
                                              _%g214742214832%_))
                                         (_%g214741214828%_
                                          _%g214742214832%_))))
                                 (_%g214741214828%_ _%g214742214832%_))
                             (_%g214741214828%_ _%g214742214832%_))
                         (_%g214741214828%_ _%g214742214832%_))))
                 (_%g214741214828%_ _%g214742214832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g214741214828%_
                                                  _%g214742214832%_))
                                             (_%g214741214828%_
                                              _%g214742214832%_)))
                                       (_%g214741214828%_ _%g214742214832%_))))
                               (_%g214741214828%_ _%g214742214832%_))))
                       (_%g214741214828%_ _%g214742214832%_))))
               (_%g214741214828%_ _%g214742214832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g214741214828%_
                                                _%g214742214832%_)))))
                                   (_%g214740215170%_ _%hd214739%_)))))
                         (if (pair? _%rest214713214721%_)
                             (let ((_%hd214718215178%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest214713214721%_)))
                                   (_%tl214719215181%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest214713214721%_))))
                               (let* ((_%hd215184%_ _%hd214718215178%_)
                                      (_%rest215187%_ _%tl214719215181%_))
                                 (_%K214717215174%_
                                  _%rest215187%_
                                  _%hd215184%_)))
                             (_%else214715214733%_))))))
                (begin
                  (let ((_g216484_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g216483_)
                               (##values-length _g216483_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g216484_ 2)))
                        (error "Context expects 2 values" _g216484_)))
                  (let ((_%unchecked-proc215190%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g216483_ 0)))
                        (_%unchecked-clauses215192%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g216483_ 1))))
                    (if _%unchecked-proc215190%_
                        (let* ((_%g215194215218%_
                                (lambda (_%g215195215214%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g215195215214%_))))
                               (_%g215193215305%_
                                (lambda (_%g215195215222%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g215195215222%_))
                                      (let ((_%e215198215225%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g215195215222%_))))
                                        (let ((_%hd215199215229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e215198215225%_)))
                                              (_%tl215200215232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e215198215225%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl215200215232%_))
                                              (let ((_%e215201215235%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl215200215232%_))))
                                                (let ((_%hd215202215239%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e215201215235%_)))
                                                      (_%tl215203215242%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e215201215235%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd215202215239%_))
                                                      (let ((_g216495_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd215202215239%_ '0))))
                (begin
                  (let ((_g216496_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g216495_)
                               (##values-length _g216495_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g216496_ 2)))
                        (error "Context expects 2 values" _g216496_)))
                  (let ((_%target215204215245%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g216495_ 0)))
                        (_%tl215206215248%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g216495_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl215206215248%_))
                        (letrec ((_%loop215207215251%_
                                  (lambda (_%hd215205215255%_
                                           _%clause215211215258%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd215205215255%_))
                                        (let ((_%e215208215261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd215205215255%_))))
                                          (let ((_%lp-hd215209215265%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e215208215261%_)))
                                                (_%lp-tl215210215268%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e215208215261%_))))
                                            (_%loop215207215251%_
                                             _%lp-tl215210215268%_
                                             (cons _%lp-hd215209215265%_
                                                   _%clause215211215258%_))))
                                        (let ((_%clause215212215271%_
                                               (reverse _%clause215211215258%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl215203215242%_))
                                              ((lambda (_%L215275%_
                                                        _%L215277%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L215277%_
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
                                             (let ((__tmp216497
                                                    (lambda (_%g215296215299%_
                                                             _%g215297215302%_)
                                                      (cons _%g215296215299%_
                                                            _%g215297215302%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp216497
                                                '()
                                                _%L215275%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause215212215271%_
                                               _%hd215199215229%_)
                                              (_%g215194215218%_
                                               _%g215195215222%_)))))))
                          (_%loop215207215251%_ _%target215204215245%_ '()))
                        (_%g215194215218%_ _%g215195215222%_)))))
              (_%g215194215218%_ _%g215195215222%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g215194215218%_
                                               _%g215195215222%_))))
                                      (_%g215194215218%_ _%g215195215222%_)))))
                          (_%g215193215305%_
                           (list _%unchecked-proc215190%_
                                 _%unchecked-clauses215192%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g214645214656%_))))
                                        (_%g214643215309%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L214504%_
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
                                          _%L214625%_
                                          _%L214627%_))
                                       (let ((__tmp216498
                                              (lambda (_%g215312215316%_
                                                       _%g215313215319%_
                                                       _%g215314215321%_)
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
                                (cons _%g215313215319%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g215312215316%_ '())))))
              _%g215314215321%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp216498
                                          '()
                                          _%L214625%_
                                          _%L214627%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig214551214619%_
                                    _%arity214552214622%_))))))
                   (_%loop214545214577%_ _%target214542214571%_ '() '()))
                 (_%g214538214564%_ _%g214539214568%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g214538214564%_
                                                _%g214539214568%_)))))
                                   (_%g214537215324%_ _%signatures214535%_))
                                 (_%g214421214445%_ _%g214422214449%_)))
                           _%case-signature214439214498%_
                           _%hd214429214466%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop214434214478%_
                                                   _%target214431214472%_
                                                   '()))
                                                (_%g214421214445%_
                                                 _%g214422214449%_)))))
                                      (_%g214421214445%_ _%g214422214449%_))))
                              (_%g214421214445%_ _%g214422214449%_))))
                      (_%g214421214445%_ _%g214422214449%_)))))
          (_%g214420215328%_ _%stx214418%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx215336%_)
        (let* ((_%__stx216318216319%_ _%$stx215336%_)
               (_%g215342215402%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx216318216319%_)))))
          (let ((_%__kont216321216322%_
                 (lambda (_%L215624%_ _%L215626%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L215626%_ '()))
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
                                                       (cons _%L215626%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L215624%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont216323216324%_
                 (lambda (_%L215549%_ _%L215551%_ _%L215552%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L215552%_ '()))
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
                                                       (cons _%L215552%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L215551%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L215549%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont216325216326%_
                 (lambda (_%L215463%_ _%L215465%_ _%L215466%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L215466%_ '()))
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
                                                       (cons _%L215466%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L215465%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L215463%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx216318216319%_))
                (let ((_%e215346215580%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx216318216319%_))))
                  (let ((_%tl215348215587%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e215346215580%_)))
                        (_%hd215347215584%_
                         (let ()
                           (declare (not safe))
                           (##car _%e215346215580%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl215348215587%_))
                        (let ((_%e215349215590%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl215348215587%_))))
                          (let ((_%tl215351215597%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e215349215590%_)))
                                (_%hd215350215594%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e215349215590%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd215350215594%_))
                                (let ((_%e215352215600%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd215350215594%_))))
                                  (if (equal? _%e215352215600%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl215351215597%_))
                                          (let ((_%e215353215604%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl215351215597%_))))
                                            (let ((_%tl215355215611%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e215353215604%_)))
                                                  (_%hd215354215608%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e215353215604%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl215355215611%_))
                                                  (let ((_%e215356215614%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl215355215611%_))))
                                                    (let ((_%tl215358215621%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e215356215614%_)))
                                                          (_%hd215357215618%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e215356215614%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl215358215621%_))
                                                          (_%__kont216321216322%_
                                                           _%hd215357215618%_
                                                           _%hd215354215608%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g215342215402%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g215342215402%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g215342215402%_)))
                                      (if (equal? _%e215352215600%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl215351215597%_))
                                              (let ((_%e215369215519%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl215351215597%_))))
                                                (let ((_%tl215371215526%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e215369215519%_)))
                                                      (_%hd215370215523%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e215369215519%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl215371215526%_))
                                                      (let ((_%e215372215529%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl215371215526%_))))
                (let ((_%tl215374215536%_
                       (let () (declare (not safe)) (##cdr _%e215372215529%_)))
                      (_%hd215373215533%_
                       (let ()
                         (declare (not safe))
                         (##car _%e215372215529%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl215374215536%_))
                      (let ((_%e215375215539%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl215374215536%_))))
                        (let ((_%tl215377215546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215375215539%_)))
                              (_%hd215376215543%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215375215539%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl215377215546%_))
                              (_%__kont216323216324%_
                               _%hd215376215543%_
                               _%hd215373215533%_
                               _%hd215370215523%_)
                              (let ()
                                (declare (not safe))
                                (_%g215342215402%_)))))
                      (let () (declare (not safe)) (_%g215342215402%_)))))
              (let () (declare (not safe)) (_%g215342215402%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g215342215402%_)))
                                          (if (equal? _%e215352215600%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl215351215597%_))
                                                  (let ((_%e215388215433%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl215351215597%_))))
                                                    (let ((_%tl215390215440%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e215388215433%_)))
                                                          (_%hd215389215437%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e215388215433%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl215390215440%_))
                                                          (let ((_%e215391215443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl215390215440%_))))
                    (let ((_%tl215393215450%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e215391215443%_)))
                          (_%hd215392215447%_
                           (let ()
                             (declare (not safe))
                             (##car _%e215391215443%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl215393215450%_))
                          (let ((_%e215394215453%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl215393215450%_))))
                            (let ((_%tl215396215460%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e215394215453%_)))
                                  (_%hd215395215457%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e215394215453%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl215396215460%_))
                                  (_%__kont216325216326%_
                                   _%hd215395215457%_
                                   _%hd215392215447%_
                                   _%hd215389215437%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g215342215402%_)))))
                          (let () (declare (not safe)) (_%g215342215402%_)))))
                  (let () (declare (not safe)) (_%g215342215402%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g215342215402%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g215342215402%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g215342215402%_)))))
                        (let () (declare (not safe)) (_%g215342215402%_)))))
                (let () (declare (not safe)) (_%g215342215402%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx215648%_)
        (let* ((_%g215652215672%_
                (lambda (_%g215653215668%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g215653215668%_))))
               (_%g215651215743%_
                (lambda (_%g215653215676%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g215653215676%_))
                      (let ((_%e215655215679%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g215653215676%_))))
                        (let ((_%hd215656215683%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e215655215679%_)))
                              (_%tl215657215686%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e215655215679%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl215657215686%_))
                              (let ((_g216499_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl215657215686%_
                                        '0))))
                                (begin
                                  (let ((_g216500_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g216499_)
                                               (##values-length _g216499_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g216500_ 2)))
                                        (error "Context expects 2 values"
                                               _g216500_)))
                                  (let ((_%target215658215689%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g216499_ 0)))
                                        (_%tl215660215692%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g216499_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl215660215692%_))
                                        (letrec ((_%loop215661215695%_
                                                  (lambda (_%hd215659215699%_
                                                           _%decl215665215702%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd215659215699%_))
                                                        (let ((_%e215662215705%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd215659215699%_))))
                  (let ((_%lp-hd215663215709%_
                         (let ()
                           (declare (not safe))
                           (##car _%e215662215705%_)))
                        (_%lp-tl215664215712%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e215662215705%_))))
                    (_%loop215661215695%_
                     _%lp-tl215664215712%_
                     (cons _%lp-hd215663215709%_ _%decl215665215702%_))))
                (let ((_%decl215666215715%_ (reverse _%decl215665215702%_)))
                  ((lambda (_%L215719%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp216501
                                  (lambda (_%g215734215737%_ _%g215735215740%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g215734215737%_)
                                          _%g215735215740%_))))
                             (declare (not safe))
                             (__foldr1 __tmp216501 '() _%L215719%_))))
                   _%decl215666215715%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop215661215695%_
                                           _%target215658215689%_
                                           '()))
                                        (_%g215652215672%_
                                         _%g215653215676%_)))))
                              (_%g215652215672%_ _%g215653215676%_))))
                      (_%g215652215672%_ _%g215653215676%_)))))
          (_%g215651215743%_ _%$stx215648%_))))))
