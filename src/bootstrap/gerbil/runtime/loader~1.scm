(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g352974_|
    (gx#core-deserialize-mark
     '(0
       (arg351788 . _%arg351788351846%_)
       (arg . _%arg351876%_)
       (arg351789 . _%arg351789351860%_)
       (id . _%id351813%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g352975_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g352974_|)))
  (define |[1]#_g352977_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g352978_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g352977_|)))
  (define |[1]#_g352979_|
    (gx#core-deserialize-mark
     '(0
       (arg351923 . _%arg351923351980%_)
       (arg351924 . _%arg351924351994%_)
       (arg . _%arg352010%_)
       (id . _%id351947%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g352980_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g352979_|)))
  (define |[1]#_g352982_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g352983_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g352982_|)))
  (define |[1]#_g352984_|
    (gx#core-deserialize-mark
     '(0
       (arg352058 . _%arg352058352128%_)
       (arg . _%arg352144%_)
       (arg352057 . _%arg352057352114%_)
       (id . _%id352081%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g352985_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g352984_|)))
  (define |[1]#_g352987_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g352988_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g352987_|)))
  (define |[1]#_g352989_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg352278%_)
       (id . _%id352215%_)
       (arg352191 . _%arg352191352248%_)
       (arg352192 . _%arg352192352262%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g352990_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g352989_|)))
  (define |[1]#_g352992_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g352993_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g352992_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx351770%_)
        (let* ((_%__stx352865352866%_ _%$stx351770%_)
               (_%g351775351796%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx352865352866%_))))
          (let ((_%__kont352868352869%_
                 (lambda (_%g351777351862%_)
                   (cons (gx#datum->syntax
                          |[1]#_g352975_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp352976
                                                  (lambda (_%g351877351880%_
                                                           _%g351878351883%_)
                                                    (cons _%g351877351880%_
                                                          _%g351878351883%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp352976
                                              '()
                                              _%g351777351862%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g352978_|
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
                (_%__kont352872352873%_
                 (lambda (_%g351790351803%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g351774351815%_
                    (lambda ()
                      (let ((_%g351790351803%_ _%__stx352865352866%_))
                        (if (gx#identifier? _%g351790351803%_)
                            (_%__kont352872352873%_ _%g351790351803%_)
                            (let ()
                              (declare (not safe))
                              (_%g351775351796%_))))))
                   (_%__match352888352889%_
                    (lambda (_%e351778351822%_
                             _%hd351779351826%_
                             _%tl351780351829%_
                             _%__splice352870352871%_
                             _%target351781351832%_
                             _%tl351783351835%_)
                      (letrec ((_%loop351784351838%_
                                (lambda (_%hd351782351842%_
                                         _%arg351788351845%_)
                                  (if (gx#stx-pair? _%hd351782351842%_)
                                      (let ((_%e351785351848%_
                                             (gx#syntax-e _%hd351782351842%_)))
                                        (let ((_%lp-tl351787351855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e351785351848%_)))
                                              (_%lp-hd351786351852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e351785351848%_))))
                                          (_%loop351784351838%_
                                           _%lp-tl351787351855%_
                                           (cons _%lp-hd351786351852%_
                                                 _%arg351788351845%_))))
                                      (let ((_%arg351789351858%_
                                             (reverse _%arg351788351845%_)))
                                        (_%__kont352868352869%_
                                         _%arg351789351858%_))))))
                        (_%loop351784351838%_ _%target351781351832%_ '())))))
              (if (gx#stx-pair? _%__stx352865352866%_)
                  (let ((_%e351778351822%_
                         (gx#syntax-e _%__stx352865352866%_)))
                    (let ((_%tl351780351829%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e351778351822%_)))
                          (_%hd351779351826%_
                           (let ()
                             (declare (not safe))
                             (##car _%e351778351822%_))))
                      (if (gx#stx-pair/null? _%tl351780351829%_)
                          (let ((_%__splice352870352871%_
                                 (gx#syntax-split-splice->vector
                                  _%tl351780351829%_
                                  '0)))
                            (let ((_%tl351783351835%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice352870352871%_
                                      '1)))
                                  (_%target351781351832%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice352870352871%_
                                      '0))))
                              (if (gx#stx-null? _%tl351783351835%_)
                                  (_%__match352888352889%_
                                   _%e351778351822%_
                                   _%hd351779351826%_
                                   _%tl351780351829%_
                                   _%__splice352870352871%_
                                   _%target351781351832%_
                                   _%tl351783351835%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g351774351815%_)))))
                          (let () (declare (not safe)) (_%g351774351815%_)))))
                  (let () (declare (not safe)) (_%g351774351815%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx351905%_)
        (let* ((_%__stx352891352892%_ _%$stx351905%_)
               (_%g351910351931%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx352891352892%_))))
          (let ((_%__kont352894352895%_
                 (lambda (_%g351912351996%_)
                   (cons (gx#datum->syntax
                          |[1]#_g352980_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp352981
                                                  (lambda (_%g352011352014%_
                                                           _%g352012352017%_)
                                                    (cons _%g352011352014%_
                                                          _%g352012352017%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp352981
                                              '()
                                              _%g351912351996%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g352983_|
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
                (_%__kont352898352899%_
                 (lambda (_%g351925351938%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g351909351949%_
                    (lambda ()
                      (let ((_%g351925351938%_ _%__stx352891352892%_))
                        (if (gx#identifier? _%g351925351938%_)
                            (_%__kont352898352899%_ _%g351925351938%_)
                            (let ()
                              (declare (not safe))
                              (_%g351910351931%_))))))
                   (_%__match352914352915%_
                    (lambda (_%e351913351956%_
                             _%hd351914351960%_
                             _%tl351915351963%_
                             _%__splice352896352897%_
                             _%target351916351966%_
                             _%tl351918351969%_)
                      (letrec ((_%loop351919351972%_
                                (lambda (_%hd351917351976%_
                                         _%arg351923351979%_)
                                  (if (gx#stx-pair? _%hd351917351976%_)
                                      (let ((_%e351920351982%_
                                             (gx#syntax-e _%hd351917351976%_)))
                                        (let ((_%lp-tl351922351989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e351920351982%_)))
                                              (_%lp-hd351921351986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e351920351982%_))))
                                          (_%loop351919351972%_
                                           _%lp-tl351922351989%_
                                           (cons _%lp-hd351921351986%_
                                                 _%arg351923351979%_))))
                                      (let ((_%arg351924351992%_
                                             (reverse _%arg351923351979%_)))
                                        (_%__kont352894352895%_
                                         _%arg351924351992%_))))))
                        (_%loop351919351972%_ _%target351916351966%_ '())))))
              (if (gx#stx-pair? _%__stx352891352892%_)
                  (let ((_%e351913351956%_
                         (gx#syntax-e _%__stx352891352892%_)))
                    (let ((_%tl351915351963%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e351913351956%_)))
                          (_%hd351914351960%_
                           (let ()
                             (declare (not safe))
                             (##car _%e351913351956%_))))
                      (if (gx#stx-pair/null? _%tl351915351963%_)
                          (let ((_%__splice352896352897%_
                                 (gx#syntax-split-splice->vector
                                  _%tl351915351963%_
                                  '0)))
                            (let ((_%tl351918351969%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice352896352897%_
                                      '1)))
                                  (_%target351916351966%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice352896352897%_
                                      '0))))
                              (if (gx#stx-null? _%tl351918351969%_)
                                  (_%__match352914352915%_
                                   _%e351913351956%_
                                   _%hd351914351960%_
                                   _%tl351915351963%_
                                   _%__splice352896352897%_
                                   _%target351916351966%_
                                   _%tl351918351969%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g351909351949%_)))))
                          (let () (declare (not safe)) (_%g351909351949%_)))))
                  (let () (declare (not safe)) (_%g351909351949%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx352039%_)
        (let* ((_%__stx352917352918%_ _%$stx352039%_)
               (_%g352044352065%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx352917352918%_))))
          (let ((_%__kont352920352921%_
                 (lambda (_%g352046352130%_)
                   (cons (gx#datum->syntax
                          |[1]#_g352985_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp352986
                                                  (lambda (_%g352145352148%_
                                                           _%g352146352151%_)
                                                    (cons _%g352145352148%_
                                                          _%g352146352151%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp352986
                                              '()
                                              _%g352046352130%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g352988_|
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
                (_%__kont352924352925%_
                 (lambda (_%g352059352072%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g352043352083%_
                    (lambda ()
                      (let ((_%g352059352072%_ _%__stx352917352918%_))
                        (if (gx#identifier? _%g352059352072%_)
                            (_%__kont352924352925%_ _%g352059352072%_)
                            (let ()
                              (declare (not safe))
                              (_%g352044352065%_))))))
                   (_%__match352940352941%_
                    (lambda (_%e352047352090%_
                             _%hd352048352094%_
                             _%tl352049352097%_
                             _%__splice352922352923%_
                             _%target352050352100%_
                             _%tl352052352103%_)
                      (letrec ((_%loop352053352106%_
                                (lambda (_%hd352051352110%_
                                         _%arg352057352113%_)
                                  (if (gx#stx-pair? _%hd352051352110%_)
                                      (let ((_%e352054352116%_
                                             (gx#syntax-e _%hd352051352110%_)))
                                        (let ((_%lp-tl352056352123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e352054352116%_)))
                                              (_%lp-hd352055352120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e352054352116%_))))
                                          (_%loop352053352106%_
                                           _%lp-tl352056352123%_
                                           (cons _%lp-hd352055352120%_
                                                 _%arg352057352113%_))))
                                      (let ((_%arg352058352126%_
                                             (reverse _%arg352057352113%_)))
                                        (_%__kont352920352921%_
                                         _%arg352058352126%_))))))
                        (_%loop352053352106%_ _%target352050352100%_ '())))))
              (if (gx#stx-pair? _%__stx352917352918%_)
                  (let ((_%e352047352090%_
                         (gx#syntax-e _%__stx352917352918%_)))
                    (let ((_%tl352049352097%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e352047352090%_)))
                          (_%hd352048352094%_
                           (let ()
                             (declare (not safe))
                             (##car _%e352047352090%_))))
                      (if (gx#stx-pair/null? _%tl352049352097%_)
                          (let ((_%__splice352922352923%_
                                 (gx#syntax-split-splice->vector
                                  _%tl352049352097%_
                                  '0)))
                            (let ((_%tl352052352103%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice352922352923%_
                                      '1)))
                                  (_%target352050352100%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice352922352923%_
                                      '0))))
                              (if (gx#stx-null? _%tl352052352103%_)
                                  (_%__match352940352941%_
                                   _%e352047352090%_
                                   _%hd352048352094%_
                                   _%tl352049352097%_
                                   _%__splice352922352923%_
                                   _%target352050352100%_
                                   _%tl352052352103%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g352043352083%_)))))
                          (let () (declare (not safe)) (_%g352043352083%_)))))
                  (let () (declare (not safe)) (_%g352043352083%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx352173%_)
        (let* ((_%__stx352943352944%_ _%$stx352173%_)
               (_%g352178352199%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx352943352944%_))))
          (let ((_%__kont352946352947%_
                 (lambda (_%g352180352264%_)
                   (cons (gx#datum->syntax
                          |[1]#_g352990_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp352991
                                                  (lambda (_%g352279352282%_
                                                           _%g352280352285%_)
                                                    (cons _%g352279352282%_
                                                          _%g352280352285%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp352991
                                              '()
                                              _%g352180352264%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g352993_|
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
                (_%__kont352950352951%_
                 (lambda (_%g352193352206%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g352177352217%_
                    (lambda ()
                      (let ((_%g352193352206%_ _%__stx352943352944%_))
                        (if (gx#identifier? _%g352193352206%_)
                            (_%__kont352950352951%_ _%g352193352206%_)
                            (let ()
                              (declare (not safe))
                              (_%g352178352199%_))))))
                   (_%__match352966352967%_
                    (lambda (_%e352181352224%_
                             _%hd352182352228%_
                             _%tl352183352231%_
                             _%__splice352948352949%_
                             _%target352184352234%_
                             _%tl352186352237%_)
                      (letrec ((_%loop352187352240%_
                                (lambda (_%hd352185352244%_
                                         _%arg352191352247%_)
                                  (if (gx#stx-pair? _%hd352185352244%_)
                                      (let ((_%e352188352250%_
                                             (gx#syntax-e _%hd352185352244%_)))
                                        (let ((_%lp-tl352190352257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e352188352250%_)))
                                              (_%lp-hd352189352254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e352188352250%_))))
                                          (_%loop352187352240%_
                                           _%lp-tl352190352257%_
                                           (cons _%lp-hd352189352254%_
                                                 _%arg352191352247%_))))
                                      (let ((_%arg352192352260%_
                                             (reverse _%arg352191352247%_)))
                                        (_%__kont352946352947%_
                                         _%arg352192352260%_))))))
                        (_%loop352187352240%_ _%target352184352234%_ '())))))
              (if (gx#stx-pair? _%__stx352943352944%_)
                  (let ((_%e352181352224%_
                         (gx#syntax-e _%__stx352943352944%_)))
                    (let ((_%tl352183352231%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e352181352224%_)))
                          (_%hd352182352228%_
                           (let ()
                             (declare (not safe))
                             (##car _%e352181352224%_))))
                      (if (gx#stx-pair/null? _%tl352183352231%_)
                          (let ((_%__splice352948352949%_
                                 (gx#syntax-split-splice->vector
                                  _%tl352183352231%_
                                  '0)))
                            (let ((_%tl352186352237%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice352948352949%_
                                      '1)))
                                  (_%target352184352234%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice352948352949%_
                                      '0))))
                              (if (gx#stx-null? _%tl352186352237%_)
                                  (_%__match352966352967%_
                                   _%e352181352224%_
                                   _%hd352182352228%_
                                   _%tl352183352231%_
                                   _%__splice352948352949%_
                                   _%target352184352234%_
                                   _%tl352186352237%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g352177352217%_)))))
                          (let () (declare (not safe)) (_%g352177352217%_)))))
                  (let () (declare (not safe)) (_%g352177352217%_))))))))))
