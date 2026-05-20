(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g171957_|
    (gx#core-deserialize-mark
     '(0
       (arg170771 . _%arg170771170829%_)
       (id . _%id170796%_)
       (arg170772 . _%arg170772170843%_)
       (arg . _%arg170859%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g171958_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g171957_|)))
  (define |[1]#_g171960_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g171961_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g171960_|)))
  (define |[1]#_g171962_|
    (gx#core-deserialize-mark
     '(0
       (arg170907 . _%arg170907170977%_)
       (id . _%id170930%_)
       (arg170906 . _%arg170906170963%_)
       (arg . _%arg170993%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g171963_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g171962_|)))
  (define |[1]#_g171965_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g171966_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g171965_|)))
  (define |[1]#_g171967_|
    (gx#core-deserialize-mark
     '(0
       (arg171041 . _%arg171041171111%_)
       (id . _%id171064%_)
       (arg . _%arg171127%_)
       (arg171040 . _%arg171040171097%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g171968_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g171967_|)))
  (define |[1]#_g171970_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g171971_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g171970_|)))
  (define |[1]#_g171972_|
    (gx#core-deserialize-mark
     '(0
       (arg171174 . _%arg171174171231%_)
       (id . _%id171198%_)
       (arg171175 . _%arg171175171245%_)
       (arg . _%arg171261%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g171973_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g171972_|)))
  (define |[1]#_g171975_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g171976_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g171975_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx170753%_)
        (let* ((_%__stx171848171849%_ _%$stx170753%_)
               (_%g170758170779%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx171848171849%_))))
          (let ((_%__kont171851171852%_
                 (lambda (_%g170760170845%_)
                   (cons (gx#datum->syntax
                          |[1]#_g171958_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp171959
                                                  (lambda (_%g170860170863%_
                                                           _%g170861170866%_)
                                                    (cons _%g170860170863%_
                                                          _%g170861170866%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp171959
                                              '()
                                              _%g170760170845%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g171961_|
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
                (_%__kont171855171856%_
                 (lambda (_%g170773170786%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g170757170798%_
                    (lambda ()
                      (let ((_%g170773170786%_ _%__stx171848171849%_))
                        (if (gx#identifier? _%g170773170786%_)
                            (_%__kont171855171856%_ _%g170773170786%_)
                            (let ()
                              (declare (not safe))
                              (_%g170758170779%_))))))
                   (_%__match171871171872%_
                    (lambda (_%e170761170805%_
                             _%hd170762170809%_
                             _%tl170763170812%_
                             _%__splice171853171854%_
                             _%target170764170815%_
                             _%tl170766170818%_)
                      (letrec ((_%loop170767170821%_
                                (lambda (_%hd170765170825%_
                                         _%arg170771170828%_)
                                  (if (gx#stx-pair? _%hd170765170825%_)
                                      (let ((_%e170768170831%_
                                             (gx#syntax-e _%hd170765170825%_)))
                                        (let ((_%lp-tl170770170838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170768170831%_)))
                                              (_%lp-hd170769170835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170768170831%_))))
                                          (_%loop170767170821%_
                                           _%lp-tl170770170838%_
                                           (cons _%lp-hd170769170835%_
                                                 _%arg170771170828%_))))
                                      (let ((_%arg170772170841%_
                                             (reverse _%arg170771170828%_)))
                                        (_%__kont171851171852%_
                                         _%arg170772170841%_))))))
                        (_%loop170767170821%_ _%target170764170815%_ '())))))
              (if (gx#stx-pair? _%__stx171848171849%_)
                  (let ((_%e170761170805%_
                         (gx#syntax-e _%__stx171848171849%_)))
                    (let ((_%tl170763170812%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170761170805%_)))
                          (_%hd170762170809%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170761170805%_))))
                      (if (gx#stx-pair/null? _%tl170763170812%_)
                          (let ((_%__splice171853171854%_
                                 (gx#syntax-split-splice->vector
                                  _%tl170763170812%_
                                  '0)))
                            (let ((_%tl170766170818%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171853171854%_
                                      '1)))
                                  (_%target170764170815%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171853171854%_
                                      '0))))
                              (if (gx#stx-null? _%tl170766170818%_)
                                  (_%__match171871171872%_
                                   _%e170761170805%_
                                   _%hd170762170809%_
                                   _%tl170763170812%_
                                   _%__splice171853171854%_
                                   _%target170764170815%_
                                   _%tl170766170818%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g170757170798%_)))))
                          (let () (declare (not safe)) (_%g170757170798%_)))))
                  (let () (declare (not safe)) (_%g170757170798%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx170888%_)
        (let* ((_%__stx171874171875%_ _%$stx170888%_)
               (_%g170893170914%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx171874171875%_))))
          (let ((_%__kont171877171878%_
                 (lambda (_%g170895170979%_)
                   (cons (gx#datum->syntax
                          |[1]#_g171963_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp171964
                                                  (lambda (_%g170994170997%_
                                                           _%g170995171000%_)
                                                    (cons _%g170994170997%_
                                                          _%g170995171000%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp171964
                                              '()
                                              _%g170895170979%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g171966_|
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
                (_%__kont171881171882%_
                 (lambda (_%g170908170921%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g170892170932%_
                    (lambda ()
                      (let ((_%g170908170921%_ _%__stx171874171875%_))
                        (if (gx#identifier? _%g170908170921%_)
                            (_%__kont171881171882%_ _%g170908170921%_)
                            (let ()
                              (declare (not safe))
                              (_%g170893170914%_))))))
                   (_%__match171897171898%_
                    (lambda (_%e170896170939%_
                             _%hd170897170943%_
                             _%tl170898170946%_
                             _%__splice171879171880%_
                             _%target170899170949%_
                             _%tl170901170952%_)
                      (letrec ((_%loop170902170955%_
                                (lambda (_%hd170900170959%_
                                         _%arg170906170962%_)
                                  (if (gx#stx-pair? _%hd170900170959%_)
                                      (let ((_%e170903170965%_
                                             (gx#syntax-e _%hd170900170959%_)))
                                        (let ((_%lp-tl170905170972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170903170965%_)))
                                              (_%lp-hd170904170969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170903170965%_))))
                                          (_%loop170902170955%_
                                           _%lp-tl170905170972%_
                                           (cons _%lp-hd170904170969%_
                                                 _%arg170906170962%_))))
                                      (let ((_%arg170907170975%_
                                             (reverse _%arg170906170962%_)))
                                        (_%__kont171877171878%_
                                         _%arg170907170975%_))))))
                        (_%loop170902170955%_ _%target170899170949%_ '())))))
              (if (gx#stx-pair? _%__stx171874171875%_)
                  (let ((_%e170896170939%_
                         (gx#syntax-e _%__stx171874171875%_)))
                    (let ((_%tl170898170946%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170896170939%_)))
                          (_%hd170897170943%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170896170939%_))))
                      (if (gx#stx-pair/null? _%tl170898170946%_)
                          (let ((_%__splice171879171880%_
                                 (gx#syntax-split-splice->vector
                                  _%tl170898170946%_
                                  '0)))
                            (let ((_%tl170901170952%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171879171880%_
                                      '1)))
                                  (_%target170899170949%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171879171880%_
                                      '0))))
                              (if (gx#stx-null? _%tl170901170952%_)
                                  (_%__match171897171898%_
                                   _%e170896170939%_
                                   _%hd170897170943%_
                                   _%tl170898170946%_
                                   _%__splice171879171880%_
                                   _%target170899170949%_
                                   _%tl170901170952%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g170892170932%_)))))
                          (let () (declare (not safe)) (_%g170892170932%_)))))
                  (let () (declare (not safe)) (_%g170892170932%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx171022%_)
        (let* ((_%__stx171900171901%_ _%$stx171022%_)
               (_%g171027171048%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx171900171901%_))))
          (let ((_%__kont171903171904%_
                 (lambda (_%g171029171113%_)
                   (cons (gx#datum->syntax
                          |[1]#_g171968_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp171969
                                                  (lambda (_%g171128171131%_
                                                           _%g171129171134%_)
                                                    (cons _%g171128171131%_
                                                          _%g171129171134%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp171969
                                              '()
                                              _%g171029171113%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g171971_|
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
                (_%__kont171907171908%_
                 (lambda (_%g171042171055%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g171026171066%_
                    (lambda ()
                      (let ((_%g171042171055%_ _%__stx171900171901%_))
                        (if (gx#identifier? _%g171042171055%_)
                            (_%__kont171907171908%_ _%g171042171055%_)
                            (let ()
                              (declare (not safe))
                              (_%g171027171048%_))))))
                   (_%__match171923171924%_
                    (lambda (_%e171030171073%_
                             _%hd171031171077%_
                             _%tl171032171080%_
                             _%__splice171905171906%_
                             _%target171033171083%_
                             _%tl171035171086%_)
                      (letrec ((_%loop171036171089%_
                                (lambda (_%hd171034171093%_
                                         _%arg171040171096%_)
                                  (if (gx#stx-pair? _%hd171034171093%_)
                                      (let ((_%e171037171099%_
                                             (gx#syntax-e _%hd171034171093%_)))
                                        (let ((_%lp-tl171039171106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171037171099%_)))
                                              (_%lp-hd171038171103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171037171099%_))))
                                          (_%loop171036171089%_
                                           _%lp-tl171039171106%_
                                           (cons _%lp-hd171038171103%_
                                                 _%arg171040171096%_))))
                                      (let ((_%arg171041171109%_
                                             (reverse _%arg171040171096%_)))
                                        (_%__kont171903171904%_
                                         _%arg171041171109%_))))))
                        (_%loop171036171089%_ _%target171033171083%_ '())))))
              (if (gx#stx-pair? _%__stx171900171901%_)
                  (let ((_%e171030171073%_
                         (gx#syntax-e _%__stx171900171901%_)))
                    (let ((_%tl171032171080%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e171030171073%_)))
                          (_%hd171031171077%_
                           (let ()
                             (declare (not safe))
                             (##car _%e171030171073%_))))
                      (if (gx#stx-pair/null? _%tl171032171080%_)
                          (let ((_%__splice171905171906%_
                                 (gx#syntax-split-splice->vector
                                  _%tl171032171080%_
                                  '0)))
                            (let ((_%tl171035171086%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171905171906%_
                                      '1)))
                                  (_%target171033171083%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171905171906%_
                                      '0))))
                              (if (gx#stx-null? _%tl171035171086%_)
                                  (_%__match171923171924%_
                                   _%e171030171073%_
                                   _%hd171031171077%_
                                   _%tl171032171080%_
                                   _%__splice171905171906%_
                                   _%target171033171083%_
                                   _%tl171035171086%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g171026171066%_)))))
                          (let () (declare (not safe)) (_%g171026171066%_)))))
                  (let () (declare (not safe)) (_%g171026171066%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx171156%_)
        (let* ((_%__stx171926171927%_ _%$stx171156%_)
               (_%g171161171182%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx171926171927%_))))
          (let ((_%__kont171929171930%_
                 (lambda (_%g171163171247%_)
                   (cons (gx#datum->syntax
                          |[1]#_g171973_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp171974
                                                  (lambda (_%g171262171265%_
                                                           _%g171263171268%_)
                                                    (cons _%g171262171265%_
                                                          _%g171263171268%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp171974
                                              '()
                                              _%g171163171247%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g171976_|
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
                (_%__kont171933171934%_
                 (lambda (_%g171176171189%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g171160171200%_
                    (lambda ()
                      (let ((_%g171176171189%_ _%__stx171926171927%_))
                        (if (gx#identifier? _%g171176171189%_)
                            (_%__kont171933171934%_ _%g171176171189%_)
                            (let ()
                              (declare (not safe))
                              (_%g171161171182%_))))))
                   (_%__match171949171950%_
                    (lambda (_%e171164171207%_
                             _%hd171165171211%_
                             _%tl171166171214%_
                             _%__splice171931171932%_
                             _%target171167171217%_
                             _%tl171169171220%_)
                      (letrec ((_%loop171170171223%_
                                (lambda (_%hd171168171227%_
                                         _%arg171174171230%_)
                                  (if (gx#stx-pair? _%hd171168171227%_)
                                      (let ((_%e171171171233%_
                                             (gx#syntax-e _%hd171168171227%_)))
                                        (let ((_%lp-tl171173171240%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171171171233%_)))
                                              (_%lp-hd171172171237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171171171233%_))))
                                          (_%loop171170171223%_
                                           _%lp-tl171173171240%_
                                           (cons _%lp-hd171172171237%_
                                                 _%arg171174171230%_))))
                                      (let ((_%arg171175171243%_
                                             (reverse _%arg171174171230%_)))
                                        (_%__kont171929171930%_
                                         _%arg171175171243%_))))))
                        (_%loop171170171223%_ _%target171167171217%_ '())))))
              (if (gx#stx-pair? _%__stx171926171927%_)
                  (let ((_%e171164171207%_
                         (gx#syntax-e _%__stx171926171927%_)))
                    (let ((_%tl171166171214%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e171164171207%_)))
                          (_%hd171165171211%_
                           (let ()
                             (declare (not safe))
                             (##car _%e171164171207%_))))
                      (if (gx#stx-pair/null? _%tl171166171214%_)
                          (let ((_%__splice171931171932%_
                                 (gx#syntax-split-splice->vector
                                  _%tl171166171214%_
                                  '0)))
                            (let ((_%tl171169171220%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171931171932%_
                                      '1)))
                                  (_%target171167171217%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171931171932%_
                                      '0))))
                              (if (gx#stx-null? _%tl171169171220%_)
                                  (_%__match171949171950%_
                                   _%e171164171207%_
                                   _%hd171165171211%_
                                   _%tl171166171214%_
                                   _%__splice171931171932%_
                                   _%target171167171217%_
                                   _%tl171169171220%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g171160171200%_)))))
                          (let () (declare (not safe)) (_%g171160171200%_)))))
                  (let () (declare (not safe)) (_%g171160171200%_))))))))))
