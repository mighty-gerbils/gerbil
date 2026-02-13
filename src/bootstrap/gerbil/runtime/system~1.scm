(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g119990_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id119118%_)
       (arg119094 . _%arg119094119165%_)
       (arg119093 . _%arg119093119151%_)
       (arg . _%arg119181%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g119991_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g119990_|)))
  (define |[1]#_g119992_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value119197%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g119993_|
    (##structure
     gx#syntax-quote::t
     '_%new-value119197%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g119992_|)))
  (define |[1]#_g119995_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g119996_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g119995_|)))
  (define |[1]#_g119997_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id119253%_)
       (arg119230 . _%arg119230119300%_)
       (arg119229 . _%arg119229119286%_)
       (arg . _%arg119316%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g119998_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g119997_|)))
  (define |[1]#_g120000_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120001_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120000_|)))
  (define |[1]#_g120002_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id119414%_)
       (arg119390 . _%arg119390119447%_)
       (arg119391 . _%arg119391119461%_)
       (arg . _%arg119477%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120003_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120002_|)))
  (define |[1]#_g120005_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120006_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120005_|)))
  (define |[1]#_g120007_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id119557%_)
       (arg119533 . _%arg119533119590%_)
       (arg119534 . _%arg119534119604%_)
       (arg . _%arg119620%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120008_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120007_|)))
  (define |[1]#_g120009_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value119636%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120010_|
    (##structure
     gx#syntax-quote::t
     '_%new-value119636%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g120009_|)))
  (define |[1]#_g120012_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120013_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120012_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx119075%_)
        (let* ((_%__stx119876119877%_ _%$stx119075%_)
               (_%g119080119101%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx119876119877%_))))
          (let ((_%__kont119879119880%_
                 (lambda (_%g119082119167%_)
                   (cons (gx#datum->syntax
                          |[1]#_g119991_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g119993_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp119994
                                                  (lambda (_%g119182119185%_
                                                           _%g119183119188%_)
                                                    (cons _%g119182119185%_
                                                          _%g119183119188%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp119994
                                              '()
                                              _%g119082119167%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g119996_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g119993_|
                                                              'new-value
                                                              '#f
                                                              '#f)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__build-manifest-set!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |[1]#_g119993_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont119883119884%_
                 (lambda (_%g119095119108%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%g119079119120%_
                    (lambda ()
                      (let ((_%g119095119108%_ _%__stx119876119877%_))
                        (if (gx#identifier? _%g119095119108%_)
                            (_%__kont119883119884%_ _%g119095119108%_)
                            (let ()
                              (declare (not safe))
                              (_%g119080119101%_))))))
                   (_%__match119899119900%_
                    (lambda (_%e119083119127%_
                             _%hd119084119131%_
                             _%tl119085119134%_
                             _%__splice119881119882%_
                             _%target119086119137%_
                             _%tl119088119140%_)
                      (letrec ((_%loop119089119143%_
                                (lambda (_%hd119087119147%_
                                         _%arg119093119150%_)
                                  (if (gx#stx-pair? _%hd119087119147%_)
                                      (let ((_%e119090119153%_
                                             (gx#syntax-e _%hd119087119147%_)))
                                        (let ((_%lp-tl119092119160%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119090119153%_)))
                                              (_%lp-hd119091119157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119090119153%_))))
                                          (_%loop119089119143%_
                                           _%lp-tl119092119160%_
                                           (cons _%lp-hd119091119157%_
                                                 _%arg119093119150%_))))
                                      (let ((_%arg119094119163%_
                                             (reverse _%arg119093119150%_)))
                                        (_%__kont119879119880%_
                                         _%arg119094119163%_))))))
                        (_%loop119089119143%_ _%target119086119137%_ '())))))
              (if (gx#stx-pair? _%__stx119876119877%_)
                  (let ((_%e119083119127%_
                         (gx#syntax-e _%__stx119876119877%_)))
                    (let ((_%tl119085119134%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119083119127%_)))
                          (_%hd119084119131%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119083119127%_))))
                      (if (gx#stx-pair/null? _%tl119085119134%_)
                          (let ((_%__splice119881119882%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119085119134%_
                                  '0)))
                            (let ((_%tl119088119140%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119881119882%_
                                      '1)))
                                  (_%target119086119137%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119881119882%_
                                      '0))))
                              (if (gx#stx-null? _%tl119088119140%_)
                                  (_%__match119899119900%_
                                   _%e119083119127%_
                                   _%hd119084119131%_
                                   _%tl119085119134%_
                                   _%__splice119881119882%_
                                   _%target119086119137%_
                                   _%tl119088119140%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119079119120%_)))))
                          (let () (declare (not safe)) (_%g119079119120%_)))))
                  (let () (declare (not safe)) (_%g119079119120%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx119211%_)
        (let* ((_%__stx119902119903%_ _%$stx119211%_)
               (_%g119216119237%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx119902119903%_))))
          (let ((_%__kont119905119906%_
                 (lambda (_%g119218119302%_)
                   (cons (gx#datum->syntax
                          |[1]#_g119998_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'manifest)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '__build-manifest)
                                                       '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'port)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'current-output-port)
                           '())
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (let ((__tmp119999
                                                  (lambda (_%g119317119320%_
                                                           _%g119318119323%_)
                                                    (cons _%g119317119320%_
                                                          _%g119318119323%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp119999
                                              '()
                                              _%g119218119302%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120001_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               (cons (cons (gx#datum->syntax '#f 'port)
                           (cons (gx#datum->syntax '#f ':)
                                 (cons (gx#datum->syntax '#f ':port) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__display-build-manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'manifest)
                           (cons (gx#datum->syntax '#f 'port) '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont119909119910%_
                 (lambda (_%g119231119244%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%g119215119255%_
                    (lambda ()
                      (let ((_%g119231119244%_ _%__stx119902119903%_))
                        (if (gx#identifier? _%g119231119244%_)
                            (_%__kont119909119910%_ _%g119231119244%_)
                            (let ()
                              (declare (not safe))
                              (_%g119216119237%_))))))
                   (_%__match119925119926%_
                    (lambda (_%e119219119262%_
                             _%hd119220119266%_
                             _%tl119221119269%_
                             _%__splice119907119908%_
                             _%target119222119272%_
                             _%tl119224119275%_)
                      (letrec ((_%loop119225119278%_
                                (lambda (_%hd119223119282%_
                                         _%arg119229119285%_)
                                  (if (gx#stx-pair? _%hd119223119282%_)
                                      (let ((_%e119226119288%_
                                             (gx#syntax-e _%hd119223119282%_)))
                                        (let ((_%lp-tl119228119295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119226119288%_)))
                                              (_%lp-hd119227119292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119226119288%_))))
                                          (_%loop119225119278%_
                                           _%lp-tl119228119295%_
                                           (cons _%lp-hd119227119292%_
                                                 _%arg119229119285%_))))
                                      (let ((_%arg119230119298%_
                                             (reverse _%arg119229119285%_)))
                                        (_%__kont119905119906%_
                                         _%arg119230119298%_))))))
                        (_%loop119225119278%_ _%target119222119272%_ '())))))
              (if (gx#stx-pair? _%__stx119902119903%_)
                  (let ((_%e119219119262%_
                         (gx#syntax-e _%__stx119902119903%_)))
                    (let ((_%tl119221119269%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119219119262%_)))
                          (_%hd119220119266%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119219119262%_))))
                      (if (gx#stx-pair/null? _%tl119221119269%_)
                          (let ((_%__splice119907119908%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119221119269%_
                                  '0)))
                            (let ((_%tl119224119275%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119907119908%_
                                      '1)))
                                  (_%target119222119272%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119907119908%_
                                      '0))))
                              (if (gx#stx-null? _%tl119224119275%_)
                                  (_%__match119925119926%_
                                   _%e119219119262%_
                                   _%hd119220119266%_
                                   _%tl119221119269%_
                                   _%__splice119907119908%_
                                   _%target119222119272%_
                                   _%tl119224119275%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119215119255%_)))))
                          (let () (declare (not safe)) (_%g119215119255%_)))))
                  (let () (declare (not safe)) (_%g119215119255%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx119372%_)
        (let* ((_%__stx119928119929%_ _%$stx119372%_)
               (_%g119377119398%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx119928119929%_))))
          (let ((_%__kont119931119932%_
                 (lambda (_%g119379119463%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120003_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'manifest)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '__build-manifest)
                                                       '()))
                                           '())
                                     (cons (let ((__tmp120004
                                                  (lambda (_%g119478119481%_
                                                           _%g119479119484%_)
                                                    (cons _%g119478119481%_
                                                          _%g119479119484%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120004
                                              '()
                                              _%g119379119463%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120006_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__build-manifest-string)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'manifest)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont119935119936%_
                 (lambda (_%g119392119405%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%g119376119416%_
                    (lambda ()
                      (let ((_%g119392119405%_ _%__stx119928119929%_))
                        (if (gx#identifier? _%g119392119405%_)
                            (_%__kont119935119936%_ _%g119392119405%_)
                            (let ()
                              (declare (not safe))
                              (_%g119377119398%_))))))
                   (_%__match119951119952%_
                    (lambda (_%e119380119423%_
                             _%hd119381119427%_
                             _%tl119382119430%_
                             _%__splice119933119934%_
                             _%target119383119433%_
                             _%tl119385119436%_)
                      (letrec ((_%loop119386119439%_
                                (lambda (_%hd119384119443%_
                                         _%arg119390119446%_)
                                  (if (gx#stx-pair? _%hd119384119443%_)
                                      (let ((_%e119387119449%_
                                             (gx#syntax-e _%hd119384119443%_)))
                                        (let ((_%lp-tl119389119456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119387119449%_)))
                                              (_%lp-hd119388119453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119387119449%_))))
                                          (_%loop119386119439%_
                                           _%lp-tl119389119456%_
                                           (cons _%lp-hd119388119453%_
                                                 _%arg119390119446%_))))
                                      (let ((_%arg119391119459%_
                                             (reverse _%arg119390119446%_)))
                                        (_%__kont119931119932%_
                                         _%arg119391119459%_))))))
                        (_%loop119386119439%_ _%target119383119433%_ '())))))
              (if (gx#stx-pair? _%__stx119928119929%_)
                  (let ((_%e119380119423%_
                         (gx#syntax-e _%__stx119928119929%_)))
                    (let ((_%tl119382119430%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119380119423%_)))
                          (_%hd119381119427%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119380119423%_))))
                      (if (gx#stx-pair/null? _%tl119382119430%_)
                          (let ((_%__splice119933119934%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119382119430%_
                                  '0)))
                            (let ((_%tl119385119436%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119933119934%_
                                      '1)))
                                  (_%target119383119433%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119933119934%_
                                      '0))))
                              (if (gx#stx-null? _%tl119385119436%_)
                                  (_%__match119951119952%_
                                   _%e119380119423%_
                                   _%hd119381119427%_
                                   _%tl119382119430%_
                                   _%__splice119933119934%_
                                   _%target119383119433%_
                                   _%tl119385119436%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119376119416%_)))))
                          (let () (declare (not safe)) (_%g119376119416%_)))))
                  (let () (declare (not safe)) (_%g119376119416%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx119515%_)
        (let* ((_%__stx119954119955%_ _%$stx119515%_)
               (_%g119520119541%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx119954119955%_))))
          (let ((_%__kont119957119958%_
                 (lambda (_%g119522119606%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120008_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g120010_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp120011
                                                  (lambda (_%g119621119624%_
                                                           _%g119622119627%_)
                                                    (cons _%g119621119624%_
                                                          _%g119622119627%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120011
                                              '()
                                              _%g119522119606%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120013_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g120010_|
                                                              'new-value
                                                              '#f
                                                              '#f)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__gerbil-greeting-set!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |[1]#_g120010_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont119961119962%_
                 (lambda (_%g119535119548%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%g119519119559%_
                    (lambda ()
                      (let ((_%g119535119548%_ _%__stx119954119955%_))
                        (if (gx#identifier? _%g119535119548%_)
                            (_%__kont119961119962%_ _%g119535119548%_)
                            (let ()
                              (declare (not safe))
                              (_%g119520119541%_))))))
                   (_%__match119977119978%_
                    (lambda (_%e119523119566%_
                             _%hd119524119570%_
                             _%tl119525119573%_
                             _%__splice119959119960%_
                             _%target119526119576%_
                             _%tl119528119579%_)
                      (letrec ((_%loop119529119582%_
                                (lambda (_%hd119527119586%_
                                         _%arg119533119589%_)
                                  (if (gx#stx-pair? _%hd119527119586%_)
                                      (let ((_%e119530119592%_
                                             (gx#syntax-e _%hd119527119586%_)))
                                        (let ((_%lp-tl119532119599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e119530119592%_)))
                                              (_%lp-hd119531119596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e119530119592%_))))
                                          (_%loop119529119582%_
                                           _%lp-tl119532119599%_
                                           (cons _%lp-hd119531119596%_
                                                 _%arg119533119589%_))))
                                      (let ((_%arg119534119602%_
                                             (reverse _%arg119533119589%_)))
                                        (_%__kont119957119958%_
                                         _%arg119534119602%_))))))
                        (_%loop119529119582%_ _%target119526119576%_ '())))))
              (if (gx#stx-pair? _%__stx119954119955%_)
                  (let ((_%e119523119566%_
                         (gx#syntax-e _%__stx119954119955%_)))
                    (let ((_%tl119525119573%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e119523119566%_)))
                          (_%hd119524119570%_
                           (let ()
                             (declare (not safe))
                             (##car _%e119523119566%_))))
                      (if (gx#stx-pair/null? _%tl119525119573%_)
                          (let ((_%__splice119959119960%_
                                 (gx#syntax-split-splice->vector
                                  _%tl119525119573%_
                                  '0)))
                            (let ((_%tl119528119579%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119959119960%_
                                      '1)))
                                  (_%target119526119576%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice119959119960%_
                                      '0))))
                              (if (gx#stx-null? _%tl119528119579%_)
                                  (_%__match119977119978%_
                                   _%e119523119566%_
                                   _%hd119524119570%_
                                   _%tl119525119573%_
                                   _%__splice119959119960%_
                                   _%target119526119576%_
                                   _%tl119528119579%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g119519119559%_)))))
                          (let () (declare (not safe)) (_%g119519119559%_)))))
                  (let () (declare (not safe)) (_%g119519119559%_))))))))))
