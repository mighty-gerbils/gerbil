(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g120775_|
    (gx#core-deserialize-mark
     '(0
       (arg120032 . _%arg120032120090%_)
       (arg120033 . _%arg120033120104%_)
       (arg . _%arg120120%_)
       (id . _%id120057%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120776_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120775_|)))
  (define |[1]#_g120778_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120779_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120778_|)))
  (define |[1]#_g120780_|
    (gx#core-deserialize-mark
     '(0
       (arg120153 . _%arg120153120210%_)
       (arg . _%arg120240%_)
       (id . _%id120177%_)
       (arg120154 . _%arg120154120224%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120781_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120780_|)))
  (define |[1]#_g120783_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120784_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120783_|)))
  (define |[1]#_g120785_|
    (gx#core-deserialize-mark
     '(0
       (arg120273 . _%arg120273120330%_)
       (arg . _%arg120360%_)
       (id . _%id120297%_)
       (arg120274 . _%arg120274120344%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120786_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120785_|)))
  (define |[1]#_g120788_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120789_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120788_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx120014%_)
        (let* ((_%__stx120684120685%_ _%$stx120014%_)
               (_%g120019120040%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120684120685%_))))
          (let ((_%__kont120687120688%_
                 (lambda (_%g120021120106%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120776_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp120777
                                                  (lambda (_%g120121120124%_
                                                           _%g120122120127%_)
                                                    (cons _%g120121120124%_
                                                          _%g120122120127%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120777
                                              '()
                                              _%g120021120106%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120779_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'thunk)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__make-promise)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'thunk)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont120691120692%_
                 (lambda (_%g120034120047%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%g120018120059%_
                    (lambda ()
                      (let ((_%g120034120047%_ _%__stx120684120685%_))
                        (if (gx#identifier? _%g120034120047%_)
                            (_%__kont120691120692%_ _%g120034120047%_)
                            (let ()
                              (declare (not safe))
                              (_%g120019120040%_))))))
                   (_%__match120707120708%_
                    (lambda (_%e120022120066%_
                             _%hd120023120070%_
                             _%tl120024120073%_
                             _%__splice120689120690%_
                             _%target120025120076%_
                             _%tl120027120079%_)
                      (letrec ((_%loop120028120082%_
                                (lambda (_%hd120026120086%_
                                         _%arg120032120089%_)
                                  (if (gx#stx-pair? _%hd120026120086%_)
                                      (let ((_%e120029120092%_
                                             (gx#syntax-e _%hd120026120086%_)))
                                        (let ((_%lp-tl120031120099%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120029120092%_)))
                                              (_%lp-hd120030120096%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120029120092%_))))
                                          (_%loop120028120082%_
                                           _%lp-tl120031120099%_
                                           (cons _%lp-hd120030120096%_
                                                 _%arg120032120089%_))))
                                      (let ((_%arg120033120102%_
                                             (reverse _%arg120032120089%_)))
                                        (_%__kont120687120688%_
                                         _%arg120033120102%_))))))
                        (_%loop120028120082%_ _%target120025120076%_ '())))))
              (if (gx#stx-pair? _%__stx120684120685%_)
                  (let ((_%e120022120066%_
                         (gx#syntax-e _%__stx120684120685%_)))
                    (let ((_%tl120024120073%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120022120066%_)))
                          (_%hd120023120070%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120022120066%_))))
                      (if (gx#stx-pair/null? _%tl120024120073%_)
                          (let ((_%__splice120689120690%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120024120073%_
                                  '0)))
                            (let ((_%tl120027120079%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120689120690%_
                                      '1)))
                                  (_%target120025120076%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120689120690%_
                                      '0))))
                              (if (gx#stx-null? _%tl120027120079%_)
                                  (_%__match120707120708%_
                                   _%e120022120066%_
                                   _%hd120023120070%_
                                   _%tl120024120073%_
                                   _%__splice120689120690%_
                                   _%target120025120076%_
                                   _%tl120027120079%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120018120059%_)))))
                          (let () (declare (not safe)) (_%g120018120059%_)))))
                  (let () (declare (not safe)) (_%g120018120059%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx120135%_)
        (let* ((_%__stx120710120711%_ _%$stx120135%_)
               (_%g120140120161%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120710120711%_))))
          (let ((_%__kont120713120714%_
                 (lambda (_%g120142120226%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120781_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp120782
                                                  (lambda (_%g120241120244%_
                                                           _%g120242120247%_)
                                                    (cons _%g120241120244%_
                                                          _%g120242120247%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120782
                                              '()
                                              _%g120142120226%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120784_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'thunk)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__make-atomic-promise)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'thunk)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont120717120718%_
                 (lambda (_%g120155120168%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%g120139120179%_
                    (lambda ()
                      (let ((_%g120155120168%_ _%__stx120710120711%_))
                        (if (gx#identifier? _%g120155120168%_)
                            (_%__kont120717120718%_ _%g120155120168%_)
                            (let ()
                              (declare (not safe))
                              (_%g120140120161%_))))))
                   (_%__match120733120734%_
                    (lambda (_%e120143120186%_
                             _%hd120144120190%_
                             _%tl120145120193%_
                             _%__splice120715120716%_
                             _%target120146120196%_
                             _%tl120148120199%_)
                      (letrec ((_%loop120149120202%_
                                (lambda (_%hd120147120206%_
                                         _%arg120153120209%_)
                                  (if (gx#stx-pair? _%hd120147120206%_)
                                      (let ((_%e120150120212%_
                                             (gx#syntax-e _%hd120147120206%_)))
                                        (let ((_%lp-tl120152120219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120150120212%_)))
                                              (_%lp-hd120151120216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120150120212%_))))
                                          (_%loop120149120202%_
                                           _%lp-tl120152120219%_
                                           (cons _%lp-hd120151120216%_
                                                 _%arg120153120209%_))))
                                      (let ((_%arg120154120222%_
                                             (reverse _%arg120153120209%_)))
                                        (_%__kont120713120714%_
                                         _%arg120154120222%_))))))
                        (_%loop120149120202%_ _%target120146120196%_ '())))))
              (if (gx#stx-pair? _%__stx120710120711%_)
                  (let ((_%e120143120186%_
                         (gx#syntax-e _%__stx120710120711%_)))
                    (let ((_%tl120145120193%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120143120186%_)))
                          (_%hd120144120190%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120143120186%_))))
                      (if (gx#stx-pair/null? _%tl120145120193%_)
                          (let ((_%__splice120715120716%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120145120193%_
                                  '0)))
                            (let ((_%tl120148120199%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120715120716%_
                                      '1)))
                                  (_%target120146120196%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120715120716%_
                                      '0))))
                              (if (gx#stx-null? _%tl120148120199%_)
                                  (_%__match120733120734%_
                                   _%e120143120186%_
                                   _%hd120144120190%_
                                   _%tl120145120193%_
                                   _%__splice120715120716%_
                                   _%target120146120196%_
                                   _%tl120148120199%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120139120179%_)))))
                          (let () (declare (not safe)) (_%g120139120179%_)))))
                  (let () (declare (not safe)) (_%g120139120179%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx120255%_)
        (let* ((_%__stx120736120737%_ _%$stx120255%_)
               (_%g120260120281%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120736120737%_))))
          (let ((_%__kont120739120740%_
                 (lambda (_%g120262120346%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120786_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp120787
                                                  (lambda (_%g120361120364%_
                                                           _%g120362120367%_)
                                                    (cons _%g120361120364%_
                                                          _%g120362120367%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120787
                                              '()
                                              _%g120262120346%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120789_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'K)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               (cons (cons (gx#datum->syntax '#f 'fini)
                           (cons (gx#datum->syntax '#f ':)
                                 (cons (gx#datum->syntax '#f ':procedure)
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__with-unwind-protect)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'K)
                           (cons (gx#datum->syntax '#f 'fini) '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont120743120744%_
                 (lambda (_%g120275120288%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%g120259120299%_
                    (lambda ()
                      (let ((_%g120275120288%_ _%__stx120736120737%_))
                        (if (gx#identifier? _%g120275120288%_)
                            (_%__kont120743120744%_ _%g120275120288%_)
                            (let ()
                              (declare (not safe))
                              (_%g120260120281%_))))))
                   (_%__match120759120760%_
                    (lambda (_%e120263120306%_
                             _%hd120264120310%_
                             _%tl120265120313%_
                             _%__splice120741120742%_
                             _%target120266120316%_
                             _%tl120268120319%_)
                      (letrec ((_%loop120269120322%_
                                (lambda (_%hd120267120326%_
                                         _%arg120273120329%_)
                                  (if (gx#stx-pair? _%hd120267120326%_)
                                      (let ((_%e120270120332%_
                                             (gx#syntax-e _%hd120267120326%_)))
                                        (let ((_%lp-tl120272120339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e120270120332%_)))
                                              (_%lp-hd120271120336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e120270120332%_))))
                                          (_%loop120269120322%_
                                           _%lp-tl120272120339%_
                                           (cons _%lp-hd120271120336%_
                                                 _%arg120273120329%_))))
                                      (let ((_%arg120274120342%_
                                             (reverse _%arg120273120329%_)))
                                        (_%__kont120739120740%_
                                         _%arg120274120342%_))))))
                        (_%loop120269120322%_ _%target120266120316%_ '())))))
              (if (gx#stx-pair? _%__stx120736120737%_)
                  (let ((_%e120263120306%_
                         (gx#syntax-e _%__stx120736120737%_)))
                    (let ((_%tl120265120313%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e120263120306%_)))
                          (_%hd120264120310%_
                           (let ()
                             (declare (not safe))
                             (##car _%e120263120306%_))))
                      (if (gx#stx-pair/null? _%tl120265120313%_)
                          (let ((_%__splice120741120742%_
                                 (gx#syntax-split-splice->vector
                                  _%tl120265120313%_
                                  '0)))
                            (let ((_%tl120268120319%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120741120742%_
                                      '1)))
                                  (_%target120266120316%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120741120742%_
                                      '0))))
                              (if (gx#stx-null? _%tl120268120319%_)
                                  (_%__match120759120760%_
                                   _%e120263120306%_
                                   _%hd120264120310%_
                                   _%tl120265120313%_
                                   _%__splice120741120742%_
                                   _%target120266120316%_
                                   _%tl120268120319%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g120259120299%_)))))
                          (let () (declare (not safe)) (_%g120259120299%_)))))
                  (let () (declare (not safe)) (_%g120259120299%_))))))))))
