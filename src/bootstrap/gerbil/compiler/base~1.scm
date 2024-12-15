(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g135030_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135032_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135034_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135036_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135037_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135039_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135040_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135042_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135043_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135045_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135046_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx134113%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx134113%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx134116%_)
        (let* ((_%g134119134143%_
                (lambda (_%g134120134139%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134120134139%_))))
               (_%g134118134446%_
                (lambda (_%g134120134147%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134120134147%_))
                      (let ((_%e134123134150%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134120134147%_))))
                        (let ((_%hd134124134154%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134123134150%_)))
                              (_%tl134125134157%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134123134150%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134125134157%_))
                              (let ((_%e134126134160%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134125134157%_))))
                                (let ((_%hd134127134164%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134126134160%_)))
                                      (_%tl134128134167%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134126134160%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl134128134167%_))
                                      (let ((_g135021_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl134128134167%_
                                                '0))))
                                        (begin
                                          (let ((_g135022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135021_)
                                                       (##values-length
                                                        _g135021_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135022_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135022_)))
                                          (let ((_%target134129134170%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g135021_ 0)))
                                                (_%tl134131134173%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g135021_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134131134173%_))
                                                (letrec ((_%loop134132134176%_
                                                          (lambda (_%hd134130134180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause134136134183%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134130134180%_))
                        (let ((_%e134133134186%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd134130134180%_))))
                          (let ((_%lp-hd134134134190%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134133134186%_)))
                                (_%lp-tl134135134193%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134133134186%_))))
                            (_%loop134132134176%_
                             _%lp-tl134135134193%_
                             (cons _%lp-hd134134134190%_
                                   _%clause134136134183%_))))
                        (let ((_%clause134137134196%_
                               (reverse _%clause134136134183%_)))
                          ((lambda (_%L134200%_ _%L134202%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L134202%_))
                                 (let* ((_%g134221134238%_
                                         (lambda (_%g134222134234%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g134222134234%_))))
                                        (_%g134220134299%_
                                         (lambda (_%g134222134242%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g134222134242%_))
                                               (let ((_g135023_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g134222134242%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g135024_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g135023_)
                        (##values-length _g135023_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g135024_ 2)))
                 (error "Context expects 2 values" _g135024_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target134224134245%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g135023_
                                                             0)))
                                                         (_%tl134226134248%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g135023_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl134226134248%_))
                                                         (letrec ((_%loop134227134251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd134225134255%_ _%clause134231134258%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd134225134255%_))
                                 (let ((_%e134228134261%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd134225134255%_))))
                                   (let ((_%lp-hd134229134265%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e134228134261%_)))
                                         (_%lp-tl134230134268%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e134228134261%_))))
                                     (_%loop134227134251%_
                                      _%lp-tl134230134268%_
                                      (cons _%lp-hd134229134265%_
                                            _%clause134231134258%_))))
                                 (let ((_%clause134232134271%_
                                        (reverse _%clause134231134258%_)))
                                   ((lambda (_%L134275%_)
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
                            (cons _%L134202%_
                                  (let ((__tmp135025
                                         (lambda (_%g134290134293%_
                                                  _%g134291134296%_)
                                           (cons _%g134290134293%_
                                                 _%g134291134296%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp135025 '() _%L134275%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause134232134271%_))))))
                   (_%loop134227134251%_ _%target134224134245%_ '()))
                 (_%g134221134238%_ _%g134222134242%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g134221134238%_
                                                _%g134222134242%_)))))
                                   (_%g134220134299%_
                                    (let ((__tmp135028
                                           (lambda (_%clause134303%_)
                                             (let* ((_%__stx134941134942%_
                                                     _%clause134303%_)
                                                    (_%g134307134334%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx134941134942%_)))))
                                               (let ((_%__kont134944134945%_
                                                      (lambda (_%L134419%_
                                                               _%L134421%_)
                                                        (cons _%L134421%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L134419%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont134946134947%_
                                                      (lambda (_%L134371%_
                                                               _%L134373%_
                                                               _%L134374%_)
                                                        (cons _%L134374%_
                                                              (cons _%L134373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L134371%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx134941134942%_))
                                                     (let ((_%e134311134399%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx134941134942%_))))
                                                       (let ((_%tl134313134406%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e134311134399%_)))
                     (_%hd134312134403%_
                      (let () (declare (not safe)) (##car _%e134311134399%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl134313134406%_))
                     (let ((_%e134314134409%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl134313134406%_))))
                       (let ((_%tl134316134416%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e134314134409%_)))
                             (_%hd134315134413%_
                              (let ()
                                (declare (not safe))
                                (##car _%e134314134409%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl134316134416%_))
                             (_%__kont134944134945%_
                              _%hd134315134413%_
                              _%hd134312134403%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl134316134416%_))
                                 (let ((_%e134326134361%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl134316134416%_))))
                                   (let ((_%tl134328134368%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e134326134361%_)))
                                         (_%hd134327134365%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e134326134361%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl134328134368%_))
                                         (_%__kont134946134947%_
                                          _%hd134327134365%_
                                          _%hd134315134413%_
                                          _%hd134312134403%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g134307134334%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g134307134334%_))))))
                     (let () (declare (not safe)) (_%g134307134334%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g134307134334%_)))))))
                                          (__tmp135026
                                           (let ((__tmp135027
                                                  (lambda (_%g134437134440%_
                                                           _%g134438134443%_)
                                                    (cons _%g134437134440%_
                                                          _%g134438134443%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp135027
                                              '()
                                              _%L134200%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp135028 __tmp135026))))
                                 (_%g134119134143%_ _%g134120134147%_)))
                           _%clause134137134196%_
                           _%hd134127134164%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134132134176%_
                                                   _%target134129134170%_
                                                   '()))
                                                (_%g134119134143%_
                                                 _%g134120134147%_)))))
                                      (_%g134119134143%_ _%g134120134147%_))))
                              (_%g134119134143%_ _%g134120134147%_))))
                      (_%g134119134143%_ _%g134120134147%_)))))
          (_%g134118134446%_ _%stx134116%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj134991
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
           __obj134991
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134991 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134991
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134991
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134991 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134991 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134991 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134991 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134991 ':init! '11 '#f '#f))
        (let ((__tmp135029 |gxc[1]#_g135030_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj134991 __tmp135029 '12 '#f '#f))
        (let ((__tmp135031 |gxc[1]#_g135032_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj134991 __tmp135031 '13 '#f '#f))
        (let ((__tmp135033 |gxc[1]#_g135034_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj134991 __tmp135033 '14 '#f '#f))
        (let ((__tmp135035
               (cons (cons 'gensyms |gxc[1]#_g135036_|)
                     (cons (cons 'bindings |gxc[1]#_g135037_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134991 __tmp135035 '15 '#f '#f))
        (let ((__tmp135038
               (cons (cons 'gensyms |gxc[1]#_g135039_|)
                     (cons (cons 'bindings |gxc[1]#_g135040_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134991 __tmp135038 '16 '#f '#f))
        (let ((__tmp135041
               (cons (cons 'gensyms |gxc[1]#_g135042_|)
                     (cons (cons 'bindings |gxc[1]#_g135043_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134991 __tmp135041 '17 '#f '#f))
        (let ((__tmp135044
               (cons (cons 'gensyms |gxc[1]#_g135045_|)
                     (cons (cons 'bindings |gxc[1]#_g135046_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134991 __tmp135044 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134991 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134991 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134991 '() '20 '#f '#f))
        __obj134991))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx134453%_)
        (let* ((_%g134457134471%_
                (lambda (_%g134458134467%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134458134467%_))))
               (_%g134456134512%_
                (lambda (_%g134458134475%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134458134475%_))
                      (let ((_%e134460134478%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134458134475%_))))
                        (let ((_%hd134461134482%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134460134478%_)))
                              (_%tl134462134485%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134460134478%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134462134485%_))
                              (let ((_%e134463134488%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134462134485%_))))
                                (let ((_%hd134464134492%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134463134488%_)))
                                      (_%tl134465134495%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134463134488%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134465134495%_))
                                      ((lambda (_%L134498%_)
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
                         (cons '() (cons _%L134498%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd134464134492%_)
                                      (_%g134457134471%_ _%g134458134475%_))))
                              (_%g134457134471%_ _%g134458134475%_))))
                      (_%g134457134471%_ _%g134458134475%_)))))
          (_%g134456134512%_ _%$stx134453%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx134516%_)
        (let* ((_%g134520134534%_
                (lambda (_%g134521134530%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134521134530%_))))
               (_%g134519134575%_
                (lambda (_%g134521134538%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134521134538%_))
                      (let ((_%e134523134541%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134521134538%_))))
                        (let ((_%hd134524134545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134523134541%_)))
                              (_%tl134525134548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134523134541%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134525134548%_))
                              (let ((_%e134526134551%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134525134548%_))))
                                (let ((_%hd134527134555%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134526134551%_)))
                                      (_%tl134528134558%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134526134551%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134528134558%_))
                                      ((lambda (_%L134561%_)
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
                         (cons _%L134561%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd134527134555%_)
                                      (_%g134520134534%_ _%g134521134538%_))))
                              (_%g134520134534%_ _%g134521134538%_))))
                      (_%g134520134534%_ _%g134521134538%_)))))
          (_%g134519134575%_ _%$stx134516%_))))))
