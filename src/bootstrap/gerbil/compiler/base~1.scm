(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g200051_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200053_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200055_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200057_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200058_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200060_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200061_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200063_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200064_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200066_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200067_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx199011%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx199011%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx199014%_)
        (let* ((_%$%g199017199041%_
                (lambda (_%$%g199018199037%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199018199037%_))))
               (_%$%g199016199340%_
                (lambda (_%$%g199018199045%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199018199045%_))
                      (let ((_%$%e199021199048%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g199018199045%_))))
                        (let ((_%$%hd199022199052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199021199048%_)))
                              (_%$%tl199023199055%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199021199048%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199023199055%_))
                              (let ((_%$%e199024199058%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl199023199055%_))))
                                (let ((_%$%hd199025199062%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199024199058%_)))
                                      (_%$%tl199026199065%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199024199058%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl199026199065%_))
                                      (let ((_g200042_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl199026199065%_
                                                '0))))
                                        (begin
                                          (let ((_g200043_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g200042_)
                                                       (##values-length
                                                        _g200042_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g200043_ 2)))
                                                (error "Context expects 2 values"
                                                       _g200043_)))
                                          (let ((_%$%target199027199068%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g200042_ 0)))
                                                (_%$%tl199029199071%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g200042_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl199029199071%_))
                                                (letrec ((_%$%loop199030199074%_
                                                          (lambda (_%$%hd199028199078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause199034199081%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd199028199078%_))
                        (let ((_%$%e199031199083%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd199028199078%_))))
                          (let ((_%$%lp-hd199032199087%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199031199083%_)))
                                (_%$%lp-tl199033199090%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199031199083%_))))
                            (_%$%loop199030199074%_
                             _%$%lp-tl199033199090%_
                             (cons _%$%lp-hd199032199087%_
                                   _%$%clause199034199081%_))))
                        (let ((_%$%clause199035199093%_
                               (reverse _%$%clause199034199081%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier-list? _%$%hd199025199062%_))
                              (let* ((_%$%g199117199134%_
                                      (lambda (_%$%g199118199130%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g199118199130%_))))
                                     (_%$%g199116199193%_
                                      (lambda (_%$%g199118199138%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g199118199138%_))
                                            (let ((_g200044_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g199118199138%_
                                                      '0))))
                                              (begin
                                                (let ((_g200045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g200044_)
                                                             (##values-length
                                                              _g200044_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g200045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g200045_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target199120199141%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g200044_
                                                          0)))
                                                      (_%$%tl199122199144%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g200044_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl199122199144%_))
                                                      (letrec ((_%$%loop199123199147%_
                                                                (lambda (_%$%hd199121199151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%clause199127199154%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd199121199151%_))
                              (let ((_%$%e199124199156%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd199121199151%_))))
                                (let ((_%$%lp-hd199125199160%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199124199156%_)))
                                      (_%$%lp-tl199126199163%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199124199156%_))))
                                  (_%$%loop199123199147%_
                                   _%$%lp-tl199126199163%_
                                   (cons _%$%lp-hd199125199160%_
                                         _%$%clause199127199154%_))))
                              (let ((_%$%clause199128199166%_
                                     (reverse _%$%clause199127199154%_)))
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'lambda))
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '$stx))
                                                  '())
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'ast-case))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '$stx))
                      (cons _%$%hd199025199062%_
                            (let ((__tmp200046
                                   (lambda (_%$%g199184199187%_
                                            _%$%g199185199190%_)
                                     (cons _%$%g199184199187%_
                                           _%$%g199185199190%_))))
                              (declare (not safe))
                              (foldr__0
                               __tmp200046
                               '()
                               _%$%clause199128199166%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))))
                (_%$%loop199123199147%_ _%$%target199120199141%_ '()))
              (_%$%g199117199134%_ _%$%g199118199138%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g199117199134%_
                                             _%$%g199118199138%_)))))
                                (_%$%g199116199193%_
                                 (let ((__tmp200049
                                        (lambda (_%clause199197%_)
                                          (let* ((_%__stx199961199962%_
                                                  _%clause199197%_)
                                                 (_%$%g199201199228%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx199961199962%_)))))
                                            (let ((_%__kont199964199965%_
                                                   (lambda (_%$%g199203199313%_
                                                            _%$%g199204199315%_)
                                                     (cons _%$%g199204199315%_
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'syntax))
                               (cons _%$%g199203199313%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont199966199967%_
                                                   (lambda (_%$%g199211199265%_
                                                            _%$%g199212199267%_
                                                            _%$%g199213199268%_)
                                                     (cons _%$%g199213199268%_
                                                           (cons _%$%g199212199267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax))
                                     (cons _%$%g199211199265%_ '()))
                               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx199961199962%_))
                                                  (let ((_%$%e199205199293%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%__stx199961199962%_))))
                                                    (let ((_%$%tl199207199300%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e199205199293%_)))
                                                          (_%$%hd199206199297%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e199205199293%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl199207199300%_))
                                                          (let ((_%$%e199208199303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl199207199300%_))))
                    (let ((_%$%tl199210199310%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e199208199303%_)))
                          (_%$%hd199209199307%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e199208199303%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl199210199310%_))
                          (_%__kont199964199965%_
                           _%$%hd199209199307%_
                           _%$%hd199206199297%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199210199310%_))
                              (let ((_%$%e199220199255%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl199210199310%_))))
                                (let ((_%$%tl199222199262%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199220199255%_)))
                                      (_%$%hd199221199259%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199220199255%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl199222199262%_))
                                      (_%__kont199966199967%_
                                       _%$%hd199221199259%_
                                       _%$%hd199209199307%_
                                       _%$%hd199206199297%_)
                                      (_%$%g199201199228%_))))
                              (_%$%g199201199228%_)))))
                  (_%$%g199201199228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g199201199228%_))))))
                                       (__tmp200047
                                        (let ((__tmp200048
                                               (lambda (_%$%g199331199334%_
                                                        _%$%g199332199337%_)
                                                 (cons _%$%g199331199334%_
                                                       _%$%g199332199337%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp200048
                                           '()
                                           _%$%clause199035199093%_))))
                                   (declare (not safe))
                                   (gx#stx-map1 __tmp200049 __tmp200047))))
                              (_%$%g199017199041%_ _%$%g199018199045%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop199030199074%_
                                                   _%$%target199027199068%_
                                                   '()))
                                                (_%$%g199017199041%_
                                                 _%$%g199018199045%_)))))
                                      (_%$%g199017199041%_
                                       _%$%g199018199045%_))))
                              (_%$%g199017199041%_ _%$%g199018199045%_))))
                      (_%$%g199017199041%_ _%$%g199018199045%_)))))
          (_%$%g199016199340%_ _%stx199014%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj200011
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
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj200011
           'gxc#symbol-table::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200011 'symbol-table '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj200011
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj200011
           '(gensyms bindings)
           '8
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200011 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200011 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200011 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200011 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200011 ':init! '13 '#f '#f))
        (let ((__tmp200050 |gxc[1]#_g200051_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj200011 __tmp200050 '4 '#f '#f))
        (let ((__tmp200052 |gxc[1]#_g200053_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj200011 __tmp200052 '14 '#f '#f))
        (let ((__tmp200054 |gxc[1]#_g200055_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj200011 __tmp200054 '15 '#f '#f))
        (let ((__tmp200056
               (cons (cons 'gensyms |gxc[1]#_g200057_|)
                     (cons (cons 'bindings |gxc[1]#_g200058_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200011 __tmp200056 '16 '#f '#f))
        (let ((__tmp200059
               (cons (cons 'gensyms |gxc[1]#_g200060_|)
                     (cons (cons 'bindings |gxc[1]#_g200061_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200011 __tmp200059 '17 '#f '#f))
        (let ((__tmp200062
               (cons (cons 'gensyms |gxc[1]#_g200063_|)
                     (cons (cons 'bindings |gxc[1]#_g200064_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200011 __tmp200062 '18 '#f '#f))
        (let ((__tmp200065
               (cons (cons 'gensyms |gxc[1]#_g200066_|)
                     (cons (cons 'bindings |gxc[1]#_g200067_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200011 __tmp200065 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200011 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200011 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200011 '() '21 '#f '#f))
        __obj200011))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx199346%_)
        (let* ((_%$%g199350199364%_
                (lambda (_%$%g199351199360%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199351199360%_))))
               (_%$%g199349199405%_
                (lambda (_%$%g199351199368%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199351199368%_))
                      (let ((_%$%e199353199371%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g199351199368%_))))
                        (let ((_%$%hd199354199375%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199353199371%_)))
                              (_%$%tl199355199378%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199353199371%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199355199378%_))
                              (let ((_%$%e199356199381%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl199355199378%_))))
                                (let ((_%$%hd199357199385%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199356199381%_)))
                                      (_%$%tl199358199388%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199356199381%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl199358199388%_))
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
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'lambda))
                      (cons '() (cons _%$%hd199357199385%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g199350199364%_
                                       _%$%g199351199368%_))))
                              (_%$%g199350199364%_ _%$%g199351199368%_))))
                      (_%$%g199350199364%_ _%$%g199351199368%_)))))
          (_%$%g199349199405%_ _%$stx199346%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx199409%_)
        (let* ((_%$%g199413199427%_
                (lambda (_%$%g199414199423%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199414199423%_))))
               (_%$%g199412199468%_
                (lambda (_%$%g199414199431%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199414199431%_))
                      (let ((_%$%e199416199434%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g199414199431%_))))
                        (let ((_%$%hd199417199438%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199416199434%_)))
                              (_%$%tl199418199441%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199416199434%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199418199441%_))
                              (let ((_%$%e199419199444%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl199418199441%_))))
                                (let ((_%$%hd199420199448%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199419199444%_)))
                                      (_%$%tl199421199451%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199419199444%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl199421199451%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'spawn))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lambda))
                                                        (cons '()
                                                              (cons _%$%hd199420199448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (_%$%g199413199427%_
                                       _%$%g199414199431%_))))
                              (_%$%g199413199427%_ _%$%g199414199431%_))))
                      (_%$%g199413199427%_ _%$%g199414199431%_)))))
          (_%$%g199412199468%_ _%$stx199409%_))))))
