(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g145917_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145919_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145921_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145923_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145924_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145926_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145927_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145929_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145930_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145932_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145933_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx145003%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx145003%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx145006%_)
        (let* ((_%g145009145033%_
                (lambda (_%g145010145029%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145010145029%_))))
               (_%g145008145336%_
                (lambda (_%g145010145037%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145010145037%_))
                      (let ((_%e145013145040%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g145010145037%_))))
                        (let ((_%hd145014145044%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145013145040%_)))
                              (_%tl145015145047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145013145040%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145015145047%_))
                              (let ((_%e145016145050%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl145015145047%_))))
                                (let ((_%hd145017145054%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145016145050%_)))
                                      (_%tl145018145057%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145016145050%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl145018145057%_))
                                      (let ((_g145908_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl145018145057%_
                                                '0))))
                                        (begin
                                          (let ((_g145909_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g145908_)
                                                       (##values-length
                                                        _g145908_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g145909_ 2)))
                                                (error "Context expects 2 values"
                                                       _g145909_)))
                                          (let ((_%target145019145060%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g145908_ 0)))
                                                (_%tl145021145063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g145908_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145021145063%_))
                                                (letrec ((_%loop145022145066%_
                                                          (lambda (_%hd145020145070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause145026145073%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145020145070%_))
                        (let ((_%e145023145076%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd145020145070%_))))
                          (let ((_%lp-hd145024145080%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145023145076%_)))
                                (_%lp-tl145025145083%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145023145076%_))))
                            (_%loop145022145066%_
                             _%lp-tl145025145083%_
                             (cons _%lp-hd145024145080%_
                                   _%clause145026145073%_))))
                        (let ((_%clause145027145086%_
                               (reverse _%clause145026145073%_)))
                          ((lambda (_%L145090%_ _%L145092%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L145092%_))
                                 (let* ((_%g145111145128%_
                                         (lambda (_%g145112145124%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g145112145124%_))))
                                        (_%g145110145189%_
                                         (lambda (_%g145112145132%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g145112145132%_))
                                               (let ((_g145910_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g145112145132%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g145911_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g145910_)
                        (##values-length _g145910_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g145911_ 2)))
                 (error "Context expects 2 values" _g145911_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target145114145135%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g145910_
                                                             0)))
                                                         (_%tl145116145138%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g145910_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl145116145138%_))
                                                         (letrec ((_%loop145117145141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd145115145145%_ _%clause145121145148%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd145115145145%_))
                                 (let ((_%e145118145151%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd145115145145%_))))
                                   (let ((_%lp-hd145119145155%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e145118145151%_)))
                                         (_%lp-tl145120145158%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e145118145151%_))))
                                     (_%loop145117145141%_
                                      _%lp-tl145120145158%_
                                      (cons _%lp-hd145119145155%_
                                            _%clause145121145148%_))))
                                 (let ((_%clause145122145161%_
                                        (reverse _%clause145121145148%_)))
                                   ((lambda (_%L145165%_)
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
                            (cons _%L145092%_
                                  (let ((__tmp145912
                                         (lambda (_%g145180145183%_
                                                  _%g145181145186%_)
                                           (cons _%g145180145183%_
                                                 _%g145181145186%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145912 '() _%L145165%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause145122145161%_))))))
                   (_%loop145117145141%_ _%target145114145135%_ '()))
                 (_%g145111145128%_ _%g145112145132%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g145111145128%_
                                                _%g145112145132%_)))))
                                   (_%g145110145189%_
                                    (let ((__tmp145915
                                           (lambda (_%clause145193%_)
                                             (let* ((_%__stx145828145829%_
                                                     _%clause145193%_)
                                                    (_%g145197145224%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx145828145829%_)))))
                                               (let ((_%__kont145831145832%_
                                                      (lambda (_%L145309%_
                                                               _%L145311%_)
                                                        (cons _%L145311%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L145309%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145833145834%_
                                                      (lambda (_%L145261%_
                                                               _%L145263%_
                                                               _%L145264%_)
                                                        (cons _%L145264%_
                                                              (cons _%L145263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L145261%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx145828145829%_))
                                                     (let ((_%e145201145289%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx145828145829%_))))
                                                       (let ((_%tl145203145296%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e145201145289%_)))
                     (_%hd145202145293%_
                      (let () (declare (not safe)) (##car _%e145201145289%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl145203145296%_))
                     (let ((_%e145204145299%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl145203145296%_))))
                       (let ((_%tl145206145306%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145204145299%_)))
                             (_%hd145205145303%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145204145299%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145206145306%_))
                             (_%__kont145831145832%_
                              _%hd145205145303%_
                              _%hd145202145293%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl145206145306%_))
                                 (let ((_%e145216145251%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl145206145306%_))))
                                   (let ((_%tl145218145258%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e145216145251%_)))
                                         (_%hd145217145255%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e145216145251%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl145218145258%_))
                                         (_%__kont145833145834%_
                                          _%hd145217145255%_
                                          _%hd145205145303%_
                                          _%hd145202145293%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g145197145224%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g145197145224%_))))))
                     (let () (declare (not safe)) (_%g145197145224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g145197145224%_)))))))
                                          (__tmp145913
                                           (let ((__tmp145914
                                                  (lambda (_%g145327145330%_
                                                           _%g145328145333%_)
                                                    (cons _%g145327145330%_
                                                          _%g145328145333%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp145914
                                              '()
                                              _%L145090%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp145915 __tmp145913))))
                                 (_%g145009145033%_ _%g145010145037%_)))
                           _%clause145027145086%_
                           _%hd145017145054%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop145022145066%_
                                                   _%target145019145060%_
                                                   '()))
                                                (_%g145009145033%_
                                                 _%g145010145037%_)))))
                                      (_%g145009145033%_ _%g145010145037%_))))
                              (_%g145009145033%_ _%g145010145037%_))))
                      (_%g145009145033%_ _%g145010145037%_)))))
          (_%g145008145336%_ _%stx145006%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj145878
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
           __obj145878
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145878 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj145878
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj145878
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145878 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145878 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145878 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145878 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145878 ':init! '12 '#f '#f))
        (let ((__tmp145916 |gxc[1]#_g145917_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj145878 __tmp145916 '3 '#f '#f))
        (let ((__tmp145918 |gxc[1]#_g145919_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj145878 __tmp145918 '13 '#f '#f))
        (let ((__tmp145920 |gxc[1]#_g145921_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj145878 __tmp145920 '14 '#f '#f))
        (let ((__tmp145922
               (cons (cons 'gensyms |gxc[1]#_g145923_|)
                     (cons (cons 'bindings |gxc[1]#_g145924_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj145878 __tmp145922 '15 '#f '#f))
        (let ((__tmp145925
               (cons (cons 'gensyms |gxc[1]#_g145926_|)
                     (cons (cons 'bindings |gxc[1]#_g145927_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj145878 __tmp145925 '16 '#f '#f))
        (let ((__tmp145928
               (cons (cons 'gensyms |gxc[1]#_g145929_|)
                     (cons (cons 'bindings |gxc[1]#_g145930_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj145878 __tmp145928 '17 '#f '#f))
        (let ((__tmp145931
               (cons (cons 'gensyms |gxc[1]#_g145932_|)
                     (cons (cons 'bindings |gxc[1]#_g145933_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj145878 __tmp145931 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145878 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145878 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145878 '() '20 '#f '#f))
        __obj145878))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx145342%_)
        (let* ((_%g145346145360%_
                (lambda (_%g145347145356%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145347145356%_))))
               (_%g145345145401%_
                (lambda (_%g145347145364%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145347145364%_))
                      (let ((_%e145349145367%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g145347145364%_))))
                        (let ((_%hd145350145371%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145349145367%_)))
                              (_%tl145351145374%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145349145367%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145351145374%_))
                              (let ((_%e145352145377%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl145351145374%_))))
                                (let ((_%hd145353145381%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145352145377%_)))
                                      (_%tl145354145384%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145352145377%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145354145384%_))
                                      ((lambda (_%L145387%_)
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
                         (cons '() (cons _%L145387%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd145353145381%_)
                                      (_%g145346145360%_ _%g145347145364%_))))
                              (_%g145346145360%_ _%g145347145364%_))))
                      (_%g145346145360%_ _%g145347145364%_)))))
          (_%g145345145401%_ _%$stx145342%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx145405%_)
        (let* ((_%g145409145423%_
                (lambda (_%g145410145419%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145410145419%_))))
               (_%g145408145464%_
                (lambda (_%g145410145427%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145410145427%_))
                      (let ((_%e145412145430%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g145410145427%_))))
                        (let ((_%hd145413145434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145412145430%_)))
                              (_%tl145414145437%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145412145430%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145414145437%_))
                              (let ((_%e145415145440%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl145414145437%_))))
                                (let ((_%hd145416145444%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145415145440%_)))
                                      (_%tl145417145447%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145415145440%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145417145447%_))
                                      ((lambda (_%L145450%_)
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
                         (cons _%L145450%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd145416145444%_)
                                      (_%g145409145423%_ _%g145410145427%_))))
                              (_%g145409145423%_ _%g145410145427%_))))
                      (_%g145409145423%_ _%g145410145427%_)))))
          (_%g145408145464%_ _%$stx145405%_))))))
