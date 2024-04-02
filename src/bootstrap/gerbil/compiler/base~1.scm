(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g130179_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130181_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130183_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130185_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130186_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130188_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130189_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130191_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130192_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130194_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130195_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx129374%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129374%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx129377%_)
        (let* ((_%g129380129404%_
                (lambda (_%g129381129400%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129381129400%_))))
               (_%g129379129707%_
                (lambda (_%g129381129408%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129381129408%_))
                      (let ((_%e129386129411%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129381129408%_))))
                        (let ((_%hd129385129415%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129386129411%_)))
                              (_%tl129384129418%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129386129411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129384129418%_))
                              (let ((_%e129389129421%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129384129418%_))))
                                (let ((_%hd129388129425%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129389129421%_)))
                                      (_%tl129387129428%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129389129421%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl129387129428%_))
                                      (let ((_g130170_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl129387129428%_
                                                '0))))
                                        (begin
                                          (let ((_g130171_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g130170_)
                                                       (##vector-length
                                                        _g130170_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g130171_ 2)))
                                                (error "Context expects 2 values"
                                                       _g130171_)))
                                          (let ((_%target129390129431%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g130170_ 0)))
                                                (_%tl129392129434%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g130170_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl129392129434%_))
                                                (letrec ((_%loop129393129437%_
                                                          (lambda (_%hd129391129441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause129397129444%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd129391129441%_))
                        (let ((_%e129394129447%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd129391129441%_))))
                          (let ((_%lp-hd129395129451%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129394129447%_)))
                                (_%lp-tl129396129454%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129394129447%_))))
                            (_%loop129393129437%_
                             _%lp-tl129396129454%_
                             (cons _%lp-hd129395129451%_
                                   _%clause129397129444%_))))
                        (let ((_%clause129398129457%_
                               (reverse _%clause129397129444%_)))
                          ((lambda (_%L129461%_ _%L129463%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L129463%_))
                                 (let* ((_%g129482129499%_
                                         (lambda (_%g129483129495%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g129483129495%_))))
                                        (_%g129481129560%_
                                         (lambda (_%g129483129503%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g129483129503%_))
                                               (let ((_g130172_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g129483129503%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g130173_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g130172_)
                        (##vector-length _g130172_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g130173_ 2)))
                 (error "Context expects 2 values" _g130173_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target129485129506%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130172_
                                                             0)))
                                                         (_%tl129487129509%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130172_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl129487129509%_))
                                                         (letrec ((_%loop129488129512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd129486129516%_ _%clause129492129519%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd129486129516%_))
                                 (let ((_%e129489129522%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd129486129516%_))))
                                   (let ((_%lp-hd129490129526%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129489129522%_)))
                                         (_%lp-tl129491129529%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129489129522%_))))
                                     (_%loop129488129512%_
                                      _%lp-tl129491129529%_
                                      (cons _%lp-hd129490129526%_
                                            _%clause129492129519%_))))
                                 (let ((_%clause129493129532%_
                                        (reverse _%clause129492129519%_)))
                                   ((lambda (_%L129536%_)
                                      (let ()
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'lambda))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '$stx))
                                                          '())
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'ast-case))
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '$stx))
                              (cons _%L129463%_
                                    (let ((__tmp130174
                                           (lambda (_%g129551129554%_
                                                    _%g129552129557%_)
                                             (cons _%g129551129554%_
                                                   _%g129552129557%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp130174
                                       '()
                                       _%L129536%_)))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause129493129532%_))))))
                   (_%loop129488129512%_ _%target129485129506%_ '()))
                 (_%g129482129499%_ _%g129483129503%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g129482129499%_
                                                _%g129483129503%_)))))
                                   (_%g129481129560%_
                                    (let ((__tmp130177
                                           (lambda (_%clause129564%_)
                                             (let* ((_%__stx130096130097%_
                                                     _%clause129564%_)
                                                    (_%g129568129595%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx130096130097%_)))))
                                               (let ((_%__kont130099130100%_
                                                      (lambda (_%L129680%_
                                                               _%L129682%_)
                                                        (cons _%L129682%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L129680%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont130101130102%_
                                                      (lambda (_%L129632%_
                                                               _%L129634%_
                                                               _%L129635%_)
                                                        (cons _%L129635%_
                                                              (cons _%L129634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L129632%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx130096130097%_))
                                                     (let ((_%e129574129660%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx130096130097%_))))
                                                       (let ((_%tl129572129667%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e129574129660%_)))
                     (_%hd129573129664%_
                      (let () (declare (not safe)) (##car _%e129574129660%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl129572129667%_))
                     (let ((_%e129577129670%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl129572129667%_))))
                       (let ((_%tl129575129677%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e129577129670%_)))
                             (_%hd129576129674%_
                              (let ()
                                (declare (not safe))
                                (##car _%e129577129670%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl129575129677%_))
                             (_%__kont130099130100%_
                              _%hd129576129674%_
                              _%hd129573129664%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl129575129677%_))
                                 (let ((_%e129589129622%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl129575129677%_))))
                                   (let ((_%tl129587129629%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129589129622%_)))
                                         (_%hd129588129626%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129589129622%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl129587129629%_))
                                         (_%__kont130101130102%_
                                          _%hd129588129626%_
                                          _%hd129576129674%_
                                          _%hd129573129664%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g129568129595%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g129568129595%_))))))
                     (let () (declare (not safe)) (_%g129568129595%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g129568129595%_)))))))
                                          (__tmp130175
                                           (let ((__tmp130176
                                                  (lambda (_%g129698129701%_
                                                           _%g129699129704%_)
                                                    (cons _%g129698129701%_
                                                          _%g129699129704%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp130176
                                              '()
                                              _%L129461%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp130177 __tmp130175))))
                                 (_%g129380129404%_ _%g129381129408%_)))
                           _%clause129398129457%_
                           _%hd129388129425%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop129393129437%_
                                                   _%target129390129431%_
                                                   '()))
                                                (_%g129380129404%_
                                                 _%g129381129408%_)))))
                                      (_%g129380129404%_ _%g129381129408%_))))
                              (_%g129380129404%_ _%g129381129408%_))))
                      (_%g129380129404%_ _%g129381129408%_)))))
          (_%g129379129707%_ _%stx129377%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj130146
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
           __obj130146
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130146 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130146
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130146
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130146 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130146 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130146 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130146 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130146 ':init! '11 '#f '#f))
        (let ((__tmp130178 |gxc[1]#_g130179_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130146 __tmp130178 '12 '#f '#f))
        (let ((__tmp130180 |gxc[1]#_g130181_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130146 __tmp130180 '13 '#f '#f))
        (let ((__tmp130182 |gxc[1]#_g130183_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130146 __tmp130182 '14 '#f '#f))
        (let ((__tmp130184
               (cons (cons 'gensyms |gxc[1]#_g130185_|)
                     (cons (cons 'bindings |gxc[1]#_g130186_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130146 __tmp130184 '15 '#f '#f))
        (let ((__tmp130187
               (cons (cons 'gensyms |gxc[1]#_g130188_|)
                     (cons (cons 'bindings |gxc[1]#_g130189_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130146 __tmp130187 '16 '#f '#f))
        (let ((__tmp130190
               (cons (cons 'gensyms |gxc[1]#_g130191_|)
                     (cons (cons 'bindings |gxc[1]#_g130192_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130146 __tmp130190 '17 '#f '#f))
        (let ((__tmp130193
               (cons (cons 'gensyms |gxc[1]#_g130194_|)
                     (cons (cons 'bindings |gxc[1]#_g130195_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130146 __tmp130193 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130146 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130146 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130146 '() '20 '#f '#f))
        __obj130146))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx129713%_)
        (let* ((_%g129717129731%_
                (lambda (_%g129718129727%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129718129727%_))))
               (_%g129716129772%_
                (lambda (_%g129718129735%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129718129735%_))
                      (let ((_%e129722129738%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129718129735%_))))
                        (let ((_%hd129721129742%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129722129738%_)))
                              (_%tl129720129745%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129722129738%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129720129745%_))
                              (let ((_%e129725129748%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129720129745%_))))
                                (let ((_%hd129724129752%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129725129748%_)))
                                      (_%tl129723129755%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129725129748%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl129723129755%_))
                                      ((lambda (_%L129758%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'with-lock))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+verbose-mutex+))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _%L129758%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd129724129752%_)
                                      (_%g129717129731%_ _%g129718129735%_))))
                              (_%g129717129731%_ _%g129718129735%_))))
                      (_%g129717129731%_ _%g129718129735%_)))))
          (_%g129716129772%_ _%$stx129713%_))))))
