(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g187702_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187704_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187706_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187708_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187709_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187711_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187712_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187714_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187715_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187717_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187718_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx186662%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx186662%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx186665%_)
        (let* ((_%g186668186692%_
                (lambda (_%g186669186688%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g186669186688%_))))
               (_%g186667186991%_
                (lambda (_%g186669186696%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g186669186696%_))
                      (let ((_%e186672186699%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g186669186696%_))))
                        (let ((_%hd186673186703%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186672186699%_)))
                              (_%tl186674186706%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186672186699%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186674186706%_))
                              (let ((_%e186675186709%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl186674186706%_))))
                                (let ((_%hd186676186713%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186675186709%_)))
                                      (_%tl186677186716%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186675186709%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl186677186716%_))
                                      (let ((_g187693_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl186677186716%_
                                                '0))))
                                        (begin
                                          (let ((_g187694_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g187693_)
                                                       (##values-length
                                                        _g187693_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g187694_ 2)))
                                                (error "Context expects 2 values"
                                                       _g187694_)))
                                          (let ((_%target186678186719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g187693_ 0)))
                                                (_%tl186680186722%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g187693_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl186680186722%_))
                                                (letrec ((_%loop186681186725%_
                                                          (lambda (_%hd186679186729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause186685186732%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd186679186729%_))
                        (let ((_%e186682186734%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd186679186729%_))))
                          (let ((_%lp-hd186683186738%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e186682186734%_)))
                                (_%lp-tl186684186741%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e186682186734%_))))
                            (_%loop186681186725%_
                             _%lp-tl186684186741%_
                             (cons _%lp-hd186683186738%_
                                   _%clause186685186732%_))))
                        (let ((_%clause186686186744%_
                               (reverse _%clause186685186732%_)))
                          ((lambda (_%g186670186747%_ _%g186671186749%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g186671186749%_))
                                 (let* ((_%g186768186785%_
                                         (lambda (_%g186769186781%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g186769186781%_))))
                                        (_%g186767186844%_
                                         (lambda (_%g186769186789%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g186769186789%_))
                                               (let ((_g187695_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g186769186789%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g187696_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g187695_)
                        (##values-length _g187695_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g187696_ 2)))
                 (error "Context expects 2 values" _g187696_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target186771186792%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g187695_
                                                             0)))
                                                         (_%tl186773186795%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g187695_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl186773186795%_))
                                                         (letrec ((_%loop186774186798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd186772186802%_ _%clause186778186805%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd186772186802%_))
                                 (let ((_%e186775186807%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd186772186802%_))))
                                   (let ((_%lp-hd186776186811%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e186775186807%_)))
                                         (_%lp-tl186777186814%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e186775186807%_))))
                                     (_%loop186774186798%_
                                      _%lp-tl186777186814%_
                                      (cons _%lp-hd186776186811%_
                                            _%clause186778186805%_))))
                                 (let ((_%clause186779186817%_
                                        (reverse _%clause186778186805%_)))
                                   ((lambda (_%g186770186820%_)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'lambda))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '$stx))
                                                        '())
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'ast-case))
                      (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '$stx))
                            (cons _%g186671186749%_
                                  (let ((__tmp187697
                                         (lambda (_%g186835186838%_
                                                  _%g186836186841%_)
                                           (cons _%g186835186838%_
                                                 _%g186836186841%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp187697
                                     '()
                                     _%g186770186820%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause186779186817%_))))))
                   (_%loop186774186798%_ _%target186771186792%_ '()))
                 (_%g186768186785%_ _%g186769186789%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g186768186785%_
                                                _%g186769186789%_)))))
                                   (_%g186767186844%_
                                    (let ((__tmp187700
                                           (lambda (_%clause186848%_)
                                             (let* ((_%__stx187612187613%_
                                                     _%clause186848%_)
                                                    (_%g186852186879%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx187612187613%_)))))
                                               (let ((_%__kont187615187616%_
                                                      (lambda (_%g186854186964%_
                                                               _%g186855186966%_)
                                                        (cons _%g186855186966%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g186854186964%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont187617187618%_
                                                      (lambda (_%g186862186916%_
                                                               _%g186863186918%_
                                                               _%g186864186919%_)
                                                        (cons _%g186864186919%_
                                                              (cons _%g186863186918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g186862186916%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx187612187613%_))
                                                     (let ((_%e186856186944%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx187612187613%_))))
                                                       (let ((_%tl186858186951%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e186856186944%_)))
                     (_%hd186857186948%_
                      (let () (declare (not safe)) (##car _%e186856186944%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl186858186951%_))
                     (let ((_%e186859186954%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl186858186951%_))))
                       (let ((_%tl186861186961%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e186859186954%_)))
                             (_%hd186860186958%_
                              (let ()
                                (declare (not safe))
                                (##car _%e186859186954%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl186861186961%_))
                             (_%__kont187615187616%_
                              _%hd186860186958%_
                              _%hd186857186948%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl186861186961%_))
                                 (let ((_%e186871186906%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl186861186961%_))))
                                   (let ((_%tl186873186913%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e186871186906%_)))
                                         (_%hd186872186910%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e186871186906%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl186873186913%_))
                                         (_%__kont187617187618%_
                                          _%hd186872186910%_
                                          _%hd186860186958%_
                                          _%hd186857186948%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g186852186879%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g186852186879%_))))))
                     (let () (declare (not safe)) (_%g186852186879%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g186852186879%_)))))))
                                          (__tmp187698
                                           (let ((__tmp187699
                                                  (lambda (_%g186982186985%_
                                                           _%g186983186988%_)
                                                    (cons _%g186982186985%_
                                                          _%g186983186988%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp187699
                                              '()
                                              _%g186670186747%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp187700 __tmp187698))))
                                 (_%g186668186692%_ _%g186669186696%_)))
                           _%clause186686186744%_
                           _%hd186676186713%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop186681186725%_
                                                   _%target186678186719%_
                                                   '()))
                                                (_%g186668186692%_
                                                 _%g186669186696%_)))))
                                      (_%g186668186692%_ _%g186669186696%_))))
                              (_%g186668186692%_ _%g186669186696%_))))
                      (_%g186668186692%_ _%g186669186696%_)))))
          (_%g186667186991%_ _%stx186665%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj187662
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj187662
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187662 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj187662
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj187662
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187662 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187662 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187662 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187662 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187662 ':init! '12 '#f '#f))
        (let ((__tmp187701 |gxc[1]#_g187702_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj187662 __tmp187701 '3 '#f '#f))
        (let ((__tmp187703 |gxc[1]#_g187704_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj187662 __tmp187703 '13 '#f '#f))
        (let ((__tmp187705 |gxc[1]#_g187706_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj187662 __tmp187705 '14 '#f '#f))
        (let ((__tmp187707
               (cons (cons 'gensyms |gxc[1]#_g187708_|)
                     (cons (cons 'bindings |gxc[1]#_g187709_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj187662 __tmp187707 '15 '#f '#f))
        (let ((__tmp187710
               (cons (cons 'gensyms |gxc[1]#_g187711_|)
                     (cons (cons 'bindings |gxc[1]#_g187712_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj187662 __tmp187710 '16 '#f '#f))
        (let ((__tmp187713
               (cons (cons 'gensyms |gxc[1]#_g187714_|)
                     (cons (cons 'bindings |gxc[1]#_g187715_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj187662 __tmp187713 '17 '#f '#f))
        (let ((__tmp187716
               (cons (cons 'gensyms |gxc[1]#_g187717_|)
                     (cons (cons 'bindings |gxc[1]#_g187718_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj187662 __tmp187716 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187662 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187662 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187662 '() '20 '#f '#f))
        __obj187662))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx186997%_)
        (let* ((_%g187001187015%_
                (lambda (_%g187002187011%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187002187011%_))))
               (_%g187000187056%_
                (lambda (_%g187002187019%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187002187019%_))
                      (let ((_%e187004187022%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g187002187019%_))))
                        (let ((_%hd187005187026%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187004187022%_)))
                              (_%tl187006187029%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187004187022%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187006187029%_))
                              (let ((_%e187007187032%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl187006187029%_))))
                                (let ((_%hd187008187036%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187007187032%_)))
                                      (_%tl187009187039%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187007187032%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl187009187039%_))
                                      ((lambda (_%g187003187042%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'with-lock))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '__verbose-mutex))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _%g187003187042%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd187008187036%_)
                                      (_%g187001187015%_ _%g187002187019%_))))
                              (_%g187001187015%_ _%g187002187019%_))))
                      (_%g187001187015%_ _%g187002187019%_)))))
          (_%g187000187056%_ _%$stx186997%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx187060%_)
        (let* ((_%g187064187078%_
                (lambda (_%g187065187074%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187065187074%_))))
               (_%g187063187119%_
                (lambda (_%g187065187082%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187065187082%_))
                      (let ((_%e187067187085%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g187065187082%_))))
                        (let ((_%hd187068187089%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187067187085%_)))
                              (_%tl187069187092%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187067187085%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187069187092%_))
                              (let ((_%e187070187095%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl187069187092%_))))
                                (let ((_%hd187071187099%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187070187095%_)))
                                      (_%tl187072187102%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187070187095%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl187072187102%_))
                                      ((lambda (_%g187066187105%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'spawn))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'lambda))
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g187066187105%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd187071187099%_)
                                      (_%g187064187078%_ _%g187065187082%_))))
                              (_%g187064187078%_ _%g187065187082%_))))
                      (_%g187064187078%_ _%g187065187082%_)))))
          (_%g187063187119%_ _%$stx187060%_))))))
