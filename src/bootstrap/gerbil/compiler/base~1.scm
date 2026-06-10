(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g170226_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g170227_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g170228_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g170229_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g170230_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g170231_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g170232_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g170233_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g170234_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g170235_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g170236_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx169267%_)
        (gx#macro-expand-syntax-case _%stx169267%_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx169270%_)
        (let* ((_%$%g169273169297%_
                (lambda (_%$%g169274169293%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g169274169293%_)))
               (_%$%g169272169596%_
                (lambda (_%$%g169274169301%_)
                  (if (gx#stx-pair? _%$%g169274169301%_)
                      (let ((_%$%e169277169304%_
                             (gx#syntax-e _%$%g169274169301%_)))
                        (let ((_%$%hd169278169308%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e169277169304%_)))
                              (_%$%tl169279169311%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e169277169304%_))))
                          (if (gx#stx-pair? _%$%tl169279169311%_)
                              (let ((_%$%e169280169314%_
                                     (gx#syntax-e _%$%tl169279169311%_)))
                                (let ((_%$%hd169281169318%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e169280169314%_)))
                                      (_%$%tl169282169321%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e169280169314%_))))
                                  (if (gx#stx-pair/null? _%$%tl169282169321%_)
                                      (let ((_g170222_
                                             (gx#syntax-split-splice
                                              _%$%tl169282169321%_
                                              '0)))
                                        (begin
                                          (let ((_g170223_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g170222_)
                                                       (##values-length
                                                        _g170222_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g170223_ 2)))
                                                (error "Context expects 2 values"
                                                       _g170223_)))
                                          (let ((_%$%target169283169324%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g170222_ 0)))
                                                (_%$%tl169285169327%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g170222_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%$%tl169285169327%_)
                                                (letrec ((_%$%loop169286169330%_
                                                          (lambda (_%$%hd169284169334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause169290169337%_)
                    (if (gx#stx-pair? _%$%hd169284169334%_)
                        (let ((_%$%e169287169339%_
                               (gx#syntax-e _%$%hd169284169334%_)))
                          (let ((_%$%lp-hd169288169343%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e169287169339%_)))
                                (_%$%lp-tl169289169346%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e169287169339%_))))
                            (_%$%loop169286169330%_
                             _%$%lp-tl169289169346%_
                             (cons _%$%lp-hd169288169343%_
                                   _%$%clause169290169337%_))))
                        (let ((_%$%clause169291169349%_
                               (reverse _%$%clause169290169337%_)))
                          ((lambda (_%$%g169275169352%_ _%$%g169276169354%_)
                             (if (gx#identifier-list? _%$%g169276169354%_)
                                 (let* ((_%$%g169373169390%_
                                         (lambda (_%$%g169374169386%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g169374169386%_)))
                                        (_%$%g169372169449%_
                                         (lambda (_%$%g169374169394%_)
                                           (if (gx#stx-pair/null?
                                                _%$%g169374169394%_)
                                               (let ((_g170224_
                                                      (gx#syntax-split-splice
                                                       _%$%g169374169394%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g170225_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g170224_)
                        (##values-length _g170224_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g170225_ 2)))
                 (error "Context expects 2 values" _g170225_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%$%target169376169397%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g170224_
                                                             0)))
                                                         (_%$%tl169378169400%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g170224_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%$%tl169378169400%_)
                                                         (letrec ((_%$%loop169379169403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%hd169377169407%_
                                    _%$%clause169383169410%_)
                             (if (gx#stx-pair? _%$%hd169377169407%_)
                                 (let ((_%$%e169380169412%_
                                        (gx#syntax-e _%$%hd169377169407%_)))
                                   (let ((_%$%lp-hd169381169416%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e169380169412%_)))
                                         (_%$%lp-tl169382169419%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e169380169412%_))))
                                     (_%$%loop169379169403%_
                                      _%$%lp-tl169382169419%_
                                      (cons _%$%lp-hd169381169416%_
                                            _%$%clause169383169410%_))))
                                 (let ((_%$%clause169384169422%_
                                        (reverse _%$%clause169383169410%_)))
                                   ((lambda (_%$%g169375169425%_)
                                      (cons (gx#datum->syntax '#f 'lambda)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$stx)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'ast-case)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$stx)
                            (cons _%$%g169276169354%_
                                  (foldr (lambda (_%$%g169440169443%_
                                                  _%$%g169441169446%_)
                                           (cons _%$%g169440169443%_
                                                 _%$%g169441169446%_))
                                         '()
                                         _%$%g169375169425%_))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$%clause169384169422%_))))))
                   (_%$%loop169379169403%_ _%$%target169376169397%_ '()))
                 (_%$%g169373169390%_ _%$%g169374169394%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g169373169390%_
                                                _%$%g169374169394%_)))))
                                   (_%$%g169372169449%_
                                    (gx#stx-map
                                     (lambda (_%clause169453%_)
                                       (let* ((_%$%g169457169484%_
                                               (lambda (_%$%g169458169480%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g169458169480%_)))
                                              (_%$%g169456169542%_
                                               (lambda (_%$%g169458169488%_)
                                                 (if (gx#stx-pair?
                                                      _%$%g169458169488%_)
                                                     (let ((_%$%e169470169491%_
                                                            (gx#syntax-e
                                                             _%$%g169458169488%_)))
                                                       (let ((_%$%hd169471169495%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e169470169491%_)))
                     (_%$%tl169472169498%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e169470169491%_))))
                 (if (gx#stx-pair? _%$%tl169472169498%_)
                     (let ((_%$%e169473169501%_
                            (gx#syntax-e _%$%tl169472169498%_)))
                       (let ((_%$%hd169474169505%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e169473169501%_)))
                             (_%$%tl169475169508%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e169473169501%_))))
                         (if (gx#stx-pair? _%$%tl169475169508%_)
                             (let ((_%$%e169476169511%_
                                    (gx#syntax-e _%$%tl169475169508%_)))
                               (let ((_%$%hd169477169515%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e169476169511%_)))
                                     (_%$%tl169478169518%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e169476169511%_))))
                                 (if (gx#stx-null? _%$%tl169478169518%_)
                                     ((lambda (_%$%g169467169521%_
                                               _%$%g169468169523%_
                                               _%$%g169469169524%_)
                                        (cons _%$%g169469169524%_
                                              (cons _%$%g169468169523%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'syntax)
                        (cons _%$%g169467169521%_ '()))
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _%$%hd169477169515%_
                                      _%$%hd169474169505%_
                                      _%$%hd169471169495%_)
                                     (_%$%g169457169484%_
                                      _%$%g169458169488%_))))
                             (_%$%g169457169484%_ _%$%g169458169488%_))))
                     (_%$%g169457169484%_ _%$%g169458169488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g169457169484%_
                                                      _%$%g169458169488%_))))
                                              (_%$%g169455169584%_
                                               (lambda (_%$%g169458169546%_)
                                                 (if (gx#stx-pair?
                                                      _%$%g169458169546%_)
                                                     (let ((_%$%e169461169549%_
                                                            (gx#syntax-e
                                                             _%$%g169458169546%_)))
                                                       (let ((_%$%hd169462169553%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e169461169549%_)))
                     (_%$%tl169463169556%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e169461169549%_))))
                 (if (gx#stx-pair? _%$%tl169463169556%_)
                     (let ((_%$%e169464169559%_
                            (gx#syntax-e _%$%tl169463169556%_)))
                       (let ((_%$%hd169465169563%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e169464169559%_)))
                             (_%$%tl169466169566%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e169464169559%_))))
                         (if (gx#stx-null? _%$%tl169466169566%_)
                             ((lambda (_%$%g169459169569%_ _%$%g169460169571%_)
                                (cons _%$%g169460169571%_
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'syntax)
                                                  (cons _%$%g169459169569%_
                                                        '()))
                                            '())))
                              _%$%hd169465169563%_
                              _%$%hd169462169553%_)
                             (_%$%g169456169542%_ _%$%g169458169546%_))))
                     (_%$%g169456169542%_ _%$%g169458169546%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g169456169542%_
                                                      _%$%g169458169546%_)))))
                                         (_%$%g169455169584%_
                                          _%clause169453%_)))
                                     (foldr (lambda (_%$%g169587169590%_
                                                     _%$%g169588169593%_)
                                              (cons _%$%g169587169590%_
                                                    _%$%g169588169593%_))
                                            '()
                                            _%$%g169275169352%_))))
                                 (_%$%g169273169297%_ _%$%g169274169301%_)))
                           _%$%clause169291169349%_
                           _%$%hd169281169318%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop169286169330%_
                                                   _%$%target169283169324%_
                                                   '()))
                                                (_%$%g169273169297%_
                                                 _%$%g169274169301%_)))))
                                      (_%$%g169273169297%_
                                       _%$%g169274169301%_))))
                              (_%$%g169273169297%_ _%$%g169274169301%_))))
                      (_%$%g169273169297%_ _%$%g169274169301%_)))))
          (_%$%g169272169596%_ _%stx169270%_))))
    (define |gxc[:0:]#symbol-table|
      (gerbil/core/mop~MOP-2#make-class-type-info
       'id:
       'gxc#symbol-table::t
       'name:
       'symbol-table
       'slots:
       '(gensyms bindings)
       'ordered-slots:
       '(gensyms bindings)
       'super:
       '()
       'struct?:
       '#t
       'final?:
       '#f
       'metaclass:
       '#f
       'constructor-method:
       ':init!
       'type-descriptor:
       |gxc[1]#_g170226_|
       'constructor:
       |gxc[1]#_g170227_|
       'predicate:
       |gxc[1]#_g170228_|
       'accessors:
       (cons (cons 'gensyms |gxc[1]#_g170229_|)
             (cons (cons 'bindings |gxc[1]#_g170230_|) '()))
       'mutators:
       (cons (cons 'gensyms |gxc[1]#_g170231_|)
             (cons (cons 'bindings |gxc[1]#_g170232_|) '()))
       'unchecked-accessors:
       (cons (cons 'gensyms |gxc[1]#_g170233_|)
             (cons (cons 'bindings |gxc[1]#_g170234_|) '()))
       'unchecked-mutators:
       (cons (cons 'gensyms |gxc[1]#_g170235_|)
             (cons (cons 'bindings |gxc[1]#_g170236_|) '()))
       'slot-types:
       '()
       'slot-contracts:
       '()
       'slot-defaults:
       '()))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx169602%_)
        (let* ((_%$%g169606169620%_
                (lambda (_%$%g169607169616%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g169607169616%_)))
               (_%$%g169605169661%_
                (lambda (_%$%g169607169624%_)
                  (if (gx#stx-pair? _%$%g169607169624%_)
                      (let ((_%$%e169609169627%_
                             (gx#syntax-e _%$%g169607169624%_)))
                        (let ((_%$%hd169610169631%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e169609169627%_)))
                              (_%$%tl169611169634%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e169609169627%_))))
                          (if (gx#stx-pair? _%$%tl169611169634%_)
                              (let ((_%$%e169612169637%_
                                     (gx#syntax-e _%$%tl169611169634%_)))
                                (let ((_%$%hd169613169641%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e169612169637%_)))
                                      (_%$%tl169614169644%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e169612169637%_))))
                                  (if (gx#stx-null? _%$%tl169614169644%_)
                                      ((lambda (_%$%g169608169647%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'with-lock)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '__verbose-mutex)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%$%g169608169647%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%$%hd169613169641%_)
                                      (_%$%g169606169620%_
                                       _%$%g169607169624%_))))
                              (_%$%g169606169620%_ _%$%g169607169624%_))))
                      (_%$%g169606169620%_ _%$%g169607169624%_)))))
          (_%$%g169605169661%_ _%$stx169602%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx169665%_)
        (let* ((_%$%g169669169683%_
                (lambda (_%$%g169670169679%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g169670169679%_)))
               (_%$%g169668169724%_
                (lambda (_%$%g169670169687%_)
                  (if (gx#stx-pair? _%$%g169670169687%_)
                      (let ((_%$%e169672169690%_
                             (gx#syntax-e _%$%g169670169687%_)))
                        (let ((_%$%hd169673169694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e169672169690%_)))
                              (_%$%tl169674169697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e169672169690%_))))
                          (if (gx#stx-pair? _%$%tl169674169697%_)
                              (let ((_%$%e169675169700%_
                                     (gx#syntax-e _%$%tl169674169697%_)))
                                (let ((_%$%hd169676169704%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e169675169700%_)))
                                      (_%$%tl169677169707%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e169675169700%_))))
                                  (if (gx#stx-null? _%$%tl169677169707%_)
                                      ((lambda (_%$%g169671169710%_)
                                         (cons (gx#datum->syntax '#f 'spawn)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g169671169710%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%$%hd169676169704%_)
                                      (_%$%g169669169683%_
                                       _%$%g169670169687%_))))
                              (_%$%g169669169683%_ _%$%g169670169687%_))))
                      (_%$%g169669169683%_ _%$%g169670169687%_)))))
          (_%$%g169668169724%_ _%$stx169665%_))))))
