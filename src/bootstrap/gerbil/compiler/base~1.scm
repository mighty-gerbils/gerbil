(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g191288_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191290_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191292_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191294_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191295_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191297_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191298_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191300_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191301_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191303_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191304_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx190248%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx190248%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx190251%_)
        (let* ((_%g190254190278%_
                (lambda (_%g190255190274%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190255190274%_))))
               (_%g190253190577%_
                (lambda (_%g190255190282%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190255190282%_))
                      (let ((_%e190258190285%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g190255190282%_))))
                        (let ((_%hd190259190289%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190258190285%_)))
                              (_%tl190260190292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190258190285%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190260190292%_))
                              (let ((_%e190261190295%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl190260190292%_))))
                                (let ((_%hd190262190299%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190261190295%_)))
                                      (_%tl190263190302%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190261190295%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl190263190302%_))
                                      (let ((_g191279_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl190263190302%_
                                                '0))))
                                        (begin
                                          (let ((_g191280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g191279_)
                                                       (##values-length
                                                        _g191279_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g191280_ 2)))
                                                (error "Context expects 2 values"
                                                       _g191280_)))
                                          (let ((_%target190264190305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g191279_ 0)))
                                                (_%tl190266190308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g191279_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190266190308%_))
                                                (letrec ((_%loop190267190311%_
                                                          (lambda (_%hd190265190315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause190271190318%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd190265190315%_))
                        (let ((_%e190268190320%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd190265190315%_))))
                          (let ((_%lp-hd190269190324%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190268190320%_)))
                                (_%lp-tl190270190327%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190268190320%_))))
                            (_%loop190267190311%_
                             _%lp-tl190270190327%_
                             (cons _%lp-hd190269190324%_
                                   _%clause190271190318%_))))
                        (let ((_%clause190272190330%_
                               (reverse _%clause190271190318%_)))
                          ((lambda (_%g190256190333%_ _%g190257190335%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g190257190335%_))
                                 (let* ((_%g190354190371%_
                                         (lambda (_%g190355190367%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g190355190367%_))))
                                        (_%g190353190430%_
                                         (lambda (_%g190355190375%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g190355190375%_))
                                               (let ((_g191281_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g190355190375%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g191282_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g191281_)
                        (##values-length _g191281_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g191282_ 2)))
                 (error "Context expects 2 values" _g191282_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target190357190378%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g191281_
                                                             0)))
                                                         (_%tl190359190381%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g191281_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl190359190381%_))
                                                         (letrec ((_%loop190360190384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd190358190388%_ _%clause190364190391%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd190358190388%_))
                                 (let ((_%e190361190393%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd190358190388%_))))
                                   (let ((_%lp-hd190362190397%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e190361190393%_)))
                                         (_%lp-tl190363190400%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e190361190393%_))))
                                     (_%loop190360190384%_
                                      _%lp-tl190363190400%_
                                      (cons _%lp-hd190362190397%_
                                            _%clause190364190391%_))))
                                 (let ((_%clause190365190403%_
                                        (reverse _%clause190364190391%_)))
                                   ((lambda (_%g190356190406%_)
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
                            (cons _%g190257190335%_
                                  (let ((__tmp191283
                                         (lambda (_%g190421190424%_
                                                  _%g190422190427%_)
                                           (cons _%g190421190424%_
                                                 _%g190422190427%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp191283
                                     '()
                                     _%g190356190406%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause190365190403%_))))))
                   (_%loop190360190384%_ _%target190357190378%_ '()))
                 (_%g190354190371%_ _%g190355190375%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g190354190371%_
                                                _%g190355190375%_)))))
                                   (_%g190353190430%_
                                    (let ((__tmp191286
                                           (lambda (_%clause190434%_)
                                             (let* ((_%__stx191198191199%_
                                                     _%clause190434%_)
                                                    (_%g190438190465%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx191198191199%_)))))
                                               (let ((_%__kont191201191202%_
                                                      (lambda (_%g190440190550%_
                                                               _%g190441190552%_)
                                                        (cons _%g190441190552%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g190440190550%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont191203191204%_
                                                      (lambda (_%g190448190502%_
                                                               _%g190449190504%_
                                                               _%g190450190505%_)
                                                        (cons _%g190450190505%_
                                                              (cons _%g190449190504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g190448190502%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx191198191199%_))
                                                     (let ((_%e190442190530%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx191198191199%_))))
                                                       (let ((_%tl190444190537%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e190442190530%_)))
                     (_%hd190443190534%_
                      (let () (declare (not safe)) (##car _%e190442190530%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl190444190537%_))
                     (let ((_%e190445190540%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl190444190537%_))))
                       (let ((_%tl190447190547%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e190445190540%_)))
                             (_%hd190446190544%_
                              (let ()
                                (declare (not safe))
                                (##car _%e190445190540%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl190447190547%_))
                             (_%__kont191201191202%_
                              _%hd190446190544%_
                              _%hd190443190534%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl190447190547%_))
                                 (let ((_%e190457190492%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl190447190547%_))))
                                   (let ((_%tl190459190499%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e190457190492%_)))
                                         (_%hd190458190496%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e190457190492%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl190459190499%_))
                                         (_%__kont191203191204%_
                                          _%hd190458190496%_
                                          _%hd190446190544%_
                                          _%hd190443190534%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g190438190465%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g190438190465%_))))))
                     (let () (declare (not safe)) (_%g190438190465%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g190438190465%_)))))))
                                          (__tmp191284
                                           (let ((__tmp191285
                                                  (lambda (_%g190568190571%_
                                                           _%g190569190574%_)
                                                    (cons _%g190568190571%_
                                                          _%g190569190574%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp191285
                                              '()
                                              _%g190256190333%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp191286 __tmp191284))))
                                 (_%g190254190278%_ _%g190255190282%_)))
                           _%clause190272190330%_
                           _%hd190262190299%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop190267190311%_
                                                   _%target190264190305%_
                                                   '()))
                                                (_%g190254190278%_
                                                 _%g190255190282%_)))))
                                      (_%g190254190278%_ _%g190255190282%_))))
                              (_%g190254190278%_ _%g190255190282%_))))
                      (_%g190254190278%_ _%g190255190282%_)))))
          (_%g190253190577%_ _%stx190251%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj191248
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj191248
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191248 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj191248
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj191248
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191248 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191248 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191248 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191248 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191248 ':init! '12 '#f '#f))
        (let ((__tmp191287 |gxc[1]#_g191288_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj191248 __tmp191287 '3 '#f '#f))
        (let ((__tmp191289 |gxc[1]#_g191290_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj191248 __tmp191289 '13 '#f '#f))
        (let ((__tmp191291 |gxc[1]#_g191292_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj191248 __tmp191291 '14 '#f '#f))
        (let ((__tmp191293
               (cons (cons 'gensyms |gxc[1]#_g191294_|)
                     (cons (cons 'bindings |gxc[1]#_g191295_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191248 __tmp191293 '15 '#f '#f))
        (let ((__tmp191296
               (cons (cons 'gensyms |gxc[1]#_g191297_|)
                     (cons (cons 'bindings |gxc[1]#_g191298_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191248 __tmp191296 '16 '#f '#f))
        (let ((__tmp191299
               (cons (cons 'gensyms |gxc[1]#_g191300_|)
                     (cons (cons 'bindings |gxc[1]#_g191301_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191248 __tmp191299 '17 '#f '#f))
        (let ((__tmp191302
               (cons (cons 'gensyms |gxc[1]#_g191303_|)
                     (cons (cons 'bindings |gxc[1]#_g191304_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191248 __tmp191302 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191248 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191248 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191248 '() '20 '#f '#f))
        __obj191248))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx190583%_)
        (let* ((_%g190587190601%_
                (lambda (_%g190588190597%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190588190597%_))))
               (_%g190586190642%_
                (lambda (_%g190588190605%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190588190605%_))
                      (let ((_%e190590190608%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g190588190605%_))))
                        (let ((_%hd190591190612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190590190608%_)))
                              (_%tl190592190615%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190590190608%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190592190615%_))
                              (let ((_%e190593190618%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl190592190615%_))))
                                (let ((_%hd190594190622%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190593190618%_)))
                                      (_%tl190595190625%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190593190618%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190595190625%_))
                                      ((lambda (_%g190589190628%_)
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
                         (cons '() (cons _%g190589190628%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd190594190622%_)
                                      (_%g190587190601%_ _%g190588190605%_))))
                              (_%g190587190601%_ _%g190588190605%_))))
                      (_%g190587190601%_ _%g190588190605%_)))))
          (_%g190586190642%_ _%$stx190583%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx190646%_)
        (let* ((_%g190650190664%_
                (lambda (_%g190651190660%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190651190660%_))))
               (_%g190649190705%_
                (lambda (_%g190651190668%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190651190668%_))
                      (let ((_%e190653190671%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g190651190668%_))))
                        (let ((_%hd190654190675%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190653190671%_)))
                              (_%tl190655190678%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190653190671%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190655190678%_))
                              (let ((_%e190656190681%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl190655190678%_))))
                                (let ((_%hd190657190685%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190656190681%_)))
                                      (_%tl190658190688%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190656190681%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190658190688%_))
                                      ((lambda (_%g190652190691%_)
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
                         (cons _%g190652190691%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd190657190685%_)
                                      (_%g190650190664%_ _%g190651190668%_))))
                              (_%g190650190664%_ _%g190651190668%_))))
                      (_%g190650190664%_ _%g190651190668%_)))))
          (_%g190649190705%_ _%$stx190646%_))))))
