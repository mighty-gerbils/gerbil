(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g232701_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232708_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232710_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232712_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232714_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232716_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232728_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232730_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232732_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232734_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232736_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx226159%_)
        (let* ((_%g226163226181%_
                (lambda (_%g226164226177%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226164226177%_))))
               (_%g226162226236%_
                (lambda (_%g226164226185%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226164226185%_))
                      (let ((_%e226167226188%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226164226185%_))))
                        (let ((_%hd226168226192%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226167226188%_)))
                              (_%tl226169226195%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226167226188%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226169226195%_))
                              (let ((_%e226170226198%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226169226195%_))))
                                (let ((_%hd226171226202%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226170226198%_)))
                                      (_%tl226172226205%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226170226198%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226172226205%_))
                                      (let ((_%e226173226208%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226172226205%_))))
                                        (let ((_%hd226174226212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226173226208%_)))
                                              (_%tl226175226215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226173226208%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226175226215%_))
                                              ((lambda (_%g226165226218%_
                                                        _%g226166226220%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g226166226220%_))
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
                               (cons _%g226166226220%_ '()))
                         (cons _%g226165226218%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g226163226181%_
                                                      _%g226164226185%_)))
                                               _%hd226174226212%_
                                               _%hd226171226202%_)
                                              (_%g226163226181%_
                                               _%g226164226185%_))))
                                      (_%g226163226181%_ _%g226164226185%_))))
                              (_%g226163226181%_ _%g226164226185%_))))
                      (_%g226163226181%_ _%g226164226185%_)))))
          (_%g226162226236%_ _%$stx226159%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx226240%_)
        (let* ((_%g226244226262%_
                (lambda (_%g226245226258%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226245226258%_))))
               (_%g226243226317%_
                (lambda (_%g226245226266%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226245226266%_))
                      (let ((_%e226248226269%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226245226266%_))))
                        (let ((_%hd226249226273%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226248226269%_)))
                              (_%tl226250226276%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226248226269%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226250226276%_))
                              (let ((_%e226251226279%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226250226276%_))))
                                (let ((_%hd226252226283%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226251226279%_)))
                                      (_%tl226253226286%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226251226279%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226253226286%_))
                                      (let ((_%e226254226289%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226253226286%_))))
                                        (let ((_%hd226255226293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226254226289%_)))
                                              (_%tl226256226296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226254226289%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226256226296%_))
                                              ((lambda (_%g226246226299%_
                                                        _%g226247226301%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g226247226301%_))
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
                               (cons _%g226247226301%_ '()))
                         (cons _%g226246226299%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g226244226262%_
                                                      _%g226245226266%_)))
                                               _%hd226255226293%_
                                               _%hd226252226283%_)
                                              (_%g226244226262%_
                                               _%g226245226266%_))))
                                      (_%g226244226262%_ _%g226245226266%_))))
                              (_%g226244226262%_ _%g226245226266%_))))
                      (_%g226244226262%_ _%g226245226266%_)))))
          (_%g226243226317%_ _%$stx226240%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx226321%_)
        (let* ((_%g226325226354%_
                (lambda (_%g226326226350%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226326226350%_))))
               (_%g226324226450%_
                (lambda (_%g226326226358%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226326226358%_))
                      (let ((_%e226329226361%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226326226358%_))))
                        (let ((_%hd226330226365%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226329226361%_)))
                              (_%tl226331226368%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226329226361%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl226331226368%_))
                              (let ((_g232679_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl226331226368%_
                                        '0))))
                                (begin
                                  (let ((_g232680_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232679_)
                                               (##values-length _g232679_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232680_ 2)))
                                        (error "Context expects 2 values"
                                               _g232680_)))
                                  (let ((_%target226332226371%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232679_ 0)))
                                        (_%tl226334226374%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232679_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226334226374%_))
                                        (letrec ((_%loop226335226377%_
                                                  (lambda (_%hd226333226381%_
                                                           _%type226339226384%_
                                                           _%symbol226340226385%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd226333226381%_))
                                                        (let ((_%e226336226387%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd226333226381%_))))
                  (let ((_%lp-hd226337226391%_
                         (let ()
                           (declare (not safe))
                           (##car _%e226336226387%_)))
                        (_%lp-tl226338226394%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e226336226387%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd226337226391%_))
                        (let ((_%e226343226397%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd226337226391%_))))
                          (let ((_%hd226344226401%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226343226397%_)))
                                (_%tl226345226404%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226343226397%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226345226404%_))
                                (let ((_%e226346226407%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl226345226404%_))))
                                  (let ((_%hd226347226411%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226346226407%_)))
                                        (_%tl226348226414%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226346226407%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226348226414%_))
                                        (_%loop226335226377%_
                                         _%lp-tl226338226394%_
                                         (cons _%hd226347226411%_
                                               _%type226339226384%_)
                                         (cons _%hd226344226401%_
                                               _%symbol226340226385%_))
                                        (_%g226325226354%_
                                         _%g226326226358%_))))
                                (_%g226325226354%_ _%g226326226358%_))))
                        (_%g226325226354%_ _%g226326226358%_))))
                (let ((_%type226341226417%_ (reverse _%type226339226384%_))
                      (_%symbol226342226419%_
                       (reverse _%symbol226340226385%_)))
                  ((lambda (_%g226327226421%_ _%g226328226423%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g226327226421%_
                                _%g226328226423%_))
                             (let ((__tmp232681
                                    (lambda (_%g226438226442%_
                                             _%g226439226445%_
                                             _%g226440226447%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g226439226445%_
                                                        (cons _%g226438226442%_
                                                              '())))
                                            _%g226440226447%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp232681
                                '()
                                _%g226327226421%_
                                _%g226328226423%_)))))
                   _%type226341226417%_
                   _%symbol226342226419%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop226335226377%_
                                           _%target226332226371%_
                                           '()
                                           '()))
                                        (_%g226325226354%_
                                         _%g226326226358%_)))))
                              (_%g226325226354%_ _%g226326226358%_))))
                      (_%g226325226354%_ _%g226326226358%_)))))
          (_%g226324226450%_ _%$stx226321%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx226455%_)
        (let* ((_%__stx231990231991%_ _%$stx226455%_)
               (_%g226460226502%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx231990231991%_)))))
          (let ((_%__kont231993231994%_
                 (lambda (_%g226462226630%_
                          _%g226463226632%_
                          _%g226464226633%_
                          _%g226465226634%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g226465226634%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g226464226633%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g226463226632%_ '()))
                                           (cons _%g226462226630%_ '())))))))
                (_%__kont231995231996%_
                 (lambda (_%g226481226549%_
                          _%g226482226551%_
                          _%g226483226552%_
                          _%g226484226553%_)
                   (cons _%g226484226553%_
                         (cons _%g226483226552%_
                               (cons _%g226482226551%_
                                     (cons _%g226481226549%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match232029232030%_
                   (lambda (_%e226466226580%_
                            _%hd226467226584%_
                            _%tl226468226587%_
                            _%e226469226590%_
                            _%hd226470226594%_
                            _%tl226471226597%_
                            _%e226472226600%_
                            _%hd226473226604%_
                            _%tl226474226607%_
                            _%e226475226610%_
                            _%hd226476226614%_
                            _%tl226477226617%_
                            _%e226478226620%_
                            _%hd226479226624%_
                            _%tl226480226627%_)
                     (let ((_%g226462226630%_ _%hd226479226624%_)
                           (_%g226463226632%_ _%hd226476226614%_)
                           (_%g226464226633%_ _%hd226473226604%_)
                           (_%g226465226634%_ _%hd226470226594%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226465226634%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226464226633%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226463226632%_)))
                           (_%__kont231993231994%_
                            _%g226462226630%_
                            _%g226463226632%_
                            _%g226464226633%_
                            _%g226465226634%_)
                           (let ()
                             (declare (not safe))
                             (_%g226460226502%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx231990231991%_))
                  (let ((_%e226466226580%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx231990231991%_))))
                    (let ((_%tl226468226587%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e226466226580%_)))
                          (_%hd226467226584%_
                           (let ()
                             (declare (not safe))
                             (##car _%e226466226580%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226468226587%_))
                          (let ((_%e226469226590%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl226468226587%_))))
                            (let ((_%tl226471226597%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226469226590%_)))
                                  (_%hd226470226594%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226469226590%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl226471226597%_))
                                  (let ((_%e226472226600%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl226471226597%_))))
                                    (let ((_%tl226474226607%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e226472226600%_)))
                                          (_%hd226473226604%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e226472226600%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl226474226607%_))
                                          (let ((_%e226475226610%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl226474226607%_))))
                                            (let ((_%tl226477226617%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e226475226610%_)))
                                                  (_%hd226476226614%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e226475226610%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl226477226617%_))
                                                  (let ((_%e226478226620%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl226477226617%_))))
                                                    (let ((_%tl226480226627%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e226478226620%_)))
                                                          (_%hd226479226624%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e226478226620%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl226480226627%_))
                                                          (_%__match232029232030%_
                                                           _%e226466226580%_
                                                           _%hd226467226584%_
                                                           _%tl226468226587%_
                                                           _%e226469226590%_
                                                           _%hd226470226594%_
                                                           _%tl226471226597%_
                                                           _%e226472226600%_
                                                           _%hd226473226604%_
                                                           _%tl226474226607%_
                                                           _%e226475226610%_
                                                           _%hd226476226614%_
                                                           _%tl226477226617%_
                                                           _%e226478226620%_
                                                           _%hd226479226624%_
                                                           _%tl226480226627%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g226460226502%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl226477226617%_))
                                                      (_%__kont231995231996%_
                                                       _%hd226476226614%_
                                                       _%hd226473226604%_
                                                       _%hd226470226594%_
                                                       _%hd226467226584%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g226460226502%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g226460226502%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g226460226502%_)))))
                          (let () (declare (not safe)) (_%g226460226502%_)))))
                  (let () (declare (not safe)) (_%g226460226502%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx226659%_)
        (let* ((_%g226663226698%_
                (lambda (_%g226664226694%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226664226694%_))))
               (_%g226662226811%_
                (lambda (_%g226664226702%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226664226702%_))
                      (let ((_%e226668226705%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226664226702%_))))
                        (let ((_%hd226669226709%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226668226705%_)))
                              (_%tl226670226712%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226668226705%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl226670226712%_))
                              (let ((_g232682_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl226670226712%_
                                        '0))))
                                (begin
                                  (let ((_g232683_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232682_)
                                               (##values-length _g232682_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232683_ 2)))
                                        (error "Context expects 2 values"
                                               _g232683_)))
                                  (let ((_%target226671226715%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232682_ 0)))
                                        (_%tl226673226718%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232682_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226673226718%_))
                                        (letrec ((_%loop226674226721%_
                                                  (lambda (_%hd226672226725%_
                                                           _%symbol226678226728%_
                                                           _%method226679226729%_
                                                           _%type-t226680226730%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd226672226725%_))
                                                        (let ((_%e226675226732%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd226672226725%_))))
                  (let ((_%lp-hd226676226736%_
                         (let ()
                           (declare (not safe))
                           (##car _%e226675226732%_)))
                        (_%lp-tl226677226739%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e226675226732%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd226676226736%_))
                        (let ((_%e226684226742%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd226676226736%_))))
                          (let ((_%hd226685226746%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226684226742%_)))
                                (_%tl226686226749%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226684226742%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226686226749%_))
                                (let ((_%e226687226752%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl226686226749%_))))
                                  (let ((_%hd226688226756%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226687226752%_)))
                                        (_%tl226689226759%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226687226752%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl226689226759%_))
                                        (let ((_%e226690226762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl226689226759%_))))
                                          (let ((_%hd226691226766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e226690226762%_)))
                                                (_%tl226692226769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e226690226762%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl226692226769%_))
                                                (_%loop226674226721%_
                                                 _%lp-tl226677226739%_
                                                 (cons _%hd226691226766%_
                                                       _%symbol226678226728%_)
                                                 (cons _%hd226688226756%_
                                                       _%method226679226729%_)
                                                 (cons _%hd226685226746%_
                                                       _%type-t226680226730%_))
                                                (_%g226663226698%_
                                                 _%g226664226702%_))))
                                        (_%g226663226698%_
                                         _%g226664226702%_))))
                                (_%g226663226698%_ _%g226664226702%_))))
                        (_%g226663226698%_ _%g226664226702%_))))
                (let ((_%symbol226681226772%_ (reverse _%symbol226678226728%_))
                      (_%method226682226774%_ (reverse _%method226679226729%_))
                      (_%type-t226683226775%_
                       (reverse _%type-t226680226730%_)))
                  ((lambda (_%g226665226777%_
                            _%g226666226779%_
                            _%g226667226780%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g226665226777%_
                                _%g226666226779%_
                                _%g226667226780%_))
                             (let ((__tmp232684
                                    (lambda (_%g226796226801%_
                                             _%g226797226804%_
                                             _%g226798226806%_
                                             _%g226799226808%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g226798226806%_
                                                        (cons _%g226797226804%_
                                                              (cons _%g226796226801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g226799226808%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp232684
                                '()
                                _%g226665226777%_
                                _%g226666226779%_
                                _%g226667226780%_)))))
                   _%symbol226681226772%_
                   _%method226682226774%_
                   _%type-t226683226775%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop226674226721%_
                                           _%target226671226715%_
                                           '()
                                           '()
                                           '()))
                                        (_%g226663226698%_
                                         _%g226664226702%_)))))
                              (_%g226663226698%_ _%g226664226702%_))))
                      (_%g226663226698%_ _%g226664226702%_)))))
          (_%g226662226811%_ _%$stx226659%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx226816%_)
        (let* ((_%g226820226853%_
                (lambda (_%g226821226849%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226821226849%_))))
               (_%g226819226963%_
                (lambda (_%g226821226857%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226821226857%_))
                      (let ((_%e226825226860%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226821226857%_))))
                        (let ((_%hd226826226864%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226825226860%_)))
                              (_%tl226827226867%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226825226860%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226827226867%_))
                              (let ((_%e226828226870%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226827226867%_))))
                                (let ((_%hd226829226874%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226828226870%_)))
                                      (_%tl226830226877%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226828226870%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl226830226877%_))
                                      (let ((_g232685_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl226830226877%_
                                                '0))))
                                        (begin
                                          (let ((_g232686_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232685_)
                                                       (##values-length
                                                        _g232685_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232686_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232686_)))
                                          (let ((_%target226831226880%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232685_ 0)))
                                                (_%tl226833226883%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232685_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl226833226883%_))
                                                (letrec ((_%loop226834226886%_
                                                          (lambda (_%hd226832226890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol226838226893%_
                           _%method226839226894%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd226832226890%_))
                        (let ((_%e226835226896%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd226832226890%_))))
                          (let ((_%lp-hd226836226900%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226835226896%_)))
                                (_%lp-tl226837226903%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226835226896%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd226836226900%_))
                                (let ((_%e226842226906%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd226836226900%_))))
                                  (let ((_%hd226843226910%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226842226906%_)))
                                        (_%tl226844226913%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226842226906%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl226844226913%_))
                                        (let ((_%e226845226916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl226844226913%_))))
                                          (let ((_%hd226846226920%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e226845226916%_)))
                                                (_%tl226847226923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e226845226916%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl226847226923%_))
                                                (_%loop226834226886%_
                                                 _%lp-tl226837226903%_
                                                 (cons _%hd226846226920%_
                                                       _%symbol226838226893%_)
                                                 (cons _%hd226843226910%_
                                                       _%method226839226894%_))
                                                (_%g226820226853%_
                                                 _%g226821226857%_))))
                                        (_%g226820226853%_
                                         _%g226821226857%_))))
                                (_%g226820226853%_ _%g226821226857%_))))
                        (let ((_%symbol226840226926%_
                               (reverse _%symbol226838226893%_))
                              (_%method226841226928%_
                               (reverse _%method226839226894%_)))
                          ((lambda (_%g226822226930%_
                                    _%g226823226932%_
                                    _%g226824226933%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g226822226930%_
                                        _%g226823226932%_))
                                     (let ((__tmp232687
                                            (lambda (_%g226951226955%_
                                                     _%g226952226958%_
                                                     _%g226953226960%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g226824226933%_
                                                                (cons _%g226952226958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g226951226955%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g226953226960%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp232687
                                        '()
                                        _%g226822226930%_
                                        _%g226823226932%_)))))
                           _%symbol226840226926%_
                           _%method226841226928%_
                           _%hd226829226874%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop226834226886%_
                                                   _%target226831226880%_
                                                   '()
                                                   '()))
                                                (_%g226820226853%_
                                                 _%g226821226857%_)))))
                                      (_%g226820226853%_ _%g226821226857%_))))
                              (_%g226820226853%_ _%g226821226857%_))))
                      (_%g226820226853%_ _%g226821226857%_)))))
          (_%g226819226963%_ _%$stx226816%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx226968%_)
        (let* ((_%g226972226986%_
                (lambda (_%g226973226982%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226973226982%_))))
               (_%g226971227027%_
                (lambda (_%g226973226990%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226973226990%_))
                      (let ((_%e226975226993%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226973226990%_))))
                        (let ((_%hd226976226997%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226975226993%_)))
                              (_%tl226977227000%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226975226993%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226977227000%_))
                              (let ((_%e226978227003%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226977227000%_))))
                                (let ((_%hd226979227007%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226978227003%_)))
                                      (_%tl226980227010%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226978227003%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl226980227010%_))
                                      ((lambda (_%g226974227013%_)
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
                                                           (cons _%g226974227013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd226979227007%_)
                                      (_%g226972226986%_ _%g226973226990%_))))
                              (_%g226972226986%_ _%g226973226990%_))))
                      (_%g226972226986%_ _%g226973226990%_)))))
          (_%g226971227027%_ _%$stx226968%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx227031%_)
        (let* ((_%g227035227089%_
                (lambda (_%g227036227085%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227036227085%_))))
               (_%g227034227270%_
                (lambda (_%g227036227093%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227036227093%_))
                      (let ((_%e227048227096%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227036227093%_))))
                        (let ((_%hd227049227100%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227048227096%_)))
                              (_%tl227050227103%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227048227096%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227050227103%_))
                              (let ((_%e227051227106%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227050227103%_))))
                                (let ((_%hd227052227110%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227051227106%_)))
                                      (_%tl227053227113%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227051227106%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227053227113%_))
                                      (let ((_%e227054227116%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227053227113%_))))
                                        (let ((_%hd227055227120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227054227116%_)))
                                              (_%tl227056227123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227054227116%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227056227123%_))
                                              (let ((_%e227057227126%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227056227123%_))))
                                                (let ((_%hd227058227130%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227057227126%_)))
                                                      (_%tl227059227133%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227057227126%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl227059227133%_))
                                                      (let ((_%e227060227136%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl227059227133%_))))
                (let ((_%hd227061227140%_
                       (let () (declare (not safe)) (##car _%e227060227136%_)))
                      (_%tl227062227143%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e227060227136%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227062227143%_))
                      (let ((_%e227063227146%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227062227143%_))))
                        (let ((_%hd227064227150%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227063227146%_)))
                              (_%tl227065227153%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227063227146%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227065227153%_))
                              (let ((_%e227066227156%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227065227153%_))))
                                (let ((_%hd227067227160%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227066227156%_)))
                                      (_%tl227068227163%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227066227156%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227068227163%_))
                                      (let ((_%e227069227166%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227068227163%_))))
                                        (let ((_%hd227070227170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227069227166%_)))
                                              (_%tl227071227173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227069227166%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227071227173%_))
                                              (let ((_%e227072227176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227071227173%_))))
                                                (let ((_%hd227073227180%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227072227176%_)))
                                                      (_%tl227074227183%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227072227176%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl227074227183%_))
                                                      (let ((_%e227075227186%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl227074227183%_))))
                (let ((_%hd227076227190%_
                       (let () (declare (not safe)) (##car _%e227075227186%_)))
                      (_%tl227077227193%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e227075227186%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227077227193%_))
                      (let ((_%e227078227196%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227077227193%_))))
                        (let ((_%hd227079227200%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227078227196%_)))
                              (_%tl227080227203%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227078227196%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227080227203%_))
                              (let ((_%e227081227206%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227080227203%_))))
                                (let ((_%hd227082227210%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227081227206%_)))
                                      (_%tl227083227213%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227081227206%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227083227213%_))
                                      ((lambda (_%g227037227216%_
                                                _%g227038227218%_
                                                _%g227039227219%_
                                                _%g227040227220%_
                                                _%g227041227221%_
                                                _%g227042227222%_
                                                _%g227043227223%_
                                                _%g227044227224%_
                                                _%g227045227225%_
                                                _%g227046227226%_
                                                _%g227047227227%_)
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
                                                           (cons _%g227047227227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g227046227226%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g227045227225%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227044227224%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227043227223%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g227042227222%_ '()))
                                           (cons _%g227041227221%_
                                                 (cons _%g227040227220%_
                                                       (cons _%g227039227219%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g227038227218%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g227037227216%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd227082227210%_
                                       _%hd227079227200%_
                                       _%hd227076227190%_
                                       _%hd227073227180%_
                                       _%hd227070227170%_
                                       _%hd227067227160%_
                                       _%hd227064227150%_
                                       _%hd227061227140%_
                                       _%hd227058227130%_
                                       _%hd227055227120%_
                                       _%hd227052227110%_)
                                      (_%g227035227089%_ _%g227036227093%_))))
                              (_%g227035227089%_ _%g227036227093%_))))
                      (_%g227035227089%_ _%g227036227093%_))))
              (_%g227035227089%_ _%g227036227093%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227035227089%_
                                               _%g227036227093%_))))
                                      (_%g227035227089%_ _%g227036227093%_))))
                              (_%g227035227089%_ _%g227036227093%_))))
                      (_%g227035227089%_ _%g227036227093%_))))
              (_%g227035227089%_ _%g227036227093%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227035227089%_
                                               _%g227036227093%_))))
                                      (_%g227035227089%_ _%g227036227093%_))))
                              (_%g227035227089%_ _%g227036227093%_))))
                      (_%g227035227089%_ _%g227036227093%_)))))
          (_%g227034227270%_ _%$stx227031%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx227274%_)
        (let* ((_%g227278227292%_
                (lambda (_%g227279227288%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227279227288%_))))
               (_%g227277227333%_
                (lambda (_%g227279227296%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227279227296%_))
                      (let ((_%e227281227299%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227279227296%_))))
                        (let ((_%hd227282227303%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227281227299%_)))
                              (_%tl227283227306%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227281227299%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227283227306%_))
                              (let ((_%e227284227309%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227283227306%_))))
                                (let ((_%hd227285227313%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227284227309%_)))
                                      (_%tl227286227316%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227284227309%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227286227316%_))
                                      ((lambda (_%g227280227319%_)
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
                                                           (cons _%g227280227319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227285227313%_)
                                      (_%g227278227292%_ _%g227279227296%_))))
                              (_%g227278227292%_ _%g227279227296%_))))
                      (_%g227278227292%_ _%g227279227296%_)))))
          (_%g227277227333%_ _%$stx227274%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx227337%_)
        (let* ((_%g227341227355%_
                (lambda (_%g227342227351%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227342227351%_))))
               (_%g227340227396%_
                (lambda (_%g227342227359%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227342227359%_))
                      (let ((_%e227344227362%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227342227359%_))))
                        (let ((_%hd227345227366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227344227362%_)))
                              (_%tl227346227369%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227344227362%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227346227369%_))
                              (let ((_%e227347227372%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227346227369%_))))
                                (let ((_%hd227348227376%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227347227372%_)))
                                      (_%tl227349227379%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227347227372%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227349227379%_))
                                      ((lambda (_%g227343227382%_)
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
                                                           (cons _%g227343227382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227348227376%_)
                                      (_%g227341227355%_ _%g227342227359%_))))
                              (_%g227341227355%_ _%g227342227359%_))))
                      (_%g227341227355%_ _%g227342227359%_)))))
          (_%g227340227396%_ _%$stx227337%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx227400%_)
        (let* ((_%g227404227426%_
                (lambda (_%g227405227422%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227405227422%_))))
               (_%g227403227495%_
                (lambda (_%g227405227430%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227405227430%_))
                      (let ((_%e227409227433%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227405227430%_))))
                        (let ((_%hd227410227437%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227409227433%_)))
                              (_%tl227411227440%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227409227433%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227411227440%_))
                              (let ((_%e227412227443%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227411227440%_))))
                                (let ((_%hd227413227447%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227412227443%_)))
                                      (_%tl227414227450%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227412227443%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227414227450%_))
                                      (let ((_%e227415227453%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227414227450%_))))
                                        (let ((_%hd227416227457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227415227453%_)))
                                              (_%tl227417227460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227415227453%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227417227460%_))
                                              (let ((_%e227418227463%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227417227460%_))))
                                                (let ((_%hd227419227467%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227418227463%_)))
                                                      (_%tl227420227470%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227418227463%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227420227470%_))
                                                      ((lambda (_%g227406227473%_
                                                                _%g227407227475%_
                                                                _%g227408227476%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g227408227476%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g227407227475%_ '()))
                                   (cons _%g227406227473%_ '())))))
               _%hd227419227467%_
               _%hd227416227457%_
               _%hd227413227447%_)
              (_%g227404227426%_ _%g227405227430%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227404227426%_
                                               _%g227405227430%_))))
                                      (_%g227404227426%_ _%g227405227430%_))))
                              (_%g227404227426%_ _%g227405227430%_))))
                      (_%g227404227426%_ _%g227405227430%_)))))
          (_%g227403227495%_ _%$stx227400%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx227499%_)
        (let* ((_%g227503227525%_
                (lambda (_%g227504227521%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227504227521%_))))
               (_%g227502227594%_
                (lambda (_%g227504227529%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227504227529%_))
                      (let ((_%e227508227532%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227504227529%_))))
                        (let ((_%hd227509227536%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227508227532%_)))
                              (_%tl227510227539%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227508227532%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227510227539%_))
                              (let ((_%e227511227542%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227510227539%_))))
                                (let ((_%hd227512227546%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227511227542%_)))
                                      (_%tl227513227549%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227511227542%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227513227549%_))
                                      (let ((_%e227514227552%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227513227549%_))))
                                        (let ((_%hd227515227556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227514227552%_)))
                                              (_%tl227516227559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227514227552%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227516227559%_))
                                              (let ((_%e227517227562%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227516227559%_))))
                                                (let ((_%hd227518227566%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227517227562%_)))
                                                      (_%tl227519227569%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227517227562%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227519227569%_))
                                                      ((lambda (_%g227505227572%_
                                                                _%g227506227574%_
                                                                _%g227507227575%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g227507227575%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g227506227574%_ '()))
                                   (cons _%g227505227572%_ '())))))
               _%hd227518227566%_
               _%hd227515227556%_
               _%hd227512227546%_)
              (_%g227503227525%_ _%g227504227529%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227503227525%_
                                               _%g227504227529%_))))
                                      (_%g227503227525%_ _%g227504227529%_))))
                              (_%g227503227525%_ _%g227504227529%_))))
                      (_%g227503227525%_ _%g227504227529%_)))))
          (_%g227502227594%_ _%$stx227499%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx227598%_)
        (let* ((_%g227602227616%_
                (lambda (_%g227603227612%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227603227612%_))))
               (_%g227601227657%_
                (lambda (_%g227603227620%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227603227620%_))
                      (let ((_%e227605227623%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227603227620%_))))
                        (let ((_%hd227606227627%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227605227623%_)))
                              (_%tl227607227630%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227605227623%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227607227630%_))
                              (let ((_%e227608227633%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227607227630%_))))
                                (let ((_%hd227609227637%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227608227633%_)))
                                      (_%tl227610227640%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227608227633%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227610227640%_))
                                      ((lambda (_%g227604227643%_)
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
                                                           (cons _%g227604227643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227609227637%_)
                                      (_%g227602227616%_ _%g227603227620%_))))
                              (_%g227602227616%_ _%g227603227620%_))))
                      (_%g227602227616%_ _%g227603227620%_)))))
          (_%g227601227657%_ _%$stx227598%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx227661%_)
        (let* ((_%g227665227683%_
                (lambda (_%g227666227679%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227666227679%_))))
               (_%g227664227738%_
                (lambda (_%g227666227687%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227666227687%_))
                      (let ((_%e227669227690%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227666227687%_))))
                        (let ((_%hd227670227694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227669227690%_)))
                              (_%tl227671227697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227669227690%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227671227697%_))
                              (let ((_%e227672227700%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227671227697%_))))
                                (let ((_%hd227673227704%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227672227700%_)))
                                      (_%tl227674227707%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227672227700%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227674227707%_))
                                      (let ((_%e227675227710%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227674227707%_))))
                                        (let ((_%hd227676227714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227675227710%_)))
                                              (_%tl227677227717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227675227710%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl227677227717%_))
                                              ((lambda (_%g227667227720%_
                                                        _%g227668227722%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g227668227722%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g227667227720%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd227676227714%_
                                               _%hd227673227704%_)
                                              (_%g227665227683%_
                                               _%g227666227687%_))))
                                      (_%g227665227683%_ _%g227666227687%_))))
                              (_%g227665227683%_ _%g227666227687%_))))
                      (_%g227665227683%_ _%g227666227687%_)))))
          (_%g227664227738%_ _%$stx227661%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx227742%_)
        (let* ((_%__stx232058232059%_ _%$stx227742%_)
               (_%g227749227810%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232058232059%_)))))
          (let ((_%__kont232061232062%_
                 (lambda (_%g227751228048%_ _%g227752228050%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227752228050%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227751228048%_ '()))
                                     '())))))
                (_%__kont232063232064%_
                 (lambda (_%g227762227987%_
                          _%g227763227989%_
                          _%g227764227990%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227764227990%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227763227989%_ '()))
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
                                 (cons _%g227762227987%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont232065232066%_
                 (lambda (_%g227781227911%_ _%g227782227913%_)
                   (cons _%g227782227913%_
                         (cons _%g227781227911%_ (cons '#f '())))))
                (_%__kont232067232068%_
                 (lambda (_%g227789227861%_
                          _%g227790227863%_
                          _%g227791227864%_)
                   (cons _%g227791227864%_
                         (cons _%g227790227863%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g227789227861%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232058232059%_))
                (let ((_%e227753228018%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232058232059%_))))
                  (let ((_%tl227755228025%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e227753228018%_)))
                        (_%hd227754228022%_
                         (let ()
                           (declare (not safe))
                           (##car _%e227753228018%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl227755228025%_))
                        (let ((_%e227756228028%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl227755228025%_))))
                          (let ((_%tl227758228035%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227756228028%_)))
                                (_%hd227757228032%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227756228028%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl227758228035%_))
                                (let ((_%e227759228038%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl227758228035%_))))
                                  (let ((_%tl227761228045%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227759228038%_)))
                                        (_%hd227760228042%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227759228038%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl227761228045%_))
                                        (_%__kont232061232062%_
                                         _%hd227760228042%_
                                         _%hd227757228032%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl227761228045%_))
                                            (let ((_%e227774227963%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl227761228045%_))))
                                              (let ((_%tl227776227970%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e227774227963%_)))
                                                    (_%hd227775227967%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e227774227963%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd227775227967%_))
                                                    (let ((_%e227777227973%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd227775227967%_))))
                                                      (if (equal? _%e227777227973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227776227970%_))
                      (let ((_%e227778227977%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227776227970%_))))
                        (let ((_%tl227780227984%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227778227977%_)))
                              (_%hd227779227981%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227778227977%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl227780227984%_))
                              (_%__kont232063232064%_
                               _%hd227779227981%_
                               _%hd227760228042%_
                               _%hd227757228032%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd227760228042%_))
                                  (let ((_%e227801227847%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd227760228042%_))))
                                    (declare (not safe))
                                    (_%g227749227810%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g227749227810%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd227760228042%_))
                          (let ((_%e227801227847%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd227760228042%_))))
                            (if (equal? _%e227801227847%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227776227970%_))
                                    (_%__kont232067232068%_
                                     _%hd227775227967%_
                                     _%hd227757228032%_
                                     _%hd227754228022%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g227749227810%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g227749227810%_))))
                          (let () (declare (not safe)) (_%g227749227810%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd227760228042%_))
                      (let ((_%e227801227847%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd227760228042%_))))
                        (if (equal? _%e227801227847%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl227776227970%_))
                                (_%__kont232067232068%_
                                 _%hd227775227967%_
                                 _%hd227757228032%_
                                 _%hd227754228022%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g227749227810%_)))
                            (let () (declare (not safe)) (_%g227749227810%_))))
                      (let () (declare (not safe)) (_%g227749227810%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd227760228042%_))
                                                        (let ((_%e227801227847%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd227760228042%_))))
                  (if (equal? _%e227801227847%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl227776227970%_))
                          (_%__kont232067232068%_
                           _%hd227775227967%_
                           _%hd227757228032%_
                           _%hd227754228022%_)
                          (let () (declare (not safe)) (_%g227749227810%_)))
                      (let () (declare (not safe)) (_%g227749227810%_))))
                (let () (declare (not safe)) (_%g227749227810%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd227760228042%_))
                                                (let ((_%e227801227847%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd227760228042%_))))
                                                  (declare (not safe))
                                                  (_%g227749227810%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g227749227810%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227758228035%_))
                                    (_%__kont232065232066%_
                                     _%hd227757228032%_
                                     _%hd227754228022%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g227749227810%_))))))
                        (let () (declare (not safe)) (_%g227749227810%_)))))
                (let () (declare (not safe)) (_%g227749227810%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx228069%_)
        (let* ((_%g228073228102%_
                (lambda (_%g228074228098%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228074228098%_))))
               (_%g228072228207%_
                (lambda (_%g228074228106%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228074228106%_))
                      (let ((_%e228076228109%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228074228106%_))))
                        (let ((_%hd228077228113%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228076228109%_)))
                              (_%tl228078228116%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228076228109%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl228078228116%_))
                              (let ((_g232688_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl228078228116%_
                                        '0))))
                                (begin
                                  (let ((_g232689_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232688_)
                                               (##values-length _g232688_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232689_ 2)))
                                        (error "Context expects 2 values"
                                               _g232689_)))
                                  (let ((_%target228079228119%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232688_ 0)))
                                        (_%tl228081228122%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232688_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228081228122%_))
                                        (letrec ((_%loop228082228125%_
                                                  (lambda (_%hd228080228129%_
                                                           _%clause228086228132%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd228080228129%_))
                                                        (let ((_%e228083228134%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd228080228129%_))))
                  (let ((_%lp-hd228084228138%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228083228134%_)))
                        (_%lp-tl228085228141%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228083228134%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd228084228138%_))
                        (let ((_g232690_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd228084228138%_
                                  '0))))
                          (begin
                            (let ((_g232691_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g232690_)
                                         (##values-length _g232690_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g232691_ 2)))
                                  (error "Context expects 2 values"
                                         _g232691_)))
                            (let ((_%target228088228144%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232690_ 0)))
                                  (_%tl228090228147%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232690_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl228090228147%_))
                                  (letrec ((_%loop228091228150%_
                                            (lambda (_%hd228089228154%_
                                                     _%clause228095228157%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd228089228154%_))
                                                  (let ((_%e228092228159%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd228089228154%_))))
                                                    (let ((_%lp-hd228093228163%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e228092228159%_)))
                                                          (_%lp-tl228094228166%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e228092228159%_))))
                                                      (_%loop228091228150%_
                                                       _%lp-tl228094228166%_
                                                       (cons _%lp-hd228093228163%_
                                                             _%clause228095228157%_))))
                                                  (let ((_%clause228096228169%_
                                                         (reverse _%clause228095228157%_)))
                                                    (_%loop228082228125%_
                                                     _%lp-tl228085228141%_
                                                     (cons _%clause228096228169%_
                                                           _%clause228086228132%_)))))))
                                    (_%loop228091228150%_
                                     _%target228088228144%_
                                     '()))
                                  (_%g228073228102%_ _%g228074228106%_)))))
                        (_%g228073228102%_ _%g228074228106%_))))
                (let ((_%clause228087228172%_
                       (reverse _%clause228086228132%_)))
                  ((lambda (_%g228075228175%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp232692
                                              (lambda (_%g228190228195%_
                                                       _%g228191228198%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp232693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g228192228201%_ _%g228193228204%_)
                             (cons _%g228192228201%_ _%g228193228204%_))))
                      (declare (not safe))
                      (__foldr1 __tmp232693 '() _%g228190228195%_)))
              _%g228191228198%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp232692
                                          '()
                                          _%g228075228175%_)))
                                 '())))
                   _%clause228087228172%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop228082228125%_
                                           _%target228079228119%_
                                           '()))
                                        (_%g228073228102%_
                                         _%g228074228106%_)))))
                              (_%g228073228102%_ _%g228074228106%_))))
                      (_%g228073228102%_ _%g228074228106%_)))))
          (_%g228072228207%_ _%$stx228069%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx228213%_)
        (let* ((_%g228217228235%_
                (lambda (_%g228218228231%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228218228231%_))))
               (_%g228216228290%_
                (lambda (_%g228218228239%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228218228239%_))
                      (let ((_%e228221228242%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228218228239%_))))
                        (let ((_%hd228222228246%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228221228242%_)))
                              (_%tl228223228249%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228221228242%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228223228249%_))
                              (let ((_%e228224228252%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228223228249%_))))
                                (let ((_%hd228225228256%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228224228252%_)))
                                      (_%tl228226228259%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228224228252%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228226228259%_))
                                      (let ((_%e228227228262%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228226228259%_))))
                                        (let ((_%hd228228228266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228227228262%_)))
                                              (_%tl228229228269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228227228262%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228229228269%_))
                                              ((lambda (_%g228219228272%_
                                                        _%g228220228274%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g228220228274%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g228219228272%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228228228266%_
                                               _%hd228225228256%_)
                                              (_%g228217228235%_
                                               _%g228218228239%_))))
                                      (_%g228217228235%_ _%g228218228239%_))))
                              (_%g228217228235%_ _%g228218228239%_))))
                      (_%g228217228235%_ _%g228218228239%_)))))
          (_%g228216228290%_ _%$stx228213%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx228294%_)
        (let* ((_%g228298228316%_
                (lambda (_%g228299228312%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228299228312%_))))
               (_%g228297228371%_
                (lambda (_%g228299228320%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228299228320%_))
                      (let ((_%e228302228323%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228299228320%_))))
                        (let ((_%hd228303228327%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228302228323%_)))
                              (_%tl228304228330%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228302228323%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228304228330%_))
                              (let ((_%e228305228333%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228304228330%_))))
                                (let ((_%hd228306228337%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228305228333%_)))
                                      (_%tl228307228340%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228305228333%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228307228340%_))
                                      (let ((_%e228308228343%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228307228340%_))))
                                        (let ((_%hd228309228347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228308228343%_)))
                                              (_%tl228310228350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228308228343%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228310228350%_))
                                              ((lambda (_%g228300228353%_
                                                        _%g228301228355%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g228301228355%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g228300228353%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228309228347%_
                                               _%hd228306228337%_)
                                              (_%g228298228316%_
                                               _%g228299228320%_))))
                                      (_%g228298228316%_ _%g228299228320%_))))
                              (_%g228298228316%_ _%g228299228320%_))))
                      (_%g228298228316%_ _%g228299228320%_)))))
          (_%g228297228371%_ _%$stx228294%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx228375%_)
        (let* ((_%g228379228408%_
                (lambda (_%g228380228404%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228380228404%_))))
               (_%g228378228504%_
                (lambda (_%g228380228412%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228380228412%_))
                      (let ((_%e228383228415%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228380228412%_))))
                        (let ((_%hd228384228419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228383228415%_)))
                              (_%tl228385228422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228383228415%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl228385228422%_))
                              (let ((_g232694_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl228385228422%_
                                        '0))))
                                (begin
                                  (let ((_g232695_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232694_)
                                               (##values-length _g232694_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232695_ 2)))
                                        (error "Context expects 2 values"
                                               _g232695_)))
                                  (let ((_%target228386228425%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232694_ 0)))
                                        (_%tl228388228428%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232694_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228388228428%_))
                                        (letrec ((_%loop228389228431%_
                                                  (lambda (_%hd228387228435%_
                                                           _%rule228393228438%_
                                                           _%proc228394228439%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd228387228435%_))
                                                        (let ((_%e228390228441%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd228387228435%_))))
                  (let ((_%lp-hd228391228445%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228390228441%_)))
                        (_%lp-tl228392228448%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228390228441%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd228391228445%_))
                        (let ((_%e228397228451%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd228391228445%_))))
                          (let ((_%hd228398228455%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e228397228451%_)))
                                (_%tl228399228458%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e228397228451%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl228399228458%_))
                                (let ((_%e228400228461%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl228399228458%_))))
                                  (let ((_%hd228401228465%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e228400228461%_)))
                                        (_%tl228402228468%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e228400228461%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228402228468%_))
                                        (_%loop228389228431%_
                                         _%lp-tl228392228448%_
                                         (cons _%hd228401228465%_
                                               _%rule228393228438%_)
                                         (cons _%hd228398228455%_
                                               _%proc228394228439%_))
                                        (_%g228379228408%_
                                         _%g228380228412%_))))
                                (_%g228379228408%_ _%g228380228412%_))))
                        (_%g228379228408%_ _%g228380228412%_))))
                (let ((_%rule228395228471%_ (reverse _%rule228393228438%_))
                      (_%proc228396228473%_ (reverse _%proc228394228439%_)))
                  ((lambda (_%g228381228475%_ _%g228382228477%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g228381228475%_
                                _%g228382228477%_))
                             (let ((__tmp232696
                                    (lambda (_%g228492228496%_
                                             _%g228493228499%_
                                             _%g228494228501%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g228493228499%_
                                                        (cons _%g228492228496%_
                                                              '())))
                                            _%g228494228501%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp232696
                                '()
                                _%g228381228475%_
                                _%g228382228477%_)))))
                   _%rule228395228471%_
                   _%proc228396228473%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop228389228431%_
                                           _%target228386228425%_
                                           '()
                                           '()))
                                        (_%g228379228408%_
                                         _%g228380228412%_)))))
                              (_%g228379228408%_ _%g228380228412%_))))
                      (_%g228379228408%_ _%g228380228412%_)))))
          (_%g228378228504%_ _%$stx228375%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx228509%_)
        (let* ((_%g228513228531%_
                (lambda (_%g228514228527%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228514228527%_))))
               (_%g228512228586%_
                (lambda (_%g228514228535%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228514228535%_))
                      (let ((_%e228517228538%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228514228535%_))))
                        (let ((_%hd228518228542%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228517228538%_)))
                              (_%tl228519228545%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228517228538%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228519228545%_))
                              (let ((_%e228520228548%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228519228545%_))))
                                (let ((_%hd228521228552%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228520228548%_)))
                                      (_%tl228522228555%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228520228548%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228522228555%_))
                                      (let ((_%e228523228558%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228522228555%_))))
                                        (let ((_%hd228524228562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228523228558%_)))
                                              (_%tl228525228565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228523228558%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228525228565%_))
                                              ((lambda (_%g228515228568%_
                                                        _%g228516228570%_)
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
                                                   (cons _%g228516228570%_
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
                 (cons _%g228515228568%_ '())))
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
                                   (cons _%g228516228570%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228524228562%_
                                               _%hd228521228552%_)
                                              (_%g228513228531%_
                                               _%g228514228535%_))))
                                      (_%g228513228531%_ _%g228514228535%_))))
                              (_%g228513228531%_ _%g228514228535%_))))
                      (_%g228513228531%_ _%g228514228535%_)))))
          (_%g228512228586%_ _%$stx228509%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx228590%_)
        (let* ((_%__stx232176232177%_ _%$stx228590%_)
               (_%g228595228620%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232176232177%_)))))
          (let ((_%__kont232179232180%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont232181232182%_
                 (lambda (_%g228600228667%_
                          _%g228601228669%_
                          _%g228602228670%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g228602228670%_
                                           (cons _%g228601228669%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g228600228667%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232176232177%_))
                (let ((_%e228597228696%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232176232177%_))))
                  (let ((_%tl228599228703%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228597228696%_)))
                        (_%hd228598228700%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228597228696%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl228599228703%_))
                        (_%__kont232179232180%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228599228703%_))
                            (let ((_%e228606228637%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl228599228703%_))))
                              (let ((_%tl228608228644%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228606228637%_)))
                                    (_%hd228607228641%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228606228637%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd228607228641%_))
                                    (let ((_%e228609228647%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd228607228641%_))))
                                      (let ((_%tl228611228654%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e228609228647%_)))
                                            (_%hd228610228651%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e228609228647%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl228611228654%_))
                                            (let ((_%e228612228657%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl228611228654%_))))
                                              (let ((_%tl228614228664%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e228612228657%_)))
                                                    (_%hd228613228661%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e228612228657%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl228614228664%_))
                                                    (_%__kont232181232182%_
                                                     _%tl228608228644%_
                                                     _%hd228613228661%_
                                                     _%hd228610228651%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g228595228620%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g228595228620%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g228595228620%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g228595228620%_))))))
                (let () (declare (not safe)) (_%g228595228620%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx228714%_)
        (let* ((_%__stx232220232221%_ _%$stx228714%_)
               (_%g228719228750%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232220232221%_)))))
          (let ((_%__kont232223232224%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont232225232226%_
                 (lambda (_%g228724228815%_
                          _%g228725228817%_
                          _%g228726228818%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g228726228818%_
                                           (let ((__tmp232697
                                                  (lambda (_%g228838228841%_
                                                           _%g228839228844%_)
                                                    (cons _%g228838228841%_
                                                          _%g228839228844%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp232697
                                              '()
                                              _%g228725228817%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g228724228815%_)
                                     '()))))))
            (let ((_%__match232263232264%_
                   (lambda (_%e228727228757%_
                            _%hd228728228761%_
                            _%tl228729228764%_
                            _%e228730228767%_
                            _%hd228731228771%_
                            _%tl228732228774%_
                            _%e228733228777%_
                            _%hd228734228781%_
                            _%tl228735228784%_
                            _%__splice232227232228%_
                            _%target228736228787%_
                            _%tl228738228790%_)
                     (letrec ((_%loop228739228793%_
                               (lambda (_%hd228737228797%_ _%sig228743228800%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd228737228797%_))
                                     (let ((_%e228740228802%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd228737228797%_))))
                                       (let ((_%lp-tl228742228809%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e228740228802%_)))
                                             (_%lp-hd228741228806%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e228740228802%_))))
                                         (_%loop228739228793%_
                                          _%lp-tl228742228809%_
                                          (cons _%lp-hd228741228806%_
                                                _%sig228743228800%_))))
                                     (let ((_%sig228744228812%_
                                            (reverse _%sig228743228800%_)))
                                       (_%__kont232225232226%_
                                        _%tl228732228774%_
                                        _%sig228744228812%_
                                        _%hd228734228781%_))))))
                       (_%loop228739228793%_ _%target228736228787%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232220232221%_))
                  (let ((_%e228721228854%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232220232221%_))))
                    (let ((_%tl228723228861%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e228721228854%_)))
                          (_%hd228722228858%_
                           (let ()
                             (declare (not safe))
                             (##car _%e228721228854%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl228723228861%_))
                          (_%__kont232223232224%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228723228861%_))
                              (let ((_%e228730228767%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228723228861%_))))
                                (let ((_%tl228732228774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228730228767%_)))
                                      (_%hd228731228771%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228730228767%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd228731228771%_))
                                      (let ((_%e228733228777%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd228731228771%_))))
                                        (let ((_%tl228735228784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228733228777%_)))
                                              (_%hd228734228781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228733228777%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl228735228784%_))
                                              (let ((_%__splice232227232228%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl228735228784%_
                                                        '0))))
                                                (let ((_%tl228738228790%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232227232228%_
                                                          '1)))
                                                      (_%target228736228787%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232227232228%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl228738228790%_))
                                                      (_%__match232263232264%_
                                                       _%e228721228854%_
                                                       _%hd228722228858%_
                                                       _%tl228723228861%_
                                                       _%e228730228767%_
                                                       _%hd228731228771%_
                                                       _%tl228732228774%_
                                                       _%e228733228777%_
                                                       _%hd228734228781%_
                                                       _%tl228735228784%_
                                                       _%__splice232227232228%_
                                                       _%target228736228787%_
                                                       _%tl228738228790%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g228719228750%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g228719228750%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g228719228750%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g228719228750%_))))))
                  (let () (declare (not safe)) (_%g228719228750%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx228873%_)
        (let* ((_%__stx232266232267%_ _%$stx228873%_)
               (_%g228878228925%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232266232267%_)))))
          (let ((_%__kont232269232270%_
                 (lambda (_%g228880229083%_ _%g228881229085%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g228881229085%_
                               (let ((__tmp232698
                                      (lambda (_%g229105229108%_
                                               _%g229106229111%_)
                                        (cons _%g229105229108%_
                                              _%g229106229111%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp232698
                                  '()
                                  _%g228880229083%_))))))
                (_%__kont232273232274%_
                 (lambda (_%g228903228980%_ _%g228904228982%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g228904228982%_
                               (let ((__tmp232699
                                      (lambda (_%g228999229002%_
                                               _%g229000229005%_)
                                        (cons _%g228999229002%_
                                              _%g229000229005%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp232699
                                  '()
                                  _%g228903228980%_)))))))
            (let* ((_%__match232333232334%_
                    (lambda (_%e228905228932%_
                             _%hd228906228936%_
                             _%tl228907228939%_
                             _%e228908228942%_
                             _%hd228909228946%_
                             _%tl228910228949%_
                             _%__splice232275232276%_
                             _%target228911228952%_
                             _%tl228913228955%_)
                      (letrec ((_%loop228914228958%_
                                (lambda (_%hd228912228962%_
                                         _%sig228918228965%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd228912228962%_))
                                      (let ((_%e228915228967%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd228912228962%_))))
                                        (let ((_%lp-tl228917228974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228915228967%_)))
                                              (_%lp-hd228916228971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228915228967%_))))
                                          (_%loop228914228958%_
                                           _%lp-tl228917228974%_
                                           (cons _%lp-hd228916228971%_
                                                 _%sig228918228965%_))))
                                      (let ((_%sig228919228977%_
                                             (reverse _%sig228918228965%_)))
                                        (_%__kont232273232274%_
                                         _%sig228919228977%_
                                         _%hd228909228946%_))))))
                        (_%loop228914228958%_ _%target228911228952%_ '()))))
                   (_%__match232325232326%_
                    (lambda (_%e228905228932%_
                             _%hd228906228936%_
                             _%tl228907228939%_
                             _%e228908228942%_
                             _%hd228909228946%_
                             _%tl228910228949%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl228910228949%_))
                          (let ((_%__splice232275232276%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl228910228949%_
                                    '0))))
                            (let ((_%tl228913228955%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice232275232276%_
                                      '1)))
                                  (_%target228911228952%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice232275232276%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl228913228955%_))
                                  (_%__match232333232334%_
                                   _%e228905228932%_
                                   _%hd228906228936%_
                                   _%tl228907228939%_
                                   _%e228908228942%_
                                   _%hd228909228946%_
                                   _%tl228910228949%_
                                   _%__splice232275232276%_
                                   _%target228911228952%_
                                   _%tl228913228955%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g228878228925%_)))))
                          (let () (declare (not safe)) (_%g228878228925%_)))))
                   (_%__match232313232314%_
                    (lambda (_%e228882229015%_
                             _%hd228883229019%_
                             _%tl228884229022%_
                             _%e228885229025%_
                             _%hd228886229029%_
                             _%tl228887229032%_
                             _%e228888229035%_
                             _%hd228889229039%_
                             _%tl228890229042%_
                             _%e228891229045%_
                             _%hd228892229049%_
                             _%tl228893229052%_
                             _%__splice232271232272%_
                             _%target228894229055%_
                             _%tl228896229058%_)
                      (letrec ((_%loop228897229061%_
                                (lambda (_%hd228895229065%_
                                         _%sig228901229068%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd228895229065%_))
                                      (let ((_%e228898229070%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd228895229065%_))))
                                        (let ((_%lp-tl228900229077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228898229070%_)))
                                              (_%lp-hd228899229074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228898229070%_))))
                                          (_%loop228897229061%_
                                           _%lp-tl228900229077%_
                                           (cons _%lp-hd228899229074%_
                                                 _%sig228901229068%_))))
                                      (let ((_%sig228902229080%_
                                             (reverse _%sig228901229068%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl228890229042%_))
                                            (_%__kont232269232270%_
                                             _%sig228902229080%_
                                             _%hd228886229029%_)
                                            (_%__match232325232326%_
                                             _%e228882229015%_
                                             _%hd228883229019%_
                                             _%tl228884229022%_
                                             _%e228885229025%_
                                             _%hd228886229029%_
                                             _%tl228887229032%_)))))))
                        (_%loop228897229061%_ _%target228894229055%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232266232267%_))
                  (let ((_%e228882229015%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232266232267%_))))
                    (let ((_%tl228884229022%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e228882229015%_)))
                          (_%hd228883229019%_
                           (let ()
                             (declare (not safe))
                             (##car _%e228882229015%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl228884229022%_))
                          (let ((_%e228885229025%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl228884229022%_))))
                            (let ((_%tl228887229032%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e228885229025%_)))
                                  (_%hd228886229029%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e228885229025%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl228887229032%_))
                                  (let ((_%e228888229035%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl228887229032%_))))
                                    (let ((_%tl228890229042%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e228888229035%_)))
                                          (_%hd228889229039%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e228888229035%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd228889229039%_))
                                          (let ((_%e228891229045%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd228889229039%_))))
                                            (let ((_%tl228893229052%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e228891229045%_)))
                                                  (_%hd228892229049%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e228891229045%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd228892229049%_))
                                                  (if (let ((__tmp232700
                                                             |gxc[1]#_g232701_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp232700
                                                         _%hd228892229049%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl228893229052%_))
                                                          (let ((_%__splice232271232272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl228893229052%_
                            '0))))
                    (let ((_%tl228896229058%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232271232272%_ '1)))
                          (_%target228894229055%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232271232272%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl228896229058%_))
                          (_%__match232313232314%_
                           _%e228882229015%_
                           _%hd228883229019%_
                           _%tl228884229022%_
                           _%e228885229025%_
                           _%hd228886229029%_
                           _%tl228887229032%_
                           _%e228888229035%_
                           _%hd228889229039%_
                           _%tl228890229042%_
                           _%e228891229045%_
                           _%hd228892229049%_
                           _%tl228893229052%_
                           _%__splice232271232272%_
                           _%target228894229055%_
                           _%tl228896229058%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl228887229032%_))
                              (let ((_%__splice232275232276%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl228887229032%_
                                        '0))))
                                (let ((_%tl228913228955%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice232275232276%_
                                          '1)))
                                      (_%target228911228952%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice232275232276%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl228913228955%_))
                                      (_%__match232333232334%_
                                       _%e228882229015%_
                                       _%hd228883229019%_
                                       _%tl228884229022%_
                                       _%e228885229025%_
                                       _%hd228886229029%_
                                       _%tl228887229032%_
                                       _%__splice232275232276%_
                                       _%target228911228952%_
                                       _%tl228913228955%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g228878228925%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g228878228925%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl228887229032%_))
                      (let ((_%__splice232275232276%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl228887229032%_
                                '0))))
                        (let ((_%tl228913228955%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice232275232276%_ '1)))
                              (_%target228911228952%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice232275232276%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl228913228955%_))
                              (_%__match232333232334%_
                               _%e228882229015%_
                               _%hd228883229019%_
                               _%tl228884229022%_
                               _%e228885229025%_
                               _%hd228886229029%_
                               _%tl228887229032%_
                               _%__splice232275232276%_
                               _%target228911228952%_
                               _%tl228913228955%_)
                              (let ()
                                (declare (not safe))
                                (_%g228878228925%_)))))
                      (let () (declare (not safe)) (_%g228878228925%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl228887229032%_))
                  (let ((_%__splice232275232276%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl228887229032%_
                            '0))))
                    (let ((_%tl228913228955%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232275232276%_ '1)))
                          (_%target228911228952%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232275232276%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl228913228955%_))
                          (_%__match232333232334%_
                           _%e228882229015%_
                           _%hd228883229019%_
                           _%tl228884229022%_
                           _%e228885229025%_
                           _%hd228886229029%_
                           _%tl228887229032%_
                           _%__splice232275232276%_
                           _%target228911228952%_
                           _%tl228913228955%_)
                          (let () (declare (not safe)) (_%g228878228925%_)))))
                  (let () (declare (not safe)) (_%g228878228925%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl228887229032%_))
                                                      (let ((_%__splice232275232276%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl228887229032%_
                        '0))))
                (let ((_%tl228913228955%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232275232276%_ '1)))
                      (_%target228911228952%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232275232276%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl228913228955%_))
                      (_%__match232333232334%_
                       _%e228882229015%_
                       _%hd228883229019%_
                       _%tl228884229022%_
                       _%e228885229025%_
                       _%hd228886229029%_
                       _%tl228887229032%_
                       _%__splice232275232276%_
                       _%target228911228952%_
                       _%tl228913228955%_)
                      (let () (declare (not safe)) (_%g228878228925%_)))))
              (let () (declare (not safe)) (_%g228878228925%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl228887229032%_))
                                              (let ((_%__splice232275232276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl228887229032%_
                                                        '0))))
                                                (let ((_%tl228913228955%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232275232276%_
                                                          '1)))
                                                      (_%target228911228952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232275232276%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl228913228955%_))
                                                      (_%__match232333232334%_
                                                       _%e228882229015%_
                                                       _%hd228883229019%_
                                                       _%tl228884229022%_
                                                       _%e228885229025%_
                                                       _%hd228886229029%_
                                                       _%tl228887229032%_
                                                       _%__splice232275232276%_
                                                       _%target228911228952%_
                                                       _%tl228913228955%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g228878228925%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g228878228925%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl228887229032%_))
                                      (let ((_%__splice232275232276%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl228887229032%_
                                                '0))))
                                        (let ((_%tl228913228955%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232275232276%_
                                                  '1)))
                                              (_%target228911228952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232275232276%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228913228955%_))
                                              (_%__match232333232334%_
                                               _%e228882229015%_
                                               _%hd228883229019%_
                                               _%tl228884229022%_
                                               _%e228885229025%_
                                               _%hd228886229029%_
                                               _%tl228887229032%_
                                               _%__splice232275232276%_
                                               _%target228911228952%_
                                               _%tl228913228955%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g228878228925%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g228878228925%_))))))
                          (let () (declare (not safe)) (_%g228878228925%_)))))
                  (let () (declare (not safe)) (_%g228878228925%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx230268%_ _%id230270%_)
        (let ((_%proc230274%_
               (let ((__tmp232702
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id230270%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp232702))))
          (if (procedure? _%proc230274%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx230268%_
                 _%id230270%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx230259%_ _%id230261%_)
        (let ((_%klass230265%_
               (let ((__tmp232703
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id230261%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp232703))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass230265%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx230259%_
                 _%id230261%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx229509%_ _%proc229511%_ _%sig229512%_)
        (letrec ((_%signature-arity229514%_
                  (lambda (_%args230191%_)
                    (let _%loop230194%_ ((_%rest230197%_ _%args230191%_)
                                         (_%count230199%_ '0))
                      (let* ((_%rest230200230211%_ _%rest230197%_)
                             (_%E230204230217%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest230200230211%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K230207230248%_
                               (lambda (_%rest230245%_)
                                 (_%loop230194%_
                                  _%rest230245%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count230199%_ '1)))))
                              (_%K230206230237%_ (lambda () _%count230199%_))
                              (_%K230205230225%_
                               (lambda () (cons _%count230199%_ '()))))
                          (let ((_%try-match230202230241%_
                                 (lambda ()
                                   (if (null? _%rest230200230211%_)
                                       (_%K230206230237%_)
                                       (_%K230205230225%_)))))
                            (if (pair? _%rest230200230211%_)
                                (let* ((_%tl230209230252%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest230200230211%_)))
                                       (_%rest230256%_ _%tl230209230252%_))
                                  (_%K230207230248%_ _%rest230256%_))
                                (_%try-match230202230241%_))))))))
                 (_%make-signature229516%_
                  (lambda (_%args230073%_
                           _%return230075%_
                           _%effect230076%_
                           _%unchecked230077%_)
                    (let ((__tmp232704
                           (lambda (_%g230078230080%_)
                             (|gxc[1]#verify-class!|
                              _%ctx229509%_
                              _%g230078230080%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp232704 _%args230073%_))
                    (|gxc[1]#verify-class!| _%ctx229509%_ _%return230075%_)
                    (if _%unchecked230077%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx229509%_
                         _%unchecked230077%_)
                        '#!void)
                    (let ((_%arity230084%_
                           (_%signature-arity229514%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args230073%_)))))
                      (if _%effect230076%_
                          (let ((_%effect230087%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect230076%_))))
                            (if (and (list? _%effect230087%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect230087%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx229509%_
                                   _%proc229511%_
                                   _%effect230087%_))))
                          '#!void)
                      (cons _%arity230084%_
                            (cons (let* ((_%g230090230113%_
                                          (lambda (_%g230091230109%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g230091230109%_))))
                                         (_%g230089230187%_
                                          (lambda (_%g230091230117%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g230091230117%_))
                                                (let ((_%e230096230120%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g230091230117%_))))
                                                  (let ((_%hd230097230124%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e230096230120%_)))
                                                        (_%tl230098230127%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e230096230120%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl230098230127%_))
                                                        (let ((_%e230099230130%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl230098230127%_))))
                  (let ((_%hd230100230134%_
                         (let ()
                           (declare (not safe))
                           (##car _%e230099230130%_)))
                        (_%tl230101230137%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e230099230130%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl230101230137%_))
                        (let ((_%e230102230140%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl230101230137%_))))
                          (let ((_%hd230103230144%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230102230140%_)))
                                (_%tl230104230147%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230102230140%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl230104230147%_))
                                (let ((_%e230105230150%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl230104230147%_))))
                                  (let ((_%hd230106230154%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230105230150%_)))
                                        (_%tl230107230157%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230105230150%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl230107230157%_))
                                        ((lambda (_%g230092230160%_
                                                  _%g230093230162%_
                                                  _%g230094230163%_
                                                  _%g230095230164%_)
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
                           (cons _%g230095230164%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g230094230163%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g230093230162%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g230092230160%_ '()))
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
                                         _%hd230106230154%_
                                         _%hd230103230144%_
                                         _%hd230100230134%_
                                         _%hd230097230124%_)
                                        (_%g230090230113%_
                                         _%g230091230117%_))))
                                (_%g230090230113%_ _%g230091230117%_))))
                        (_%g230090230113%_ _%g230091230117%_))))
                (_%g230090230113%_ _%g230091230117%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230090230113%_
                                                 _%g230091230117%_)))))
                                    (_%g230089230187%_
                                     (list _%args230073%_
                                           _%return230075%_
                                           _%effect230076%_
                                           _%unchecked230077%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx229509%_ _%proc229511%_)
          (let* ((_%__stx232344232345%_ _%sig229512%_)
                 (_%g229523229626%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx232344232345%_)))))
            (let ((_%__kont232347232348%_
                   (lambda (_%g229525230054%_ _%g229526230056%_)
                     (_%make-signature229516%_
                      _%g229526230056%_
                      _%g229525230054%_
                      '#f
                      '#f)))
                  (_%__kont232349232350%_
                   (lambda (_%g229533230005%_
                            _%g229534230007%_
                            _%g229535230008%_)
                     (_%make-signature229516%_
                      _%g229535230008%_
                      _%g229534230007%_
                      _%g229533230005%_
                      '#f)))
                  (_%__kont232351232352%_
                   (lambda (_%g229549229929%_
                            _%g229550229931%_
                            _%g229551229932%_)
                     (_%make-signature229516%_
                      _%g229551229932%_
                      _%g229550229931%_
                      _%g229549229929%_
                      (let ((__tmp232705
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc229511%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp232705)))))
                  (_%__kont232353232354%_
                   (lambda (_%g229569229835%_
                            _%g229570229837%_
                            _%g229571229838%_
                            _%g229572229839%_)
                     (_%make-signature229516%_
                      _%g229572229839%_
                      _%g229571229838%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g229569229835%_)))))
                  (_%__kont232355232356%_
                   (lambda (_%g229593229742%_ _%g229594229744%_)
                     (_%make-signature229516%_
                      _%g229594229744%_
                      _%g229593229742%_
                      '#f
                      (let ((__tmp232706
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc229511%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp232706)))))
                  (_%__kont232357232358%_
                   (lambda (_%g229605229677%_
                            _%g229606229679%_
                            _%g229607229680%_)
                     (_%make-signature229516%_
                      _%g229607229680%_
                      _%g229606229679%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g229605229677%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232344232345%_))
                  (let ((_%e229527230034%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232344232345%_))))
                    (let ((_%tl229529230041%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229527230034%_)))
                          (_%hd229528230038%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229527230034%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229529230041%_))
                          (let ((_%e229530230044%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl229529230041%_))))
                            (let ((_%tl229532230051%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229530230044%_)))
                                  (_%hd229531230048%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229530230044%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229532230051%_))
                                  (_%__kont232347232348%_
                                   _%hd229531230048%_
                                   _%hd229528230038%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl229532230051%_))
                                      (let ((_%e229542229981%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl229532230051%_))))
                                        (let ((_%tl229544229988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229542229981%_)))
                                              (_%hd229543229985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229542229981%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd229543229985%_))
                                              (let ((_%e229545229991%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd229543229985%_))))
                                                (if (equal? _%e229545229991%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl229544229988%_))
                                                        (let ((_%e229546229995%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl229544229988%_))))
                  (let ((_%tl229548230002%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229546229995%_)))
                        (_%hd229547229999%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229546229995%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl229548230002%_))
                        (_%__kont232349232350%_
                         _%hd229547229999%_
                         _%hd229531230048%_
                         _%hd229528230038%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229548230002%_))
                            (let ((_%e229565229915%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl229548230002%_))))
                              (let ((_%tl229567229922%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229565229915%_)))
                                    (_%hd229566229919%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229565229915%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd229566229919%_))
                                    (let ((_%e229568229925%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd229566229919%_))))
                                      (if (equal? _%e229568229925%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229567229922%_))
                                              (_%__kont232351232352%_
                                               _%hd229547229999%_
                                               _%hd229531230048%_
                                               _%hd229528230038%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl229567229922%_))
                                                  (let ((_%e229590229825%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl229567229922%_))))
                                                    (let ((_%tl229592229832%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229590229825%_)))
                                                          (_%hd229591229829%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229590229825%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl229592229832%_))
                                                          (_%__kont232353232354%_
                                                           _%hd229591229829%_
                                                           _%hd229547229999%_
                                                           _%hd229531230048%_
                                                           _%hd229528230038%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g229523229626%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g229523229626%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g229523229626%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g229523229626%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g229523229626%_))))))
                (let () (declare (not safe)) (_%g229523229626%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e229545229991%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl229544229988%_))
                                                            (_%__kont232355232356%_
                                                             _%hd229531230048%_
                                                             _%hd229528230038%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl229544229988%_))
                        (let ((_%e229618229667%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl229544229988%_))))
                          (let ((_%tl229620229674%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229618229667%_)))
                                (_%hd229619229671%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229618229667%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl229620229674%_))
                                (_%__kont232357232358%_
                                 _%hd229619229671%_
                                 _%hd229531230048%_
                                 _%hd229528230038%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g229523229626%_)))))
                        (let () (declare (not safe)) (_%g229523229626%_))))
                (let () (declare (not safe)) (_%g229523229626%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g229523229626%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g229523229626%_))))))
                          (let () (declare (not safe)) (_%g229523229626%_)))))
                  (let () (declare (not safe)) (_%g229523229626%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig229120%_)
        (let* ((_%g229123229203%_
                (lambda (_%g229124229199%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g229124229199%_))))
               (_%g229122229505%_
                (lambda (_%g229124229207%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g229124229207%_))
                      (let ((_%e229130229210%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g229124229207%_))))
                        (let ((_%hd229131229214%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229130229210%_)))
                              (_%tl229132229217%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229130229210%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl229132229217%_))
                              (let ((_%e229133229220%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl229132229217%_))))
                                (let ((_%hd229134229224%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229133229220%_)))
                                      (_%tl229135229227%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229133229220%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd229134229224%_))
                                      (let ((_%e229136229230%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd229134229224%_))))
                                        (if (equal? _%e229136229230%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229135229227%_))
                                                (let ((_%e229137229234%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl229135229227%_))))
                                                  (let ((_%hd229138229238%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229137229234%_)))
                                                        (_%tl229139229241%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229137229234%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd229138229238%_))
                                                        (let ((_%e229140229244%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd229138229238%_))))
                  (let ((_%hd229141229248%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229140229244%_)))
                        (_%tl229142229251%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229140229244%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd229141229248%_))
                        (if (let ((__tmp232707 |gxc[1]#_g232708_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp232707
                               _%hd229141229248%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229142229251%_))
                                (let ((_%e229143229254%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl229142229251%_))))
                                  (let ((_%hd229144229258%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229143229254%_)))
                                        (_%tl229145229261%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229143229254%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl229145229261%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229139229241%_))
                                            (let ((_%e229146229264%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl229139229241%_))))
                                              (let ((_%hd229147229268%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229146229264%_)))
                                                    (_%tl229148229271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229146229264%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd229147229268%_))
                                                    (let ((_%e229149229274%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd229147229268%_))))
                                                      (if (equal? _%e229149229274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl229148229271%_))
                      (let ((_%e229150229278%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl229148229271%_))))
                        (let ((_%hd229151229282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229150229278%_)))
                              (_%tl229152229285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229150229278%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd229151229282%_))
                              (let ((_%e229153229288%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd229151229282%_))))
                                (let ((_%hd229154229292%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229153229288%_)))
                                      (_%tl229155229295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229153229288%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd229154229292%_))
                                      (if (let ((__tmp232709
                                                 |gxc[1]#_g232710_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp232709
                                             _%hd229154229292%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl229155229295%_))
                                              (let ((_%e229156229298%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl229155229295%_))))
                                                (let ((_%hd229157229302%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e229156229298%_)))
                                                      (_%tl229158229305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e229156229298%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl229158229305%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl229152229285%_))
                                                          (let ((_%e229159229308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl229152229285%_))))
                    (let ((_%hd229160229312%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229159229308%_)))
                          (_%tl229161229315%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229159229308%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd229160229312%_))
                          (let ((_%e229162229318%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd229160229312%_))))
                            (if (equal? _%e229162229318%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl229161229315%_))
                                    (let ((_%e229163229322%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl229161229315%_))))
                                      (let ((_%hd229164229326%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229163229322%_)))
                                            (_%tl229165229329%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229163229322%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd229164229326%_))
                                            (let ((_%e229166229332%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd229164229326%_))))
                                              (let ((_%hd229167229336%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229166229332%_)))
                                                    (_%tl229168229339%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229166229332%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd229167229336%_))
                                                    (if (let ((__tmp232711
                                                               |gxc[1]#_g232712_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp232711
                                                           _%hd229167229336%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl229168229339%_))
                                                            (let ((_%e229169229342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl229168229339%_))))
                      (let ((_%hd229170229346%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229169229342%_)))
                            (_%tl229171229349%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229169229342%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229171229349%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229165229329%_))
                                (let ((_%e229172229352%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl229165229329%_))))
                                  (let ((_%hd229173229356%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229172229352%_)))
                                        (_%tl229174229359%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229172229352%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd229173229356%_))
                                        (let ((_%e229175229362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229173229356%_))))
                                          (if (equal? _%e229175229362%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl229174229359%_))
                                                  (let ((_%e229176229366%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl229174229359%_))))
                                                    (let ((_%hd229177229370%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229176229366%_)))
                                                          (_%tl229178229373%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229176229366%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd229177229370%_))
                                                          (let ((_%e229179229376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd229177229370%_))))
                    (let ((_%hd229180229380%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229179229376%_)))
                          (_%tl229181229383%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229179229376%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd229180229380%_))
                          (if (let ((__tmp232713 |gxc[1]#_g232714_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp232713
                                 _%hd229180229380%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl229181229383%_))
                                  (let ((_%e229182229386%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl229181229383%_))))
                                    (let ((_%hd229183229390%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e229182229386%_)))
                                          (_%tl229184229393%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e229182229386%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl229184229393%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl229178229373%_))
                                              (let ((_%e229185229396%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl229178229373%_))))
                                                (let ((_%hd229186229400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e229185229396%_)))
                                                      (_%tl229187229403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e229185229396%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd229186229400%_))
                                                      (let ((_%e229188229406%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd229186229400%_))))
                (if (equal? _%e229188229406%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl229187229403%_))
                        (let ((_%e229189229410%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl229187229403%_))))
                          (let ((_%hd229190229414%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229189229410%_)))
                                (_%tl229191229417%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229189229410%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd229190229414%_))
                                (let ((_%e229192229420%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd229190229414%_))))
                                  (let ((_%hd229193229424%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229192229420%_)))
                                        (_%tl229194229427%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229192229420%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd229193229424%_))
                                        (if (let ((__tmp232715
                                                   |gxc[1]#_g232716_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp232715
                                               _%hd229193229424%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229194229427%_))
                                                (let ((_%e229195229430%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl229194229427%_))))
                                                  (let ((_%hd229196229434%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229195229430%_)))
                                                        (_%tl229197229437%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229195229430%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229197229437%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl229191229417%_))
                                                            ((lambda (_%g229125229440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229126229442%_
                              _%g229127229443%_
                              _%g229128229444%_
                              _%g229129229445%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g229126229442%_))
                           (cons _%g229126229442%_
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
                       (cons _%g229128229444%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g229125229440%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd229196229434%_
                     _%hd229183229390%_
                     _%hd229170229346%_
                     _%hd229157229302%_
                     _%hd229144229258%_)
                    (_%g229123229203%_ _%g229124229207%_))
                (_%g229123229203%_ _%g229124229207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g229123229203%_
                                                 _%g229124229207%_))
                                            (_%g229123229203%_
                                             _%g229124229207%_))
                                        (_%g229123229203%_
                                         _%g229124229207%_))))
                                (_%g229123229203%_ _%g229124229207%_))))
                        (_%g229123229203%_ _%g229124229207%_))
                    (_%g229123229203%_ _%g229124229207%_)))
              (_%g229123229203%_ _%g229124229207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g229123229203%_
                                               _%g229124229207%_))
                                          (_%g229123229203%_
                                           _%g229124229207%_))))
                                  (_%g229123229203%_ _%g229124229207%_))
                              (_%g229123229203%_ _%g229124229207%_))
                          (_%g229123229203%_ _%g229124229207%_))))
                  (_%g229123229203%_ _%g229124229207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g229123229203%_
                                                   _%g229124229207%_))
                                              (_%g229123229203%_
                                               _%g229124229207%_)))
                                        (_%g229123229203%_
                                         _%g229124229207%_))))
                                (_%g229123229203%_ _%g229124229207%_))
                            (_%g229123229203%_ _%g229124229207%_))))
                    (_%g229123229203%_ _%g229124229207%_))
                (_%g229123229203%_ _%g229124229207%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229123229203%_
                                                     _%g229124229207%_))))
                                            (_%g229123229203%_
                                             _%g229124229207%_))))
                                    (_%g229123229203%_ _%g229124229207%_))
                                (_%g229123229203%_ _%g229124229207%_)))
                          (_%g229123229203%_ _%g229124229207%_))))
                  (_%g229123229203%_ _%g229124229207%_))
              (_%g229123229203%_ _%g229124229207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g229123229203%_
                                               _%g229124229207%_))
                                          (_%g229123229203%_
                                           _%g229124229207%_))
                                      (_%g229123229203%_ _%g229124229207%_))))
                              (_%g229123229203%_ _%g229124229207%_))))
                      (_%g229123229203%_ _%g229124229207%_))
                  (_%g229123229203%_ _%g229124229207%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229123229203%_
                                                     _%g229124229207%_))))
                                            (_%g229123229203%_
                                             _%g229124229207%_))
                                        (_%g229123229203%_
                                         _%g229124229207%_))))
                                (_%g229123229203%_ _%g229124229207%_))
                            (_%g229123229203%_ _%g229124229207%_))
                        (_%g229123229203%_ _%g229124229207%_))))
                (_%g229123229203%_ _%g229124229207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g229123229203%_
                                                 _%g229124229207%_))
                                            (_%g229123229203%_
                                             _%g229124229207%_)))
                                      (_%g229123229203%_ _%g229124229207%_))))
                              (_%g229123229203%_ _%g229124229207%_))))
                      (_%g229123229203%_ _%g229124229207%_)))))
          (_%g229122229505%_ _%sig229120%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx230277%_)
        (let* ((_%g230280230298%_
                (lambda (_%g230281230294%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230281230294%_))))
               (_%g230279230353%_
                (lambda (_%g230281230302%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230281230302%_))
                      (let ((_%e230284230305%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230281230302%_))))
                        (let ((_%hd230285230309%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230284230305%_)))
                              (_%tl230286230312%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230284230305%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230286230312%_))
                              (let ((_%e230287230315%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230286230312%_))))
                                (let ((_%hd230288230319%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230287230315%_)))
                                      (_%tl230289230322%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230287230315%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl230289230322%_))
                                      (let ((_%e230290230325%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl230289230322%_))))
                                        (let ((_%hd230291230329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230290230325%_)))
                                              (_%tl230292230332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230290230325%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl230292230332%_))
                                              ((lambda (_%g230282230335%_
                                                        _%g230283230337%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g230283230337%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g230282230335%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx230277%_
                                                        _%g230283230337%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx230277%_
                                                        _%g230282230335%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g230283230337%_
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
                                                   (cons _%g230282230335%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g230280230298%_
                                                      _%g230281230302%_)))
                                               _%hd230291230329%_
                                               _%hd230288230319%_)
                                              (_%g230280230298%_
                                               _%g230281230302%_))))
                                      (_%g230280230298%_ _%g230281230302%_))))
                              (_%g230280230298%_ _%g230281230302%_))))
                      (_%g230280230298%_ _%g230281230302%_)))))
          (_%g230279230353%_ _%stx230277%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx230357%_)
        (let* ((_%g230360230384%_
                (lambda (_%g230361230380%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230361230380%_))))
               (_%g230359230665%_
                (lambda (_%g230361230388%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230361230388%_))
                      (let ((_%e230364230391%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230361230388%_))))
                        (let ((_%hd230365230395%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230364230391%_)))
                              (_%tl230366230398%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230364230391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230366230398%_))
                              (let ((_%e230367230401%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230366230398%_))))
                                (let ((_%hd230368230405%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230367230401%_)))
                                      (_%tl230369230408%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230367230401%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230369230408%_))
                                      (let ((_g232717_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl230369230408%_
                                                '0))))
                                        (begin
                                          (let ((_g232718_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232717_)
                                                       (##values-length
                                                        _g232717_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232718_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232718_)))
                                          (let ((_%target230370230411%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232717_ 0)))
                                                (_%tl230372230414%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232717_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl230372230414%_))
                                                (letrec ((_%loop230373230417%_
                                                          (lambda (_%hd230371230421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature230377230424%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd230371230421%_))
                        (let ((_%e230374230426%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd230371230421%_))))
                          (let ((_%lp-hd230375230430%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230374230426%_)))
                                (_%lp-tl230376230433%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230374230426%_))))
                            (_%loop230373230417%_
                             _%lp-tl230376230433%_
                             (cons _%lp-hd230375230430%_
                                   _%signature230377230424%_))))
                        (let ((_%signature230378230436%_
                               (reverse _%signature230377230424%_)))
                          ((lambda (_%g230362230439%_ _%g230363230441%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g230363230441%_))
                                 (let* ((_%g230459230474%_
                                         (lambda (_%g230460230470%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g230460230470%_))))
                                        (_%g230458230653%_
                                         (lambda (_%g230460230478%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g230460230478%_))
                                               (let ((_%e230463230481%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g230460230478%_))))
                                                 (let ((_%hd230464230485%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e230463230481%_)))
                                                       (_%tl230465230488%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e230463230481%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl230465230488%_))
                                                       (let ((_%e230466230491%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl230465230488%_))))
                 (let ((_%hd230467230495%_
                        (let ()
                          (declare (not safe))
                          (##car _%e230466230491%_)))
                       (_%tl230468230498%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230466230491%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl230468230498%_))
                       ((lambda (_%g230461230501%_ _%g230462230503%_)
                          (let* ((_%g230519230527%_
                                  (lambda (_%g230520230523%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g230520230523%_))))
                                 (_%g230518230649%_
                                  (lambda (_%g230520230531%_)
                                    ((lambda (_%g230521230534%_)
                                       (let* ((_%unchecked230547%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g230461230501%_))
                                              (_%g230550230558%_
                                               (lambda (_%g230551230554%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g230551230554%_))))
                                              (_%g230549230581%_
                                               (lambda (_%g230551230562%_)
                                                 ((lambda (_%g230552230565%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g230521230534%_
                                                                (cons _%g230552230565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g230551230562%_))))
                                         (_%g230549230581%_
                                          (if _%unchecked230547%_
                                              (let* ((_%g230585230600%_
                                                      (lambda (_%g230586230596%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g230586230596%_))))
                                                     (_%g230584230645%_
                                                      (lambda (_%g230586230604%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g230586230604%_))
                                                            (let ((_%e230589230607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g230586230604%_))))
                      (let ((_%hd230590230611%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230589230607%_)))
                            (_%tl230591230614%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230589230607%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230591230614%_))
                            (let ((_%e230592230617%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl230591230614%_))))
                              (let ((_%hd230593230621%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230592230617%_)))
                                    (_%tl230594230624%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230592230617%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl230594230624%_))
                                    ((lambda (_%g230587230627%_
                                              _%g230588230629%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g230588230629%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g230462230503%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g230587230627%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd230593230621%_
                                     _%hd230590230611%_)
                                    (_%g230585230600%_ _%g230586230604%_))))
                            (_%g230585230600%_ _%g230586230604%_))))
                    (_%g230585230600%_ _%g230586230604%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230584230645%_
                                                 _%unchecked230547%_))
                                              '(begin)))))
                                     _%g230520230531%_))))
                            (_%g230518230649%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g230363230441%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g230462230503%_ '()))
                   (cons '#f (cons 'signature: (cons _%g230461230501%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd230467230495%_
                        _%hd230464230485%_)
                       (_%g230459230474%_ _%g230460230478%_))))
               (_%g230459230474%_ _%g230460230478%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230459230474%_
                                                _%g230460230478%_)))))
                                   (_%g230458230653%_
                                    (|gxc[1]#parse-signature|
                                     _%stx230357%_
                                     _%g230363230441%_
                                     (let ((__tmp232719
                                            (lambda (_%g230656230659%_
                                                     _%g230657230662%_)
                                              (cons _%g230656230659%_
                                                    _%g230657230662%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp232719
                                        '()
                                        _%g230362230439%_)))))
                                 (_%g230360230384%_ _%g230361230388%_)))
                           _%signature230378230436%_
                           _%hd230368230405%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop230373230417%_
                                                   _%target230370230411%_
                                                   '()))
                                                (_%g230360230384%_
                                                 _%g230361230388%_)))))
                                      (_%g230360230384%_ _%g230361230388%_))))
                              (_%g230360230384%_ _%g230361230388%_))))
                      (_%g230360230384%_ _%g230361230388%_)))))
          (_%g230359230665%_ _%stx230357%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx230670%_)
        (let* ((_%g230673230697%_
                (lambda (_%g230674230693%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230674230693%_))))
               (_%g230672231572%_
                (lambda (_%g230674230701%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230674230701%_))
                      (let ((_%e230677230704%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230674230701%_))))
                        (let ((_%hd230678230708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230677230704%_)))
                              (_%tl230679230711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230677230704%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230679230711%_))
                              (let ((_%e230680230714%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230679230711%_))))
                                (let ((_%hd230681230718%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230680230714%_)))
                                      (_%tl230682230721%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230680230714%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230682230721%_))
                                      (let ((_g232720_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl230682230721%_
                                                '0))))
                                        (begin
                                          (let ((_g232721_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232720_)
                                                       (##values-length
                                                        _g232720_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232721_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232721_)))
                                          (let ((_%target230683230724%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232720_ 0)))
                                                (_%tl230685230727%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232720_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl230685230727%_))
                                                (letrec ((_%loop230686230730%_
                                                          (lambda (_%hd230684230734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature230690230737%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd230684230734%_))
                        (let ((_%e230687230739%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd230684230734%_))))
                          (let ((_%lp-hd230688230743%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230687230739%_)))
                                (_%lp-tl230689230746%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230687230739%_))))
                            (_%loop230686230730%_
                             _%lp-tl230689230746%_
                             (cons _%lp-hd230688230743%_
                                   _%case-signature230690230737%_))))
                        (let ((_%case-signature230691230749%_
                               (reverse _%case-signature230690230737%_)))
                          ((lambda (_%g230675230752%_ _%g230676230754%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g230676230754%_))
                                 (let* ((_%signatures230785%_
                                         (map (lambda (_%g230771230773%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx230670%_
                                                 _%g230676230754%_
                                                 _%g230771230773%_))
                                              (let ((__tmp232722
                                                     (lambda (_%g230776230779%_
                                                              _%g230777230782%_)
                                                       (cons _%g230776230779%_
                                                             _%g230777230782%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp232722
                                                 '()
                                                 _%g230675230752%_))))
                                        (_%g230788230814%_
                                         (lambda (_%g230789230810%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g230789230810%_))))
                                        (_%g230787231568%_
                                         (lambda (_%g230789230818%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g230789230818%_))
                                               (let ((_g232723_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g230789230818%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g232724_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g232723_)
                        (##values-length _g232723_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g232724_ 2)))
                 (error "Context expects 2 values" _g232724_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target230792230821%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g232723_
                                                             0)))
                                                         (_%tl230794230824%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g232723_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl230794230824%_))
                                                         (letrec ((_%loop230795230827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd230793230831%_
                                    _%sig230799230834%_
                                    _%arity230800230835%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd230793230831%_))
                                 (let ((_%e230796230837%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd230793230831%_))))
                                   (let ((_%lp-hd230797230841%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e230796230837%_)))
                                         (_%lp-tl230798230844%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e230796230837%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd230797230841%_))
                                         (let ((_%e230803230847%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd230797230841%_))))
                                           (let ((_%hd230804230851%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e230803230847%_)))
                                                 (_%tl230805230854%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e230803230847%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl230805230854%_))
                                                 (let ((_%e230806230857%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl230805230854%_))))
                                                   (let ((_%hd230807230861%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e230806230857%_)))
                                                         (_%tl230808230864%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e230806230857%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl230808230864%_))
                                                         (_%loop230795230827%_
                                                          _%lp-tl230798230844%_
                                                          (cons _%hd230807230861%_
                                                                _%sig230799230834%_)
                                                          (cons _%hd230804230851%_
                                                                _%arity230800230835%_))
                                                         (_%g230788230814%_
                                                          _%g230789230818%_))))
                                                 (_%g230788230814%_
                                                  _%g230789230818%_))))
                                         (_%g230788230814%_
                                          _%g230789230818%_))))
                                 (let ((_%sig230801230867%_
                                        (reverse _%sig230799230834%_))
                                       (_%arity230802230869%_
                                        (reverse _%arity230800230835%_)))
                                   ((lambda (_%g230790230871%_
                                             _%g230791230873%_)
                                      (let* ((_%g230890230898%_
                                              (lambda (_%g230891230894%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g230891230894%_))))
                                             (_%g230889231553%_
                                              (lambda (_%g230891230902%_)
                                                ((lambda (_%g230892230905%_)
                                                   (let* ((_%g230918230926%_
                                                           (lambda (_%g230919230922%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g230919230922%_))))
                  (_%g230917230948%_
                   (lambda (_%g230919230930%_)
                     ((lambda (_%g230920230933%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g230892230905%_
                                    (cons _%g230920230933%_ '()))))
                      _%g230919230930%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g230917230948%_
                                                      (let ((_g232725_
                                                             (let _%loop230952%_ ((_%rest230955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures230785%_)
                                          (_%unchecked-proc230957%_ '#f)
                                          (_%unchecked-clauses230958%_ '()))
                       (let* ((_%rest230959230967%_ _%rest230955%_)
                              (_%else230961230979%_
                               (lambda ()
                                 (values _%unchecked-proc230957%_
                                         (reverse!
                                          _%unchecked-clauses230958%_))))
                              (_%K230963231420%_
                               (lambda (_%rest230983%_ _%hd230985%_)
                                 (let* ((_%g230987231074%_
                                         (lambda (_%g230988231070%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g230988231070%_))))
                                        (_%g230986231416%_
                                         (lambda (_%g230988231078%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g230988231078%_))
                                               (let ((_%e230995231081%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g230988231078%_))))
                                                 (let ((_%hd230996231085%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e230995231081%_)))
                                                       (_%tl230997231088%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e230995231081%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl230997231088%_))
                                                       (let ((_%e230998231091%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl230997231088%_))))
                 (let ((_%hd230999231095%_
                        (let ()
                          (declare (not safe))
                          (##car _%e230998231091%_)))
                       (_%tl231000231098%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230998231091%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd230999231095%_))
                       (let ((_%e231001231101%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd230999231095%_))))
                         (let ((_%hd231002231105%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231001231101%_)))
                               (_%tl231003231108%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231001231101%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl231003231108%_))
                               (let ((_%e231004231111%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl231003231108%_))))
                                 (let ((_%hd231005231115%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231004231111%_)))
                                       (_%tl231006231118%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231004231111%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd231005231115%_))
                                       (let ((_%e231007231121%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd231005231115%_))))
                                         (if (equal? _%e231007231121%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl231006231118%_))
                                                 (let ((_%e231008231125%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl231006231118%_))))
                                                   (let ((_%hd231009231129%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e231008231125%_)))
                                                         (_%tl231010231132%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e231008231125%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd231009231129%_))
                                                         (let ((_%e231011231135%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd231009231129%_))))
                   (let ((_%hd231012231139%_
                          (let ()
                            (declare (not safe))
                            (##car _%e231011231135%_)))
                         (_%tl231013231142%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e231011231135%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd231012231139%_))
                         (if (let ((__tmp232727 |gxc[1]#_g232728_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp232727
                                _%hd231012231139%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl231013231142%_))
                                 (let ((_%e231014231145%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl231013231142%_))))
                                   (let ((_%hd231015231149%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231014231145%_)))
                                         (_%tl231016231152%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231014231145%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl231016231152%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl231010231132%_))
                                             (let ((_%e231017231155%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl231010231132%_))))
                                               (let ((_%hd231018231159%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231017231155%_)))
                                                     (_%tl231019231162%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231017231155%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd231018231159%_))
                                                     (let ((_%e231020231165%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd231018231159%_))))
                                                       (if (equal? _%e231020231165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl231019231162%_))
                       (let ((_%e231021231169%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl231019231162%_))))
                         (let ((_%hd231022231173%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231021231169%_)))
                               (_%tl231023231176%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231021231169%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd231022231173%_))
                               (let ((_%e231024231179%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd231022231173%_))))
                                 (let ((_%hd231025231183%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231024231179%_)))
                                       (_%tl231026231186%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231024231179%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd231025231183%_))
                                       (if (let ((__tmp232729
                                                  |gxc[1]#_g232730_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp232729
                                              _%hd231025231183%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl231026231186%_))
                                               (let ((_%e231027231189%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl231026231186%_))))
                                                 (let ((_%hd231028231193%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231027231189%_)))
                                                       (_%tl231029231196%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231027231189%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl231029231196%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl231023231176%_))
                                                           (let ((_%e231030231199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl231023231176%_))))
                     (let ((_%hd231031231203%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231030231199%_)))
                           (_%tl231032231206%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231030231199%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd231031231203%_))
                           (let ((_%e231033231209%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd231031231203%_))))
                             (if (equal? _%e231033231209%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl231032231206%_))
                                     (let ((_%e231034231213%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl231032231206%_))))
                                       (let ((_%hd231035231217%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e231034231213%_)))
                                             (_%tl231036231220%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e231034231213%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd231035231217%_))
                                             (let ((_%e231037231223%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd231035231217%_))))
                                               (let ((_%hd231038231227%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231037231223%_)))
                                                     (_%tl231039231230%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231037231223%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd231038231227%_))
                                                     (if (let ((__tmp232731
                                                                |gxc[1]#_g232732_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp232731
                                                            _%hd231038231227%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl231039231230%_))
                     (let ((_%e231040231233%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl231039231230%_))))
                       (let ((_%hd231041231237%_
                              (let ()
                                (declare (not safe))
                                (##car _%e231040231233%_)))
                             (_%tl231042231240%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e231040231233%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl231042231240%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl231036231220%_))
                                 (let ((_%e231043231243%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl231036231220%_))))
                                   (let ((_%hd231044231247%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231043231243%_)))
                                         (_%tl231045231250%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231043231243%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd231044231247%_))
                                         (let ((_%e231046231253%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd231044231247%_))))
                                           (if (equal? _%e231046231253%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl231045231250%_))
                                                   (let ((_%e231047231257%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl231045231250%_))))
                                                     (let ((_%hd231048231261%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e231047231257%_)))
                                                           (_%tl231049231264%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e231047231257%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd231048231261%_))
                                                           (let ((_%e231050231267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd231048231261%_))))
                     (let ((_%hd231051231271%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231050231267%_)))
                           (_%tl231052231274%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231050231267%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd231051231271%_))
                           (if (let ((__tmp232733 |gxc[1]#_g232734_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp232733
                                  _%hd231051231271%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl231052231274%_))
                                   (let ((_%e231053231277%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl231052231274%_))))
                                     (let ((_%hd231054231281%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e231053231277%_)))
                                           (_%tl231055231284%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e231053231277%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl231055231284%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl231049231264%_))
                                               (let ((_%e231056231287%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl231049231264%_))))
                                                 (let ((_%hd231057231291%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231056231287%_)))
                                                       (_%tl231058231294%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231056231287%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd231057231291%_))
                                                       (let ((_%e231059231297%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd231057231291%_))))
                 (if (equal? _%e231059231297%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl231058231294%_))
                         (let ((_%e231060231301%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl231058231294%_))))
                           (let ((_%hd231061231305%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e231060231301%_)))
                                 (_%tl231062231308%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e231060231301%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd231061231305%_))
                                 (let ((_%e231063231311%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd231061231305%_))))
                                   (let ((_%hd231064231315%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231063231311%_)))
                                         (_%tl231065231318%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231063231311%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd231064231315%_))
                                         (if (let ((__tmp232735
                                                    |gxc[1]#_g232736_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp232735
                                                _%hd231064231315%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl231065231318%_))
                                                 (let ((_%e231066231321%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl231065231318%_))))
                                                   (let ((_%hd231067231325%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e231066231321%_)))
                                                         (_%tl231068231328%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e231066231321%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl231068231328%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl231062231308%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl231000231098%_))
                         ((lambda (_%g230989231331%_
                                   _%g230990231333%_
                                   _%g230991231334%_
                                   _%g230992231335%_
                                   _%g230993231336%_
                                   _%g230994231337%_)
                            (let ((_%clause231408%_
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
                                                     (cons _%g230994231337%_
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
                                                 (cons _%g230992231335%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g230989231331%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked231410%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g230990231333%_))))
                              (_%loop230952%_
                               _%rest230983%_
                               (let ((_%$e231412%_ _%unchecked231410%_))
                                 (if _%$e231412%_
                                     _%$e231412%_
                                     _%unchecked-proc230957%_))
                               (cons _%clause231408%_
                                     _%unchecked-clauses230958%_))))
                          _%hd231067231325%_
                          _%hd231054231281%_
                          _%hd231041231237%_
                          _%hd231028231193%_
                          _%hd231015231149%_
                          _%hd230996231085%_)
                         (_%g230987231074%_ _%g230988231078%_))
                     (_%g230987231074%_ _%g230988231078%_))
                 (_%g230987231074%_ _%g230988231078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g230987231074%_
                                                  _%g230988231078%_))
                                             (_%g230987231074%_
                                              _%g230988231078%_))
                                         (_%g230987231074%_
                                          _%g230988231078%_))))
                                 (_%g230987231074%_ _%g230988231078%_))))
                         (_%g230987231074%_ _%g230988231078%_))
                     (_%g230987231074%_ _%g230988231078%_)))
               (_%g230987231074%_ _%g230988231078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230987231074%_
                                                _%g230988231078%_))
                                           (_%g230987231074%_
                                            _%g230988231078%_))))
                                   (_%g230987231074%_ _%g230988231078%_))
                               (_%g230987231074%_ _%g230988231078%_))
                           (_%g230987231074%_ _%g230988231078%_))))
                   (_%g230987231074%_ _%g230988231078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g230987231074%_
                                                    _%g230988231078%_))
                                               (_%g230987231074%_
                                                _%g230988231078%_)))
                                         (_%g230987231074%_
                                          _%g230988231078%_))))
                                 (_%g230987231074%_ _%g230988231078%_))
                             (_%g230987231074%_ _%g230988231078%_))))
                     (_%g230987231074%_ _%g230988231078%_))
                 (_%g230987231074%_ _%g230988231078%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g230987231074%_
                                                      _%g230988231078%_))))
                                             (_%g230987231074%_
                                              _%g230988231078%_))))
                                     (_%g230987231074%_ _%g230988231078%_))
                                 (_%g230987231074%_ _%g230988231078%_)))
                           (_%g230987231074%_ _%g230988231078%_))))
                   (_%g230987231074%_ _%g230988231078%_))
               (_%g230987231074%_ _%g230988231078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230987231074%_
                                                _%g230988231078%_))
                                           (_%g230987231074%_
                                            _%g230988231078%_))
                                       (_%g230987231074%_ _%g230988231078%_))))
                               (_%g230987231074%_ _%g230988231078%_))))
                       (_%g230987231074%_ _%g230988231078%_))
                   (_%g230987231074%_ _%g230988231078%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g230987231074%_
                                                      _%g230988231078%_))))
                                             (_%g230987231074%_
                                              _%g230988231078%_))
                                         (_%g230987231074%_
                                          _%g230988231078%_))))
                                 (_%g230987231074%_ _%g230988231078%_))
                             (_%g230987231074%_ _%g230988231078%_))
                         (_%g230987231074%_ _%g230988231078%_))))
                 (_%g230987231074%_ _%g230988231078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g230987231074%_
                                                  _%g230988231078%_))
                                             (_%g230987231074%_
                                              _%g230988231078%_)))
                                       (_%g230987231074%_ _%g230988231078%_))))
                               (_%g230987231074%_ _%g230988231078%_))))
                       (_%g230987231074%_ _%g230988231078%_))))
               (_%g230987231074%_ _%g230988231078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230987231074%_
                                                _%g230988231078%_)))))
                                   (_%g230986231416%_ _%hd230985%_)))))
                         (if (pair? _%rest230959230967%_)
                             (let ((_%hd230964231424%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest230959230967%_)))
                                   (_%tl230965231427%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest230959230967%_))))
                               (let* ((_%hd231430%_ _%hd230964231424%_)
                                      (_%rest231433%_ _%tl230965231427%_))
                                 (_%K230963231420%_
                                  _%rest231433%_
                                  _%hd231430%_)))
                             (_%else230961230979%_))))))
                (begin
                  (let ((_g232726_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g232725_)
                               (##values-length _g232725_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g232726_ 2)))
                        (error "Context expects 2 values" _g232726_)))
                  (let ((_%unchecked-proc231436%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232725_ 0)))
                        (_%unchecked-clauses231438%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232725_ 1))))
                    (if _%unchecked-proc231436%_
                        (let* ((_%g231440231464%_
                                (lambda (_%g231441231460%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g231441231460%_))))
                               (_%g231439231549%_
                                (lambda (_%g231441231468%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g231441231468%_))
                                      (let ((_%e231444231471%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g231441231468%_))))
                                        (let ((_%hd231445231475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231444231471%_)))
                                              (_%tl231446231478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231444231471%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231446231478%_))
                                              (let ((_%e231447231481%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl231446231478%_))))
                                                (let ((_%hd231448231485%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231447231481%_)))
                                                      (_%tl231449231488%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231447231481%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd231448231485%_))
                                                      (let ((_g232737_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd231448231485%_ '0))))
                (begin
                  (let ((_g232738_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g232737_)
                               (##values-length _g232737_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g232738_ 2)))
                        (error "Context expects 2 values" _g232738_)))
                  (let ((_%target231450231491%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232737_ 0)))
                        (_%tl231452231494%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232737_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl231452231494%_))
                        (letrec ((_%loop231453231497%_
                                  (lambda (_%hd231451231501%_
                                           _%clause231457231504%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd231451231501%_))
                                        (let ((_%e231454231506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd231451231501%_))))
                                          (let ((_%lp-hd231455231510%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e231454231506%_)))
                                                (_%lp-tl231456231513%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e231454231506%_))))
                                            (_%loop231453231497%_
                                             _%lp-tl231456231513%_
                                             (cons _%lp-hd231455231510%_
                                                   _%clause231457231504%_))))
                                        (let ((_%clause231458231516%_
                                               (reverse _%clause231457231504%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl231449231488%_))
                                              ((lambda (_%g231442231519%_
                                                        _%g231443231521%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g231443231521%_
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
                                             (let ((__tmp232739
                                                    (lambda (_%g231540231543%_
                                                             _%g231541231546%_)
                                                      (cons _%g231540231543%_
                                                            _%g231541231546%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp232739
                                                '()
                                                _%g231442231519%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause231458231516%_
                                               _%hd231445231475%_)
                                              (_%g231440231464%_
                                               _%g231441231468%_)))))))
                          (_%loop231453231497%_ _%target231450231491%_ '()))
                        (_%g231440231464%_ _%g231441231468%_)))))
              (_%g231440231464%_ _%g231441231468%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g231440231464%_
                                               _%g231441231468%_))))
                                      (_%g231440231464%_ _%g231441231468%_)))))
                          (_%g231439231549%_
                           (list _%unchecked-proc231436%_
                                 _%unchecked-clauses231438%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g230891230902%_))))
                                        (_%g230889231553%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g230676230754%_
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
                                          _%g230790230871%_
                                          _%g230791230873%_))
                                       (let ((__tmp232740
                                              (lambda (_%g231556231560%_
                                                       _%g231557231563%_
                                                       _%g231558231565%_)
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
                                (cons _%g231557231563%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g231556231560%_ '())))))
              _%g231558231565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp232740
                                          '()
                                          _%g230790230871%_
                                          _%g230791230873%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig230801230867%_
                                    _%arity230802230869%_))))))
                   (_%loop230795230827%_ _%target230792230821%_ '() '()))
                 (_%g230788230814%_ _%g230789230818%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230788230814%_
                                                _%g230789230818%_)))))
                                   (_%g230787231568%_ _%signatures230785%_))
                                 (_%g230673230697%_ _%g230674230701%_)))
                           _%case-signature230691230749%_
                           _%hd230681230718%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop230686230730%_
                                                   _%target230683230724%_
                                                   '()))
                                                (_%g230673230697%_
                                                 _%g230674230701%_)))))
                                      (_%g230673230697%_ _%g230674230701%_))))
                              (_%g230673230697%_ _%g230674230701%_))))
                      (_%g230673230697%_ _%g230674230701%_)))))
          (_%g230672231572%_ _%stx230670%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx231580%_)
        (let* ((_%__stx232560232561%_ _%$stx231580%_)
               (_%g231586231646%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232560232561%_)))))
          (let ((_%__kont232563232564%_
                 (lambda (_%g231588231868%_ _%g231589231870%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231589231870%_ '()))
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
                                                       (cons _%g231589231870%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231588231868%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont232565232566%_
                 (lambda (_%g231603231793%_
                          _%g231604231795%_
                          _%g231605231796%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231605231796%_ '()))
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
                                                       (cons _%g231605231796%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231604231795%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g231603231793%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont232567232568%_
                 (lambda (_%g231622231707%_
                          _%g231623231709%_
                          _%g231624231710%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231624231710%_ '()))
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
                                                       (cons _%g231624231710%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231623231709%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g231622231707%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232560232561%_))
                (let ((_%e231590231824%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232560232561%_))))
                  (let ((_%tl231592231831%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231590231824%_)))
                        (_%hd231591231828%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231590231824%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl231592231831%_))
                        (let ((_%e231593231834%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl231592231831%_))))
                          (let ((_%tl231595231841%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e231593231834%_)))
                                (_%hd231594231838%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e231593231834%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd231594231838%_))
                                (let ((_%e231596231844%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd231594231838%_))))
                                  (if (equal? _%e231596231844%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl231595231841%_))
                                          (let ((_%e231597231848%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl231595231841%_))))
                                            (let ((_%tl231599231855%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e231597231848%_)))
                                                  (_%hd231598231852%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e231597231848%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl231599231855%_))
                                                  (let ((_%e231600231858%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl231599231855%_))))
                                                    (let ((_%tl231602231865%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231600231858%_)))
                                                          (_%hd231601231862%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231600231858%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl231602231865%_))
                                                          (_%__kont232563232564%_
                                                           _%hd231601231862%_
                                                           _%hd231598231852%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g231586231646%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g231586231646%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g231586231646%_)))
                                      (if (equal? _%e231596231844%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231595231841%_))
                                              (let ((_%e231613231763%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl231595231841%_))))
                                                (let ((_%tl231615231770%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231613231763%_)))
                                                      (_%hd231614231767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231613231763%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl231615231770%_))
                                                      (let ((_%e231616231773%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl231615231770%_))))
                (let ((_%tl231618231780%_
                       (let () (declare (not safe)) (##cdr _%e231616231773%_)))
                      (_%hd231617231777%_
                       (let ()
                         (declare (not safe))
                         (##car _%e231616231773%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl231618231780%_))
                      (let ((_%e231619231783%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl231618231780%_))))
                        (let ((_%tl231621231790%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231619231783%_)))
                              (_%hd231620231787%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231619231783%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl231621231790%_))
                              (_%__kont232565232566%_
                               _%hd231620231787%_
                               _%hd231617231777%_
                               _%hd231614231767%_)
                              (let ()
                                (declare (not safe))
                                (_%g231586231646%_)))))
                      (let () (declare (not safe)) (_%g231586231646%_)))))
              (let () (declare (not safe)) (_%g231586231646%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g231586231646%_)))
                                          (if (equal? _%e231596231844%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl231595231841%_))
                                                  (let ((_%e231632231677%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl231595231841%_))))
                                                    (let ((_%tl231634231684%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231632231677%_)))
                                                          (_%hd231633231681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231632231677%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl231634231684%_))
                                                          (let ((_%e231635231687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl231634231684%_))))
                    (let ((_%tl231637231694%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e231635231687%_)))
                          (_%hd231636231691%_
                           (let ()
                             (declare (not safe))
                             (##car _%e231635231687%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231637231694%_))
                          (let ((_%e231638231697%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl231637231694%_))))
                            (let ((_%tl231640231704%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231638231697%_)))
                                  (_%hd231639231701%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231638231697%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl231640231704%_))
                                  (_%__kont232567232568%_
                                   _%hd231639231701%_
                                   _%hd231636231691%_
                                   _%hd231633231681%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g231586231646%_)))))
                          (let () (declare (not safe)) (_%g231586231646%_)))))
                  (let () (declare (not safe)) (_%g231586231646%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g231586231646%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g231586231646%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g231586231646%_)))))
                        (let () (declare (not safe)) (_%g231586231646%_)))))
                (let () (declare (not safe)) (_%g231586231646%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx231892%_)
        (let* ((_%g231896231916%_
                (lambda (_%g231897231912%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g231897231912%_))))
               (_%g231895231985%_
                (lambda (_%g231897231920%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g231897231920%_))
                      (let ((_%e231899231923%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g231897231920%_))))
                        (let ((_%hd231900231927%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231899231923%_)))
                              (_%tl231901231930%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231899231923%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl231901231930%_))
                              (let ((_g232741_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl231901231930%_
                                        '0))))
                                (begin
                                  (let ((_g232742_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232741_)
                                               (##values-length _g232741_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232742_ 2)))
                                        (error "Context expects 2 values"
                                               _g232742_)))
                                  (let ((_%target231902231933%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232741_ 0)))
                                        (_%tl231904231936%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232741_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl231904231936%_))
                                        (letrec ((_%loop231905231939%_
                                                  (lambda (_%hd231903231943%_
                                                           _%decl231909231946%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd231903231943%_))
                                                        (let ((_%e231906231948%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd231903231943%_))))
                  (let ((_%lp-hd231907231952%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231906231948%_)))
                        (_%lp-tl231908231955%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231906231948%_))))
                    (_%loop231905231939%_
                     _%lp-tl231908231955%_
                     (cons _%lp-hd231907231952%_ _%decl231909231946%_))))
                (let ((_%decl231910231958%_ (reverse _%decl231909231946%_)))
                  ((lambda (_%g231898231961%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp232743
                                  (lambda (_%g231976231979%_ _%g231977231982%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g231976231979%_)
                                          _%g231977231982%_))))
                             (declare (not safe))
                             (__foldr1 __tmp232743 '() _%g231898231961%_))))
                   _%decl231910231958%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop231905231939%_
                                           _%target231902231933%_
                                           '()))
                                        (_%g231896231916%_
                                         _%g231897231920%_)))))
                              (_%g231896231916%_ _%g231897231920%_))))
                      (_%g231896231916%_ _%g231897231920%_)))))
          (_%g231895231985%_ _%$stx231892%_))))))
