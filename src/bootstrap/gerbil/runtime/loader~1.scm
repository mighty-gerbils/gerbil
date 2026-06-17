(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g175070_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg173972%_)
       ($%arg173884 . _%$%arg173884173942%_)
       ($%arg173885 . _%$%arg173885173956%_)
       (id . _%id173909%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g175071_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g175070_|)))
  (define |[1]#_g175073_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g175074_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g175073_|)))
  (define |[1]#_g175075_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg174092%_)
       ($%arg174006 . _%$%arg174006174076%_)
       ($%arg174005 . _%$%arg174005174062%_)
       (id . _%id174029%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g175076_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g175075_|)))
  (define |[1]#_g175078_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g175079_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g175078_|)))
  (define |[1]#_g175080_|
    (gx#core-deserialize-mark
     '(0
       ($%arg174125 . _%$%arg174125174182%_)
       (arg . _%arg174212%_)
       (id . _%id174149%_)
       ($%arg174126 . _%$%arg174126174196%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g175081_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g175080_|)))
  (define |[1]#_g175083_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g175084_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g175083_|)))
  (define |[1]#_g175085_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg174332%_)
       ($%arg174245 . _%$%arg174245174302%_)
       (id . _%id174269%_)
       ($%arg174246 . _%$%arg174246174316%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g175086_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g175085_|)))
  (define |[1]#_g175088_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g175089_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g175088_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx173866%_)
        (let* ((_%__stx174961174962%_ _%$stx173866%_)
               (_%$%g173871173892%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx174961174962%_))))
          (let ((_%__kont174964174965%_
                 (lambda (_%$%g173873173958%_)
                   (cons (gx#datum->syntax
                          |[1]#_g175071_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp175072
                                                  (lambda (_%$%g173973173976%_
                                                           _%$%g173974173979%_)
                                                    (cons _%$%g173973173976%_
                                                          _%$%g173974173979%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp175072
                                              '()
                                              _%$%g173873173958%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g175074_|
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
                (_%__kont174968174969%_
                 (lambda (_%$%g173886173899%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%$%g173870173911%_
                    (lambda ()
                      (let ((_%$%g173886173899%_ _%__stx174961174962%_))
                        (if (gx#identifier? _%$%g173886173899%_)
                            (_%__kont174968174969%_ _%$%g173886173899%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g173871173892%_))))))
                   (_%__match174984174985%_
                    (lambda (_%$%e173874173918%_
                             _%$%hd173875173922%_
                             _%$%tl173876173925%_
                             _%__splice174966174967%_
                             _%$%target173877173928%_
                             _%$%tl173879173931%_)
                      (letrec ((_%$%loop173880173934%_
                                (lambda (_%$%hd173878173938%_
                                         _%$%arg173884173941%_)
                                  (if (gx#stx-pair? _%$%hd173878173938%_)
                                      (let ((_%$%e173881173944%_
                                             (gx#syntax-e
                                              _%$%hd173878173938%_)))
                                        (let ((_%$%lp-tl173883173951%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e173881173944%_)))
                                              (_%$%lp-hd173882173948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e173881173944%_))))
                                          (_%$%loop173880173934%_
                                           _%$%lp-tl173883173951%_
                                           (cons _%$%lp-hd173882173948%_
                                                 _%$%arg173884173941%_))))
                                      (let ((_%$%arg173885173954%_
                                             (reverse _%$%arg173884173941%_)))
                                        (_%__kont174964174965%_
                                         _%$%arg173885173954%_))))))
                        (_%$%loop173880173934%_
                         _%$%target173877173928%_
                         '())))))
              (if (gx#stx-pair? _%__stx174961174962%_)
                  (let ((_%$%e173874173918%_
                         (gx#syntax-e _%__stx174961174962%_)))
                    (let ((_%$%tl173876173925%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e173874173918%_)))
                          (_%$%hd173875173922%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e173874173918%_))))
                      (if (gx#stx-pair/null? _%$%tl173876173925%_)
                          (let ((_%__splice174966174967%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl173876173925%_
                                  '0)))
                            (let ((_%$%tl173879173931%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice174966174967%_
                                      '1)))
                                  (_%$%target173877173928%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice174966174967%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl173879173931%_)
                                  (_%__match174984174985%_
                                   _%$%e173874173918%_
                                   _%$%hd173875173922%_
                                   _%$%tl173876173925%_
                                   _%__splice174966174967%_
                                   _%$%target173877173928%_
                                   _%$%tl173879173931%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g173870173911%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g173870173911%_)))))
                  (let () (declare (not safe)) (_%$%g173870173911%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx173987%_)
        (let* ((_%__stx174987174988%_ _%$stx173987%_)
               (_%$%g173992174013%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx174987174988%_))))
          (let ((_%__kont174990174991%_
                 (lambda (_%$%g173994174078%_)
                   (cons (gx#datum->syntax
                          |[1]#_g175076_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp175077
                                                  (lambda (_%$%g174093174096%_
                                                           _%$%g174094174099%_)
                                                    (cons _%$%g174093174096%_
                                                          _%$%g174094174099%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp175077
                                              '()
                                              _%$%g173994174078%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g175079_|
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
                (_%__kont174994174995%_
                 (lambda (_%$%g174007174020%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%$%g173991174031%_
                    (lambda ()
                      (let ((_%$%g174007174020%_ _%__stx174987174988%_))
                        (if (gx#identifier? _%$%g174007174020%_)
                            (_%__kont174994174995%_ _%$%g174007174020%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g173992174013%_))))))
                   (_%__match175010175011%_
                    (lambda (_%$%e173995174038%_
                             _%$%hd173996174042%_
                             _%$%tl173997174045%_
                             _%__splice174992174993%_
                             _%$%target173998174048%_
                             _%$%tl174000174051%_)
                      (letrec ((_%$%loop174001174054%_
                                (lambda (_%$%hd173999174058%_
                                         _%$%arg174005174061%_)
                                  (if (gx#stx-pair? _%$%hd173999174058%_)
                                      (let ((_%$%e174002174064%_
                                             (gx#syntax-e
                                              _%$%hd173999174058%_)))
                                        (let ((_%$%lp-tl174004174071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e174002174064%_)))
                                              (_%$%lp-hd174003174068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e174002174064%_))))
                                          (_%$%loop174001174054%_
                                           _%$%lp-tl174004174071%_
                                           (cons _%$%lp-hd174003174068%_
                                                 _%$%arg174005174061%_))))
                                      (let ((_%$%arg174006174074%_
                                             (reverse _%$%arg174005174061%_)))
                                        (_%__kont174990174991%_
                                         _%$%arg174006174074%_))))))
                        (_%$%loop174001174054%_
                         _%$%target173998174048%_
                         '())))))
              (if (gx#stx-pair? _%__stx174987174988%_)
                  (let ((_%$%e173995174038%_
                         (gx#syntax-e _%__stx174987174988%_)))
                    (let ((_%$%tl173997174045%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e173995174038%_)))
                          (_%$%hd173996174042%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e173995174038%_))))
                      (if (gx#stx-pair/null? _%$%tl173997174045%_)
                          (let ((_%__splice174992174993%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl173997174045%_
                                  '0)))
                            (let ((_%$%tl174000174051%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice174992174993%_
                                      '1)))
                                  (_%$%target173998174048%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice174992174993%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl174000174051%_)
                                  (_%__match175010175011%_
                                   _%$%e173995174038%_
                                   _%$%hd173996174042%_
                                   _%$%tl173997174045%_
                                   _%__splice174992174993%_
                                   _%$%target173998174048%_
                                   _%$%tl174000174051%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g173991174031%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g173991174031%_)))))
                  (let () (declare (not safe)) (_%$%g173991174031%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx174107%_)
        (let* ((_%__stx175013175014%_ _%$stx174107%_)
               (_%$%g174112174133%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx175013175014%_))))
          (let ((_%__kont175016175017%_
                 (lambda (_%$%g174114174198%_)
                   (cons (gx#datum->syntax
                          |[1]#_g175081_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp175082
                                                  (lambda (_%$%g174213174216%_
                                                           _%$%g174214174219%_)
                                                    (cons _%$%g174213174216%_
                                                          _%$%g174214174219%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp175082
                                              '()
                                              _%$%g174114174198%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g175084_|
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
                (_%__kont175020175021%_
                 (lambda (_%$%g174127174140%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%$%g174111174151%_
                    (lambda ()
                      (let ((_%$%g174127174140%_ _%__stx175013175014%_))
                        (if (gx#identifier? _%$%g174127174140%_)
                            (_%__kont175020175021%_ _%$%g174127174140%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g174112174133%_))))))
                   (_%__match175036175037%_
                    (lambda (_%$%e174115174158%_
                             _%$%hd174116174162%_
                             _%$%tl174117174165%_
                             _%__splice175018175019%_
                             _%$%target174118174168%_
                             _%$%tl174120174171%_)
                      (letrec ((_%$%loop174121174174%_
                                (lambda (_%$%hd174119174178%_
                                         _%$%arg174125174181%_)
                                  (if (gx#stx-pair? _%$%hd174119174178%_)
                                      (let ((_%$%e174122174184%_
                                             (gx#syntax-e
                                              _%$%hd174119174178%_)))
                                        (let ((_%$%lp-tl174124174191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e174122174184%_)))
                                              (_%$%lp-hd174123174188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e174122174184%_))))
                                          (_%$%loop174121174174%_
                                           _%$%lp-tl174124174191%_
                                           (cons _%$%lp-hd174123174188%_
                                                 _%$%arg174125174181%_))))
                                      (let ((_%$%arg174126174194%_
                                             (reverse _%$%arg174125174181%_)))
                                        (_%__kont175016175017%_
                                         _%$%arg174126174194%_))))))
                        (_%$%loop174121174174%_
                         _%$%target174118174168%_
                         '())))))
              (if (gx#stx-pair? _%__stx175013175014%_)
                  (let ((_%$%e174115174158%_
                         (gx#syntax-e _%__stx175013175014%_)))
                    (let ((_%$%tl174117174165%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e174115174158%_)))
                          (_%$%hd174116174162%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e174115174158%_))))
                      (if (gx#stx-pair/null? _%$%tl174117174165%_)
                          (let ((_%__splice175018175019%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl174117174165%_
                                  '0)))
                            (let ((_%$%tl174120174171%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice175018175019%_
                                      '1)))
                                  (_%$%target174118174168%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice175018175019%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl174120174171%_)
                                  (_%__match175036175037%_
                                   _%$%e174115174158%_
                                   _%$%hd174116174162%_
                                   _%$%tl174117174165%_
                                   _%__splice175018175019%_
                                   _%$%target174118174168%_
                                   _%$%tl174120174171%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g174111174151%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g174111174151%_)))))
                  (let () (declare (not safe)) (_%$%g174111174151%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx174227%_)
        (let* ((_%__stx175039175040%_ _%$stx174227%_)
               (_%$%g174232174253%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx175039175040%_))))
          (let ((_%__kont175042175043%_
                 (lambda (_%$%g174234174318%_)
                   (cons (gx#datum->syntax
                          |[1]#_g175086_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp175087
                                                  (lambda (_%$%g174333174336%_
                                                           _%$%g174334174339%_)
                                                    (cons _%$%g174333174336%_
                                                          _%$%g174334174339%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp175087
                                              '()
                                              _%$%g174234174318%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g175089_|
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
                (_%__kont175046175047%_
                 (lambda (_%$%g174247174260%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%$%g174231174271%_
                    (lambda ()
                      (let ((_%$%g174247174260%_ _%__stx175039175040%_))
                        (if (gx#identifier? _%$%g174247174260%_)
                            (_%__kont175046175047%_ _%$%g174247174260%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g174232174253%_))))))
                   (_%__match175062175063%_
                    (lambda (_%$%e174235174278%_
                             _%$%hd174236174282%_
                             _%$%tl174237174285%_
                             _%__splice175044175045%_
                             _%$%target174238174288%_
                             _%$%tl174240174291%_)
                      (letrec ((_%$%loop174241174294%_
                                (lambda (_%$%hd174239174298%_
                                         _%$%arg174245174301%_)
                                  (if (gx#stx-pair? _%$%hd174239174298%_)
                                      (let ((_%$%e174242174304%_
                                             (gx#syntax-e
                                              _%$%hd174239174298%_)))
                                        (let ((_%$%lp-tl174244174311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e174242174304%_)))
                                              (_%$%lp-hd174243174308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e174242174304%_))))
                                          (_%$%loop174241174294%_
                                           _%$%lp-tl174244174311%_
                                           (cons _%$%lp-hd174243174308%_
                                                 _%$%arg174245174301%_))))
                                      (let ((_%$%arg174246174314%_
                                             (reverse _%$%arg174245174301%_)))
                                        (_%__kont175042175043%_
                                         _%$%arg174246174314%_))))))
                        (_%$%loop174241174294%_
                         _%$%target174238174288%_
                         '())))))
              (if (gx#stx-pair? _%__stx175039175040%_)
                  (let ((_%$%e174235174278%_
                         (gx#syntax-e _%__stx175039175040%_)))
                    (let ((_%$%tl174237174285%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e174235174278%_)))
                          (_%$%hd174236174282%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e174235174278%_))))
                      (if (gx#stx-pair/null? _%$%tl174237174285%_)
                          (let ((_%__splice175044175045%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl174237174285%_
                                  '0)))
                            (let ((_%$%tl174240174291%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice175044175045%_
                                      '1)))
                                  (_%$%target174238174288%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice175044175045%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl174240174291%_)
                                  (_%__match175062175063%_
                                   _%$%e174235174278%_
                                   _%$%hd174236174282%_
                                   _%$%tl174237174285%_
                                   _%__splice175044175045%_
                                   _%$%target174238174288%_
                                   _%$%tl174240174291%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g174231174271%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g174231174271%_)))))
                  (let () (declare (not safe)) (_%$%g174231174271%_))))))))))
