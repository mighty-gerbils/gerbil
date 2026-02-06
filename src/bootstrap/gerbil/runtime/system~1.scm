(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g116815_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg116085%_)
       (arg115997 . _%arg115997116055%_)
       (id . _%id116022%_)
       (arg115998 . _%arg115998116069%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g116816_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g116815_|)))
  (define |[1]#_g116817_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value116101%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g116818_|
    (##structure
     gx#syntax-quote::t
     '_%new-value116101%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g116817_|)))
  (define |[1]#_g116820_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g116821_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g116820_|)))
  (define |[1]#_g116822_|
    (gx#core-deserialize-mark
     '(0
       (arg116134 . _%arg116134116204%_)
       (arg . _%arg116220%_)
       (id . _%id116157%_)
       (arg116133 . _%arg116133116190%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g116823_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g116822_|)))
  (define |[1]#_g116825_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g116826_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g116825_|)))
  (define |[1]#_g116827_|
    (gx#core-deserialize-mark
     '(0
       (arg116295 . _%arg116295116365%_)
       (arg . _%arg116381%_)
       (id . _%id116318%_)
       (arg116294 . _%arg116294116351%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g116828_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g116827_|)))
  (define |[1]#_g116830_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g116831_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g116830_|)))
  (define |[1]#_g116832_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg116524%_)
       (id . _%id116461%_)
       (arg116437 . _%arg116437116494%_)
       (arg116438 . _%arg116438116508%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g116833_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g116832_|)))
  (define |[1]#_g116834_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value116540%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g116835_|
    (##structure
     gx#syntax-quote::t
     '_%new-value116540%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g116834_|)))
  (define |[1]#_g116837_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g116838_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g116837_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx115979%_)
        (let* ((_%__stx116700116701%_ _%$stx115979%_)
               (_%g115984116005%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx116700116701%_))))
          (let ((_%__kont116703116704%_
                 (lambda (_%g115986116071%_)
                   (cons (gx#datum->syntax
                          |[1]#_g116816_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g116818_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp116819
                                                  (lambda (_%g116086116089%_
                                                           _%g116087116092%_)
                                                    (cons _%g116086116089%_
                                                          _%g116087116092%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp116819
                                              '()
                                              _%g115986116071%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g116821_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g116818_|
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
                            |[1]#_g116818_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont116707116708%_
                 (lambda (_%g115999116012%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%g115983116024%_
                    (lambda ()
                      (let ((_%g115999116012%_ _%__stx116700116701%_))
                        (if (gx#identifier? _%g115999116012%_)
                            (_%__kont116707116708%_ _%g115999116012%_)
                            (let ()
                              (declare (not safe))
                              (_%g115984116005%_))))))
                   (_%__match116723116724%_
                    (lambda (_%e115987116031%_
                             _%hd115988116035%_
                             _%tl115989116038%_
                             _%__splice116705116706%_
                             _%target115990116041%_
                             _%tl115992116044%_)
                      (letrec ((_%loop115993116047%_
                                (lambda (_%hd115991116051%_
                                         _%arg115997116054%_)
                                  (if (gx#stx-pair? _%hd115991116051%_)
                                      (let ((_%e115994116057%_
                                             (gx#syntax-e _%hd115991116051%_)))
                                        (let ((_%lp-tl115996116064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e115994116057%_)))
                                              (_%lp-hd115995116061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e115994116057%_))))
                                          (_%loop115993116047%_
                                           _%lp-tl115996116064%_
                                           (cons _%lp-hd115995116061%_
                                                 _%arg115997116054%_))))
                                      (let ((_%arg115998116067%_
                                             (reverse _%arg115997116054%_)))
                                        (_%__kont116703116704%_
                                         _%arg115998116067%_))))))
                        (_%loop115993116047%_ _%target115990116041%_ '())))))
              (if (gx#stx-pair? _%__stx116700116701%_)
                  (let ((_%e115987116031%_
                         (gx#syntax-e _%__stx116700116701%_)))
                    (let ((_%tl115989116038%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e115987116031%_)))
                          (_%hd115988116035%_
                           (let ()
                             (declare (not safe))
                             (##car _%e115987116031%_))))
                      (if (gx#stx-pair/null? _%tl115989116038%_)
                          (let ((_%__splice116705116706%_
                                 (gx#syntax-split-splice->vector
                                  _%tl115989116038%_
                                  '0)))
                            (let ((_%tl115992116044%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice116705116706%_
                                      '1)))
                                  (_%target115990116041%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice116705116706%_
                                      '0))))
                              (if (gx#stx-null? _%tl115992116044%_)
                                  (_%__match116723116724%_
                                   _%e115987116031%_
                                   _%hd115988116035%_
                                   _%tl115989116038%_
                                   _%__splice116705116706%_
                                   _%target115990116041%_
                                   _%tl115992116044%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g115983116024%_)))))
                          (let () (declare (not safe)) (_%g115983116024%_)))))
                  (let () (declare (not safe)) (_%g115983116024%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx116115%_)
        (let* ((_%__stx116726116727%_ _%$stx116115%_)
               (_%g116120116141%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx116726116727%_))))
          (let ((_%__kont116729116730%_
                 (lambda (_%g116122116206%_)
                   (cons (gx#datum->syntax
                          |[1]#_g116823_|
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
                                     (cons (let ((__tmp116824
                                                  (lambda (_%g116221116224%_
                                                           _%g116222116227%_)
                                                    (cons _%g116221116224%_
                                                          _%g116222116227%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp116824
                                              '()
                                              _%g116122116206%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g116826_|
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
                (_%__kont116733116734%_
                 (lambda (_%g116135116148%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%g116119116159%_
                    (lambda ()
                      (let ((_%g116135116148%_ _%__stx116726116727%_))
                        (if (gx#identifier? _%g116135116148%_)
                            (_%__kont116733116734%_ _%g116135116148%_)
                            (let ()
                              (declare (not safe))
                              (_%g116120116141%_))))))
                   (_%__match116749116750%_
                    (lambda (_%e116123116166%_
                             _%hd116124116170%_
                             _%tl116125116173%_
                             _%__splice116731116732%_
                             _%target116126116176%_
                             _%tl116128116179%_)
                      (letrec ((_%loop116129116182%_
                                (lambda (_%hd116127116186%_
                                         _%arg116133116189%_)
                                  (if (gx#stx-pair? _%hd116127116186%_)
                                      (let ((_%e116130116192%_
                                             (gx#syntax-e _%hd116127116186%_)))
                                        (let ((_%lp-tl116132116199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e116130116192%_)))
                                              (_%lp-hd116131116196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e116130116192%_))))
                                          (_%loop116129116182%_
                                           _%lp-tl116132116199%_
                                           (cons _%lp-hd116131116196%_
                                                 _%arg116133116189%_))))
                                      (let ((_%arg116134116202%_
                                             (reverse _%arg116133116189%_)))
                                        (_%__kont116729116730%_
                                         _%arg116134116202%_))))))
                        (_%loop116129116182%_ _%target116126116176%_ '())))))
              (if (gx#stx-pair? _%__stx116726116727%_)
                  (let ((_%e116123116166%_
                         (gx#syntax-e _%__stx116726116727%_)))
                    (let ((_%tl116125116173%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e116123116166%_)))
                          (_%hd116124116170%_
                           (let ()
                             (declare (not safe))
                             (##car _%e116123116166%_))))
                      (if (gx#stx-pair/null? _%tl116125116173%_)
                          (let ((_%__splice116731116732%_
                                 (gx#syntax-split-splice->vector
                                  _%tl116125116173%_
                                  '0)))
                            (let ((_%tl116128116179%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice116731116732%_
                                      '1)))
                                  (_%target116126116176%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice116731116732%_
                                      '0))))
                              (if (gx#stx-null? _%tl116128116179%_)
                                  (_%__match116749116750%_
                                   _%e116123116166%_
                                   _%hd116124116170%_
                                   _%tl116125116173%_
                                   _%__splice116731116732%_
                                   _%target116126116176%_
                                   _%tl116128116179%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g116119116159%_)))))
                          (let () (declare (not safe)) (_%g116119116159%_)))))
                  (let () (declare (not safe)) (_%g116119116159%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx116276%_)
        (let* ((_%__stx116752116753%_ _%$stx116276%_)
               (_%g116281116302%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx116752116753%_))))
          (let ((_%__kont116755116756%_
                 (lambda (_%g116283116367%_)
                   (cons (gx#datum->syntax
                          |[1]#_g116828_|
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
                                     (cons (let ((__tmp116829
                                                  (lambda (_%g116382116385%_
                                                           _%g116383116388%_)
                                                    (cons _%g116382116385%_
                                                          _%g116383116388%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp116829
                                              '()
                                              _%g116283116367%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g116831_|
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
                (_%__kont116759116760%_
                 (lambda (_%g116296116309%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%g116280116320%_
                    (lambda ()
                      (let ((_%g116296116309%_ _%__stx116752116753%_))
                        (if (gx#identifier? _%g116296116309%_)
                            (_%__kont116759116760%_ _%g116296116309%_)
                            (let ()
                              (declare (not safe))
                              (_%g116281116302%_))))))
                   (_%__match116775116776%_
                    (lambda (_%e116284116327%_
                             _%hd116285116331%_
                             _%tl116286116334%_
                             _%__splice116757116758%_
                             _%target116287116337%_
                             _%tl116289116340%_)
                      (letrec ((_%loop116290116343%_
                                (lambda (_%hd116288116347%_
                                         _%arg116294116350%_)
                                  (if (gx#stx-pair? _%hd116288116347%_)
                                      (let ((_%e116291116353%_
                                             (gx#syntax-e _%hd116288116347%_)))
                                        (let ((_%lp-tl116293116360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e116291116353%_)))
                                              (_%lp-hd116292116357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e116291116353%_))))
                                          (_%loop116290116343%_
                                           _%lp-tl116293116360%_
                                           (cons _%lp-hd116292116357%_
                                                 _%arg116294116350%_))))
                                      (let ((_%arg116295116363%_
                                             (reverse _%arg116294116350%_)))
                                        (_%__kont116755116756%_
                                         _%arg116295116363%_))))))
                        (_%loop116290116343%_ _%target116287116337%_ '())))))
              (if (gx#stx-pair? _%__stx116752116753%_)
                  (let ((_%e116284116327%_
                         (gx#syntax-e _%__stx116752116753%_)))
                    (let ((_%tl116286116334%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e116284116327%_)))
                          (_%hd116285116331%_
                           (let ()
                             (declare (not safe))
                             (##car _%e116284116327%_))))
                      (if (gx#stx-pair/null? _%tl116286116334%_)
                          (let ((_%__splice116757116758%_
                                 (gx#syntax-split-splice->vector
                                  _%tl116286116334%_
                                  '0)))
                            (let ((_%tl116289116340%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice116757116758%_
                                      '1)))
                                  (_%target116287116337%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice116757116758%_
                                      '0))))
                              (if (gx#stx-null? _%tl116289116340%_)
                                  (_%__match116775116776%_
                                   _%e116284116327%_
                                   _%hd116285116331%_
                                   _%tl116286116334%_
                                   _%__splice116757116758%_
                                   _%target116287116337%_
                                   _%tl116289116340%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g116280116320%_)))))
                          (let () (declare (not safe)) (_%g116280116320%_)))))
                  (let () (declare (not safe)) (_%g116280116320%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx116419%_)
        (let* ((_%__stx116778116779%_ _%$stx116419%_)
               (_%g116424116445%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx116778116779%_))))
          (let ((_%__kont116781116782%_
                 (lambda (_%g116426116510%_)
                   (cons (gx#datum->syntax
                          |[1]#_g116833_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g116835_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp116836
                                                  (lambda (_%g116525116528%_
                                                           _%g116526116531%_)
                                                    (cons _%g116525116528%_
                                                          _%g116526116531%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp116836
                                              '()
                                              _%g116426116510%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g116838_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g116835_|
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
                            |[1]#_g116835_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont116785116786%_
                 (lambda (_%g116439116452%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%g116423116463%_
                    (lambda ()
                      (let ((_%g116439116452%_ _%__stx116778116779%_))
                        (if (gx#identifier? _%g116439116452%_)
                            (_%__kont116785116786%_ _%g116439116452%_)
                            (let ()
                              (declare (not safe))
                              (_%g116424116445%_))))))
                   (_%__match116801116802%_
                    (lambda (_%e116427116470%_
                             _%hd116428116474%_
                             _%tl116429116477%_
                             _%__splice116783116784%_
                             _%target116430116480%_
                             _%tl116432116483%_)
                      (letrec ((_%loop116433116486%_
                                (lambda (_%hd116431116490%_
                                         _%arg116437116493%_)
                                  (if (gx#stx-pair? _%hd116431116490%_)
                                      (let ((_%e116434116496%_
                                             (gx#syntax-e _%hd116431116490%_)))
                                        (let ((_%lp-tl116436116503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e116434116496%_)))
                                              (_%lp-hd116435116500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e116434116496%_))))
                                          (_%loop116433116486%_
                                           _%lp-tl116436116503%_
                                           (cons _%lp-hd116435116500%_
                                                 _%arg116437116493%_))))
                                      (let ((_%arg116438116506%_
                                             (reverse _%arg116437116493%_)))
                                        (_%__kont116781116782%_
                                         _%arg116438116506%_))))))
                        (_%loop116433116486%_ _%target116430116480%_ '())))))
              (if (gx#stx-pair? _%__stx116778116779%_)
                  (let ((_%e116427116470%_
                         (gx#syntax-e _%__stx116778116779%_)))
                    (let ((_%tl116429116477%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e116427116470%_)))
                          (_%hd116428116474%_
                           (let ()
                             (declare (not safe))
                             (##car _%e116427116470%_))))
                      (if (gx#stx-pair/null? _%tl116429116477%_)
                          (let ((_%__splice116783116784%_
                                 (gx#syntax-split-splice->vector
                                  _%tl116429116477%_
                                  '0)))
                            (let ((_%tl116432116483%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice116783116784%_
                                      '1)))
                                  (_%target116430116480%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice116783116784%_
                                      '0))))
                              (if (gx#stx-null? _%tl116432116483%_)
                                  (_%__match116801116802%_
                                   _%e116427116470%_
                                   _%hd116428116474%_
                                   _%tl116429116477%_
                                   _%__splice116783116784%_
                                   _%target116430116480%_
                                   _%tl116432116483%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g116423116463%_)))))
                          (let () (declare (not safe)) (_%g116423116463%_)))))
                  (let () (declare (not safe)) (_%g116423116463%_))))))))))
