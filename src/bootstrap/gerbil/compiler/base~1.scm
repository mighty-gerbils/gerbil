(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g132023_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132025_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132027_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132029_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132030_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132032_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132033_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132035_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132036_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132038_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132039_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx131106%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx131106%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx131109%_)
        (let* ((_%g131112131136%_
                (lambda (_%g131113131132%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131113131132%_))))
               (_%g131111131439%_
                (lambda (_%g131113131140%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131113131140%_))
                      (let ((_%e131116131143%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131113131140%_))))
                        (let ((_%hd131117131147%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131116131143%_)))
                              (_%tl131118131150%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131116131143%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131118131150%_))
                              (let ((_%e131119131153%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131118131150%_))))
                                (let ((_%hd131120131157%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131119131153%_)))
                                      (_%tl131121131160%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131119131153%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl131121131160%_))
                                      (let ((_g132014_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl131121131160%_
                                                '0))))
                                        (begin
                                          (let ((_g132015_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g132014_)
                                                       (##vector-length
                                                        _g132014_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g132015_ 2)))
                                                (error "Context expects 2 values"
                                                       _g132015_)))
                                          (let ((_%target131122131163%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g132014_ 0)))
                                                (_%tl131124131166%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g132014_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131124131166%_))
                                                (letrec ((_%loop131125131169%_
                                                          (lambda (_%hd131123131173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause131129131176%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131123131173%_))
                        (let ((_%e131126131179%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd131123131173%_))))
                          (let ((_%lp-hd131127131183%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131126131179%_)))
                                (_%lp-tl131128131186%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131126131179%_))))
                            (_%loop131125131169%_
                             _%lp-tl131128131186%_
                             (cons _%lp-hd131127131183%_
                                   _%clause131129131176%_))))
                        (let ((_%clause131130131189%_
                               (reverse _%clause131129131176%_)))
                          ((lambda (_%L131193%_ _%L131195%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L131195%_))
                                 (let* ((_%g131214131231%_
                                         (lambda (_%g131215131227%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g131215131227%_))))
                                        (_%g131213131292%_
                                         (lambda (_%g131215131235%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g131215131235%_))
                                               (let ((_g132016_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g131215131235%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g132017_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g132016_)
                        (##vector-length _g132016_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g132017_ 2)))
                 (error "Context expects 2 values" _g132017_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target131217131238%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g132016_
                                                             0)))
                                                         (_%tl131219131241%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g132016_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl131219131241%_))
                                                         (letrec ((_%loop131220131244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd131218131248%_ _%clause131224131251%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd131218131248%_))
                                 (let ((_%e131221131254%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd131218131248%_))))
                                   (let ((_%lp-hd131222131258%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e131221131254%_)))
                                         (_%lp-tl131223131261%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e131221131254%_))))
                                     (_%loop131220131244%_
                                      _%lp-tl131223131261%_
                                      (cons _%lp-hd131222131258%_
                                            _%clause131224131251%_))))
                                 (let ((_%clause131225131264%_
                                        (reverse _%clause131224131251%_)))
                                   ((lambda (_%L131268%_)
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
                            (cons _%L131195%_
                                  (let ((__tmp132018
                                         (lambda (_%g131283131286%_
                                                  _%g131284131289%_)
                                           (cons _%g131283131286%_
                                                 _%g131284131289%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp132018 '() _%L131268%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause131225131264%_))))))
                   (_%loop131220131244%_ _%target131217131238%_ '()))
                 (_%g131214131231%_ _%g131215131235%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g131214131231%_
                                                _%g131215131235%_)))))
                                   (_%g131213131292%_
                                    (let ((__tmp132021
                                           (lambda (_%clause131296%_)
                                             (let* ((_%__stx131934131935%_
                                                     _%clause131296%_)
                                                    (_%g131300131327%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx131934131935%_)))))
                                               (let ((_%__kont131937131938%_
                                                      (lambda (_%L131412%_
                                                               _%L131414%_)
                                                        (cons _%L131414%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L131412%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont131939131940%_
                                                      (lambda (_%L131364%_
                                                               _%L131366%_
                                                               _%L131367%_)
                                                        (cons _%L131367%_
                                                              (cons _%L131366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L131364%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx131934131935%_))
                                                     (let ((_%e131304131392%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx131934131935%_))))
                                                       (let ((_%tl131306131399%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e131304131392%_)))
                     (_%hd131305131396%_
                      (let () (declare (not safe)) (##car _%e131304131392%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl131306131399%_))
                     (let ((_%e131307131402%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl131306131399%_))))
                       (let ((_%tl131309131409%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e131307131402%_)))
                             (_%hd131308131406%_
                              (let ()
                                (declare (not safe))
                                (##car _%e131307131402%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl131309131409%_))
                             (_%__kont131937131938%_
                              _%hd131308131406%_
                              _%hd131305131396%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl131309131409%_))
                                 (let ((_%e131319131354%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl131309131409%_))))
                                   (let ((_%tl131321131361%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e131319131354%_)))
                                         (_%hd131320131358%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e131319131354%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl131321131361%_))
                                         (_%__kont131939131940%_
                                          _%hd131320131358%_
                                          _%hd131308131406%_
                                          _%hd131305131396%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g131300131327%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g131300131327%_))))))
                     (let () (declare (not safe)) (_%g131300131327%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g131300131327%_)))))))
                                          (__tmp132019
                                           (let ((__tmp132020
                                                  (lambda (_%g131430131433%_
                                                           _%g131431131436%_)
                                                    (cons _%g131430131433%_
                                                          _%g131431131436%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp132020
                                              '()
                                              _%L131193%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp132021 __tmp132019))))
                                 (_%g131112131136%_ _%g131113131140%_)))
                           _%clause131130131189%_
                           _%hd131120131157%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131125131169%_
                                                   _%target131122131163%_
                                                   '()))
                                                (_%g131112131136%_
                                                 _%g131113131140%_)))))
                                      (_%g131112131136%_ _%g131113131140%_))))
                              (_%g131112131136%_ _%g131113131140%_))))
                      (_%g131112131136%_ _%g131113131140%_)))))
          (_%g131111131439%_ _%stx131109%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj131984
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
           __obj131984
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131984 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj131984
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj131984
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131984 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131984 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131984 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131984 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131984 ':init! '11 '#f '#f))
        (let ((__tmp132022 |gxc[1]#_g132023_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj131984 __tmp132022 '12 '#f '#f))
        (let ((__tmp132024 |gxc[1]#_g132025_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj131984 __tmp132024 '13 '#f '#f))
        (let ((__tmp132026 |gxc[1]#_g132027_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj131984 __tmp132026 '14 '#f '#f))
        (let ((__tmp132028
               (cons (cons 'gensyms |gxc[1]#_g132029_|)
                     (cons (cons 'bindings |gxc[1]#_g132030_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj131984 __tmp132028 '15 '#f '#f))
        (let ((__tmp132031
               (cons (cons 'gensyms |gxc[1]#_g132032_|)
                     (cons (cons 'bindings |gxc[1]#_g132033_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj131984 __tmp132031 '16 '#f '#f))
        (let ((__tmp132034
               (cons (cons 'gensyms |gxc[1]#_g132035_|)
                     (cons (cons 'bindings |gxc[1]#_g132036_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj131984 __tmp132034 '17 '#f '#f))
        (let ((__tmp132037
               (cons (cons 'gensyms |gxc[1]#_g132038_|)
                     (cons (cons 'bindings |gxc[1]#_g132039_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj131984 __tmp132037 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131984 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131984 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131984 '() '20 '#f '#f))
        __obj131984))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx131446%_)
        (let* ((_%g131450131464%_
                (lambda (_%g131451131460%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131451131460%_))))
               (_%g131449131505%_
                (lambda (_%g131451131468%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131451131468%_))
                      (let ((_%e131453131471%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131451131468%_))))
                        (let ((_%hd131454131475%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131453131471%_)))
                              (_%tl131455131478%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131453131471%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131455131478%_))
                              (let ((_%e131456131481%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131455131478%_))))
                                (let ((_%hd131457131485%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131456131481%_)))
                                      (_%tl131458131488%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131456131481%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl131458131488%_))
                                      ((lambda (_%L131491%_)
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
                         (cons '() (cons _%L131491%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd131457131485%_)
                                      (_%g131450131464%_ _%g131451131468%_))))
                              (_%g131450131464%_ _%g131451131468%_))))
                      (_%g131450131464%_ _%g131451131468%_)))))
          (_%g131449131505%_ _%$stx131446%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx131509%_)
        (let* ((_%g131513131527%_
                (lambda (_%g131514131523%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131514131523%_))))
               (_%g131512131568%_
                (lambda (_%g131514131531%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131514131531%_))
                      (let ((_%e131516131534%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131514131531%_))))
                        (let ((_%hd131517131538%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131516131534%_)))
                              (_%tl131518131541%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131516131534%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131518131541%_))
                              (let ((_%e131519131544%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131518131541%_))))
                                (let ((_%hd131520131548%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131519131544%_)))
                                      (_%tl131521131551%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131519131544%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl131521131551%_))
                                      ((lambda (_%L131554%_)
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
                         (cons _%L131554%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd131520131548%_)
                                      (_%g131513131527%_ _%g131514131531%_))))
                              (_%g131513131527%_ _%g131514131531%_))))
                      (_%g131513131527%_ _%g131514131531%_)))))
          (_%g131512131568%_ _%$stx131509%_))))))
