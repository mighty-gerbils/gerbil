(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g130476_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130478_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130480_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130482_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130483_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130485_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130486_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130488_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130489_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130491_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130492_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx129562%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129562%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx129565%_)
        (let* ((_%g129568129592%_
                (lambda (_%g129569129588%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129569129588%_))))
               (_%g129567129895%_
                (lambda (_%g129569129596%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129569129596%_))
                      (let ((_%e129572129599%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129569129596%_))))
                        (let ((_%hd129573129603%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129572129599%_)))
                              (_%tl129574129606%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129572129599%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129574129606%_))
                              (let ((_%e129575129609%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129574129606%_))))
                                (let ((_%hd129576129613%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129575129609%_)))
                                      (_%tl129577129616%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129575129609%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl129577129616%_))
                                      (let ((_g130467_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl129577129616%_
                                                '0))))
                                        (begin
                                          (let ((_g130468_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g130467_)
                                                       (##vector-length
                                                        _g130467_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g130468_ 2)))
                                                (error "Context expects 2 values"
                                                       _g130468_)))
                                          (let ((_%target129578129619%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g130467_ 0)))
                                                (_%tl129580129622%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g130467_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl129580129622%_))
                                                (letrec ((_%loop129581129625%_
                                                          (lambda (_%hd129579129629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause129585129632%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd129579129629%_))
                        (let ((_%e129582129635%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd129579129629%_))))
                          (let ((_%lp-hd129583129639%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129582129635%_)))
                                (_%lp-tl129584129642%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129582129635%_))))
                            (_%loop129581129625%_
                             _%lp-tl129584129642%_
                             (cons _%lp-hd129583129639%_
                                   _%clause129585129632%_))))
                        (let ((_%clause129586129645%_
                               (reverse _%clause129585129632%_)))
                          ((lambda (_%L129649%_ _%L129651%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L129651%_))
                                 (let* ((_%g129670129687%_
                                         (lambda (_%g129671129683%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g129671129683%_))))
                                        (_%g129669129748%_
                                         (lambda (_%g129671129691%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g129671129691%_))
                                               (let ((_g130469_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g129671129691%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g130470_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g130469_)
                        (##vector-length _g130469_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g130470_ 2)))
                 (error "Context expects 2 values" _g130470_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target129673129694%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130469_
                                                             0)))
                                                         (_%tl129675129697%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130469_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl129675129697%_))
                                                         (letrec ((_%loop129676129700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd129674129704%_ _%clause129680129707%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd129674129704%_))
                                 (let ((_%e129677129710%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd129674129704%_))))
                                   (let ((_%lp-hd129678129714%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129677129710%_)))
                                         (_%lp-tl129679129717%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129677129710%_))))
                                     (_%loop129676129700%_
                                      _%lp-tl129679129717%_
                                      (cons _%lp-hd129678129714%_
                                            _%clause129680129707%_))))
                                 (let ((_%clause129681129720%_
                                        (reverse _%clause129680129707%_)))
                                   ((lambda (_%L129724%_)
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
                            (cons _%L129651%_
                                  (let ((__tmp130471
                                         (lambda (_%g129739129742%_
                                                  _%g129740129745%_)
                                           (cons _%g129739129742%_
                                                 _%g129740129745%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp130471 '() _%L129724%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause129681129720%_))))))
                   (_%loop129676129700%_ _%target129673129694%_ '()))
                 (_%g129670129687%_ _%g129671129691%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g129670129687%_
                                                _%g129671129691%_)))))
                                   (_%g129669129748%_
                                    (let ((__tmp130474
                                           (lambda (_%clause129752%_)
                                             (let* ((_%__stx130387130388%_
                                                     _%clause129752%_)
                                                    (_%g129756129783%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx130387130388%_)))))
                                               (let ((_%__kont130390130391%_
                                                      (lambda (_%L129868%_
                                                               _%L129870%_)
                                                        (cons _%L129870%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L129868%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont130392130393%_
                                                      (lambda (_%L129820%_
                                                               _%L129822%_
                                                               _%L129823%_)
                                                        (cons _%L129823%_
                                                              (cons _%L129822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L129820%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx130387130388%_))
                                                     (let ((_%e129760129848%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx130387130388%_))))
                                                       (let ((_%tl129762129855%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e129760129848%_)))
                     (_%hd129761129852%_
                      (let () (declare (not safe)) (##car _%e129760129848%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl129762129855%_))
                     (let ((_%e129763129858%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl129762129855%_))))
                       (let ((_%tl129765129865%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e129763129858%_)))
                             (_%hd129764129862%_
                              (let ()
                                (declare (not safe))
                                (##car _%e129763129858%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl129765129865%_))
                             (_%__kont130390130391%_
                              _%hd129764129862%_
                              _%hd129761129852%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl129765129865%_))
                                 (let ((_%e129775129810%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl129765129865%_))))
                                   (let ((_%tl129777129817%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129775129810%_)))
                                         (_%hd129776129814%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129775129810%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl129777129817%_))
                                         (_%__kont130392130393%_
                                          _%hd129776129814%_
                                          _%hd129764129862%_
                                          _%hd129761129852%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g129756129783%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g129756129783%_))))))
                     (let () (declare (not safe)) (_%g129756129783%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g129756129783%_)))))))
                                          (__tmp130472
                                           (let ((__tmp130473
                                                  (lambda (_%g129886129889%_
                                                           _%g129887129892%_)
                                                    (cons _%g129886129889%_
                                                          _%g129887129892%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp130473
                                              '()
                                              _%L129649%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp130474 __tmp130472))))
                                 (_%g129568129592%_ _%g129569129596%_)))
                           _%clause129586129645%_
                           _%hd129576129613%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop129581129625%_
                                                   _%target129578129619%_
                                                   '()))
                                                (_%g129568129592%_
                                                 _%g129569129596%_)))))
                                      (_%g129568129592%_ _%g129569129596%_))))
                              (_%g129568129592%_ _%g129569129596%_))))
                      (_%g129568129592%_ _%g129569129596%_)))))
          (_%g129567129895%_ _%stx129565%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj130437
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
           __obj130437
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130437 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130437
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130437
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130437 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130437 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130437 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130437 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130437 ':init! '11 '#f '#f))
        (let ((__tmp130475 |gxc[1]#_g130476_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130437 __tmp130475 '12 '#f '#f))
        (let ((__tmp130477 |gxc[1]#_g130478_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130437 __tmp130477 '13 '#f '#f))
        (let ((__tmp130479 |gxc[1]#_g130480_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130437 __tmp130479 '14 '#f '#f))
        (let ((__tmp130481
               (cons (cons 'gensyms |gxc[1]#_g130482_|)
                     (cons (cons 'bindings |gxc[1]#_g130483_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130437 __tmp130481 '15 '#f '#f))
        (let ((__tmp130484
               (cons (cons 'gensyms |gxc[1]#_g130485_|)
                     (cons (cons 'bindings |gxc[1]#_g130486_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130437 __tmp130484 '16 '#f '#f))
        (let ((__tmp130487
               (cons (cons 'gensyms |gxc[1]#_g130488_|)
                     (cons (cons 'bindings |gxc[1]#_g130489_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130437 __tmp130487 '17 '#f '#f))
        (let ((__tmp130490
               (cons (cons 'gensyms |gxc[1]#_g130491_|)
                     (cons (cons 'bindings |gxc[1]#_g130492_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130437 __tmp130490 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130437 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130437 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130437 '() '20 '#f '#f))
        __obj130437))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx129901%_)
        (let* ((_%g129905129919%_
                (lambda (_%g129906129915%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129906129915%_))))
               (_%g129904129960%_
                (lambda (_%g129906129923%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129906129923%_))
                      (let ((_%e129908129926%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129906129923%_))))
                        (let ((_%hd129909129930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129908129926%_)))
                              (_%tl129910129933%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129908129926%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129910129933%_))
                              (let ((_%e129911129936%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129910129933%_))))
                                (let ((_%hd129912129940%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129911129936%_)))
                                      (_%tl129913129943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129911129936%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl129913129943%_))
                                      ((lambda (_%L129946%_)
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
                         (cons '() (cons _%L129946%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd129912129940%_)
                                      (_%g129905129919%_ _%g129906129923%_))))
                              (_%g129905129919%_ _%g129906129923%_))))
                      (_%g129905129919%_ _%g129906129923%_)))))
          (_%g129904129960%_ _%$stx129901%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx129964%_)
        (let* ((_%g129968129982%_
                (lambda (_%g129969129978%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129969129978%_))))
               (_%g129967130023%_
                (lambda (_%g129969129986%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129969129986%_))
                      (let ((_%e129971129989%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129969129986%_))))
                        (let ((_%hd129972129993%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129971129989%_)))
                              (_%tl129973129996%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129971129989%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129973129996%_))
                              (let ((_%e129974129999%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129973129996%_))))
                                (let ((_%hd129975130003%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129974129999%_)))
                                      (_%tl129976130006%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129974129999%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl129976130006%_))
                                      ((lambda (_%L130009%_)
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
                         (cons _%L130009%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd129975130003%_)
                                      (_%g129968129982%_ _%g129969129986%_))))
                              (_%g129968129982%_ _%g129969129986%_))))
                      (_%g129968129982%_ _%g129969129986%_)))))
          (_%g129967130023%_ _%$stx129964%_))))))
