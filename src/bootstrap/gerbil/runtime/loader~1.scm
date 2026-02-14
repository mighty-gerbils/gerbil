(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g179159_|
    (gx#core-deserialize-mark
     '(0
       (arg177973 . _%arg177973178031%_)
       (arg177974 . _%arg177974178045%_)
       (id . _%id177998%_)
       (arg . _%arg178061%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179160_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179159_|)))
  (define |[1]#_g179162_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179163_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179162_|)))
  (define |[1]#_g179164_|
    (gx#core-deserialize-mark
     '(0
       (arg178108 . _%arg178108178165%_)
       (arg178109 . _%arg178109178179%_)
       (id . _%id178132%_)
       (arg . _%arg178195%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179165_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179164_|)))
  (define |[1]#_g179167_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179168_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179167_|)))
  (define |[1]#_g179169_|
    (gx#core-deserialize-mark
     '(0
       (arg178242 . _%arg178242178299%_)
       (id . _%id178266%_)
       (arg178243 . _%arg178243178313%_)
       (arg . _%arg178329%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179170_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179169_|)))
  (define |[1]#_g179172_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179173_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179172_|)))
  (define |[1]#_g179174_|
    (gx#core-deserialize-mark
     '(0
       (arg178377 . _%arg178377178447%_)
       (arg178376 . _%arg178376178433%_)
       (id . _%id178400%_)
       (arg . _%arg178463%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179175_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179174_|)))
  (define |[1]#_g179177_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179178_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179177_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx177955%_)
        (let* ((_%__stx179050179051%_ _%$stx177955%_)
               (_%g177960177981%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179050179051%_))))
          (let ((_%__kont179053179054%_
                 (lambda (_%g177962178047%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179160_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp179161
                                                  (lambda (_%g178062178065%_
                                                           _%g178063178068%_)
                                                    (cons _%g178062178065%_
                                                          _%g178063178068%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179161
                                              '()
                                              _%g177962178047%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179163_|
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
                (_%__kont179057179058%_
                 (lambda (_%g177975177988%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g177959178000%_
                    (lambda ()
                      (let ((_%g177975177988%_ _%__stx179050179051%_))
                        (if (gx#identifier? _%g177975177988%_)
                            (_%__kont179057179058%_ _%g177975177988%_)
                            (let ()
                              (declare (not safe))
                              (_%g177960177981%_))))))
                   (_%__match179073179074%_
                    (lambda (_%e177963178007%_
                             _%hd177964178011%_
                             _%tl177965178014%_
                             _%__splice179055179056%_
                             _%target177966178017%_
                             _%tl177968178020%_)
                      (letrec ((_%loop177969178023%_
                                (lambda (_%hd177967178027%_
                                         _%arg177973178030%_)
                                  (if (gx#stx-pair? _%hd177967178027%_)
                                      (let ((_%e177970178033%_
                                             (gx#syntax-e _%hd177967178027%_)))
                                        (let ((_%lp-tl177972178040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177970178033%_)))
                                              (_%lp-hd177971178037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177970178033%_))))
                                          (_%loop177969178023%_
                                           _%lp-tl177972178040%_
                                           (cons _%lp-hd177971178037%_
                                                 _%arg177973178030%_))))
                                      (let ((_%arg177974178043%_
                                             (reverse _%arg177973178030%_)))
                                        (_%__kont179053179054%_
                                         _%arg177974178043%_))))))
                        (_%loop177969178023%_ _%target177966178017%_ '())))))
              (if (gx#stx-pair? _%__stx179050179051%_)
                  (let ((_%e177963178007%_
                         (gx#syntax-e _%__stx179050179051%_)))
                    (let ((_%tl177965178014%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e177963178007%_)))
                          (_%hd177964178011%_
                           (let ()
                             (declare (not safe))
                             (##car _%e177963178007%_))))
                      (if (gx#stx-pair/null? _%tl177965178014%_)
                          (let ((_%__splice179055179056%_
                                 (gx#syntax-split-splice->vector
                                  _%tl177965178014%_
                                  '0)))
                            (let ((_%tl177968178020%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179055179056%_
                                      '1)))
                                  (_%target177966178017%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179055179056%_
                                      '0))))
                              (if (gx#stx-null? _%tl177968178020%_)
                                  (_%__match179073179074%_
                                   _%e177963178007%_
                                   _%hd177964178011%_
                                   _%tl177965178014%_
                                   _%__splice179055179056%_
                                   _%target177966178017%_
                                   _%tl177968178020%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g177959178000%_)))))
                          (let () (declare (not safe)) (_%g177959178000%_)))))
                  (let () (declare (not safe)) (_%g177959178000%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx178090%_)
        (let* ((_%__stx179076179077%_ _%$stx178090%_)
               (_%g178095178116%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179076179077%_))))
          (let ((_%__kont179079179080%_
                 (lambda (_%g178097178181%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179165_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp179166
                                                  (lambda (_%g178196178199%_
                                                           _%g178197178202%_)
                                                    (cons _%g178196178199%_
                                                          _%g178197178202%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179166
                                              '()
                                              _%g178097178181%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179168_|
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
                (_%__kont179083179084%_
                 (lambda (_%g178110178123%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g178094178134%_
                    (lambda ()
                      (let ((_%g178110178123%_ _%__stx179076179077%_))
                        (if (gx#identifier? _%g178110178123%_)
                            (_%__kont179083179084%_ _%g178110178123%_)
                            (let ()
                              (declare (not safe))
                              (_%g178095178116%_))))))
                   (_%__match179099179100%_
                    (lambda (_%e178098178141%_
                             _%hd178099178145%_
                             _%tl178100178148%_
                             _%__splice179081179082%_
                             _%target178101178151%_
                             _%tl178103178154%_)
                      (letrec ((_%loop178104178157%_
                                (lambda (_%hd178102178161%_
                                         _%arg178108178164%_)
                                  (if (gx#stx-pair? _%hd178102178161%_)
                                      (let ((_%e178105178167%_
                                             (gx#syntax-e _%hd178102178161%_)))
                                        (let ((_%lp-tl178107178174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e178105178167%_)))
                                              (_%lp-hd178106178171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e178105178167%_))))
                                          (_%loop178104178157%_
                                           _%lp-tl178107178174%_
                                           (cons _%lp-hd178106178171%_
                                                 _%arg178108178164%_))))
                                      (let ((_%arg178109178177%_
                                             (reverse _%arg178108178164%_)))
                                        (_%__kont179079179080%_
                                         _%arg178109178177%_))))))
                        (_%loop178104178157%_ _%target178101178151%_ '())))))
              (if (gx#stx-pair? _%__stx179076179077%_)
                  (let ((_%e178098178141%_
                         (gx#syntax-e _%__stx179076179077%_)))
                    (let ((_%tl178100178148%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e178098178141%_)))
                          (_%hd178099178145%_
                           (let ()
                             (declare (not safe))
                             (##car _%e178098178141%_))))
                      (if (gx#stx-pair/null? _%tl178100178148%_)
                          (let ((_%__splice179081179082%_
                                 (gx#syntax-split-splice->vector
                                  _%tl178100178148%_
                                  '0)))
                            (let ((_%tl178103178154%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179081179082%_
                                      '1)))
                                  (_%target178101178151%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179081179082%_
                                      '0))))
                              (if (gx#stx-null? _%tl178103178154%_)
                                  (_%__match179099179100%_
                                   _%e178098178141%_
                                   _%hd178099178145%_
                                   _%tl178100178148%_
                                   _%__splice179081179082%_
                                   _%target178101178151%_
                                   _%tl178103178154%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g178094178134%_)))))
                          (let () (declare (not safe)) (_%g178094178134%_)))))
                  (let () (declare (not safe)) (_%g178094178134%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx178224%_)
        (let* ((_%__stx179102179103%_ _%$stx178224%_)
               (_%g178229178250%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179102179103%_))))
          (let ((_%__kont179105179106%_
                 (lambda (_%g178231178315%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179170_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp179171
                                                  (lambda (_%g178330178333%_
                                                           _%g178331178336%_)
                                                    (cons _%g178330178333%_
                                                          _%g178331178336%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179171
                                              '()
                                              _%g178231178315%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179173_|
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
                (_%__kont179109179110%_
                 (lambda (_%g178244178257%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g178228178268%_
                    (lambda ()
                      (let ((_%g178244178257%_ _%__stx179102179103%_))
                        (if (gx#identifier? _%g178244178257%_)
                            (_%__kont179109179110%_ _%g178244178257%_)
                            (let ()
                              (declare (not safe))
                              (_%g178229178250%_))))))
                   (_%__match179125179126%_
                    (lambda (_%e178232178275%_
                             _%hd178233178279%_
                             _%tl178234178282%_
                             _%__splice179107179108%_
                             _%target178235178285%_
                             _%tl178237178288%_)
                      (letrec ((_%loop178238178291%_
                                (lambda (_%hd178236178295%_
                                         _%arg178242178298%_)
                                  (if (gx#stx-pair? _%hd178236178295%_)
                                      (let ((_%e178239178301%_
                                             (gx#syntax-e _%hd178236178295%_)))
                                        (let ((_%lp-tl178241178308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e178239178301%_)))
                                              (_%lp-hd178240178305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e178239178301%_))))
                                          (_%loop178238178291%_
                                           _%lp-tl178241178308%_
                                           (cons _%lp-hd178240178305%_
                                                 _%arg178242178298%_))))
                                      (let ((_%arg178243178311%_
                                             (reverse _%arg178242178298%_)))
                                        (_%__kont179105179106%_
                                         _%arg178243178311%_))))))
                        (_%loop178238178291%_ _%target178235178285%_ '())))))
              (if (gx#stx-pair? _%__stx179102179103%_)
                  (let ((_%e178232178275%_
                         (gx#syntax-e _%__stx179102179103%_)))
                    (let ((_%tl178234178282%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e178232178275%_)))
                          (_%hd178233178279%_
                           (let ()
                             (declare (not safe))
                             (##car _%e178232178275%_))))
                      (if (gx#stx-pair/null? _%tl178234178282%_)
                          (let ((_%__splice179107179108%_
                                 (gx#syntax-split-splice->vector
                                  _%tl178234178282%_
                                  '0)))
                            (let ((_%tl178237178288%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179107179108%_
                                      '1)))
                                  (_%target178235178285%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179107179108%_
                                      '0))))
                              (if (gx#stx-null? _%tl178237178288%_)
                                  (_%__match179125179126%_
                                   _%e178232178275%_
                                   _%hd178233178279%_
                                   _%tl178234178282%_
                                   _%__splice179107179108%_
                                   _%target178235178285%_
                                   _%tl178237178288%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g178228178268%_)))))
                          (let () (declare (not safe)) (_%g178228178268%_)))))
                  (let () (declare (not safe)) (_%g178228178268%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx178358%_)
        (let* ((_%__stx179128179129%_ _%$stx178358%_)
               (_%g178363178384%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179128179129%_))))
          (let ((_%__kont179131179132%_
                 (lambda (_%g178365178449%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179175_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp179176
                                                  (lambda (_%g178464178467%_
                                                           _%g178465178470%_)
                                                    (cons _%g178464178467%_
                                                          _%g178465178470%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179176
                                              '()
                                              _%g178365178449%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179178_|
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
                (_%__kont179135179136%_
                 (lambda (_%g178378178391%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g178362178402%_
                    (lambda ()
                      (let ((_%g178378178391%_ _%__stx179128179129%_))
                        (if (gx#identifier? _%g178378178391%_)
                            (_%__kont179135179136%_ _%g178378178391%_)
                            (let ()
                              (declare (not safe))
                              (_%g178363178384%_))))))
                   (_%__match179151179152%_
                    (lambda (_%e178366178409%_
                             _%hd178367178413%_
                             _%tl178368178416%_
                             _%__splice179133179134%_
                             _%target178369178419%_
                             _%tl178371178422%_)
                      (letrec ((_%loop178372178425%_
                                (lambda (_%hd178370178429%_
                                         _%arg178376178432%_)
                                  (if (gx#stx-pair? _%hd178370178429%_)
                                      (let ((_%e178373178435%_
                                             (gx#syntax-e _%hd178370178429%_)))
                                        (let ((_%lp-tl178375178442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e178373178435%_)))
                                              (_%lp-hd178374178439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e178373178435%_))))
                                          (_%loop178372178425%_
                                           _%lp-tl178375178442%_
                                           (cons _%lp-hd178374178439%_
                                                 _%arg178376178432%_))))
                                      (let ((_%arg178377178445%_
                                             (reverse _%arg178376178432%_)))
                                        (_%__kont179131179132%_
                                         _%arg178377178445%_))))))
                        (_%loop178372178425%_ _%target178369178419%_ '())))))
              (if (gx#stx-pair? _%__stx179128179129%_)
                  (let ((_%e178366178409%_
                         (gx#syntax-e _%__stx179128179129%_)))
                    (let ((_%tl178368178416%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e178366178409%_)))
                          (_%hd178367178413%_
                           (let ()
                             (declare (not safe))
                             (##car _%e178366178409%_))))
                      (if (gx#stx-pair/null? _%tl178368178416%_)
                          (let ((_%__splice179133179134%_
                                 (gx#syntax-split-splice->vector
                                  _%tl178368178416%_
                                  '0)))
                            (let ((_%tl178371178422%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179133179134%_
                                      '1)))
                                  (_%target178369178419%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179133179134%_
                                      '0))))
                              (if (gx#stx-null? _%tl178371178422%_)
                                  (_%__match179151179152%_
                                   _%e178366178409%_
                                   _%hd178367178413%_
                                   _%tl178368178416%_
                                   _%__splice179133179134%_
                                   _%target178369178419%_
                                   _%tl178371178422%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g178362178402%_)))))
                          (let () (declare (not safe)) (_%g178362178402%_)))))
                  (let () (declare (not safe)) (_%g178362178402%_))))))))))
