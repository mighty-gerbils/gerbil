(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g193127_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193129_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193131_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193133_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193134_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193136_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193137_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193139_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193140_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193142_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g193143_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx192087%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx192087%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx192090%_)
        (let* ((_%g192093192117%_
                (lambda (_%g192094192113%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192094192113%_))))
               (_%g192092192416%_
                (lambda (_%g192094192121%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192094192121%_))
                      (let ((_%e192097192124%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g192094192121%_))))
                        (let ((_%hd192098192128%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192097192124%_)))
                              (_%tl192099192131%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192097192124%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192099192131%_))
                              (let ((_%e192100192134%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl192099192131%_))))
                                (let ((_%hd192101192138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192100192134%_)))
                                      (_%tl192102192141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192100192134%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl192102192141%_))
                                      (let ((_g193118_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl192102192141%_
                                                '0))))
                                        (begin
                                          (let ((_g193119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g193118_)
                                                       (##values-length
                                                        _g193118_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g193119_ 2)))
                                                (error "Context expects 2 values"
                                                       _g193119_)))
                                          (let ((_%target192103192144%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g193118_ 0)))
                                                (_%tl192105192147%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g193118_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192105192147%_))
                                                (letrec ((_%loop192106192150%_
                                                          (lambda (_%hd192104192154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause192110192157%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd192104192154%_))
                        (let ((_%e192107192159%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd192104192154%_))))
                          (let ((_%lp-hd192108192163%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192107192159%_)))
                                (_%lp-tl192109192166%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192107192159%_))))
                            (_%loop192106192150%_
                             _%lp-tl192109192166%_
                             (cons _%lp-hd192108192163%_
                                   _%clause192110192157%_))))
                        (let ((_%clause192111192169%_
                               (reverse _%clause192110192157%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier-list? _%hd192101192138%_))
                              (let* ((_%g192193192210%_
                                      (lambda (_%g192194192206%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g192194192206%_))))
                                     (_%g192192192269%_
                                      (lambda (_%g192194192214%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%g192194192214%_))
                                            (let ((_g193120_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%g192194192214%_
                                                      '0))))
                                              (begin
                                                (let ((_g193121_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g193120_)
                                                             (##values-length
                                                              _g193120_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g193121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g193121_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target192196192217%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g193120_
                                                          0)))
                                                      (_%tl192198192220%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g193120_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192198192220%_))
                                                      (letrec ((_%loop192199192223%_
                                                                (lambda (_%hd192197192227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%clause192203192230%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd192197192227%_))
                              (let ((_%e192200192232%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd192197192227%_))))
                                (let ((_%lp-hd192201192236%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192200192232%_)))
                                      (_%lp-tl192202192239%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192200192232%_))))
                                  (_%loop192199192223%_
                                   _%lp-tl192202192239%_
                                   (cons _%lp-hd192201192236%_
                                         _%clause192203192230%_))))
                              (let ((_%clause192204192242%_
                                     (reverse _%clause192203192230%_)))
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
                      (cons _%hd192101192138%_
                            (let ((__tmp193122
                                   (lambda (_%g192260192263%_
                                            _%g192261192266%_)
                                     (cons _%g192260192263%_
                                           _%g192261192266%_))))
                              (declare (not safe))
                              (foldr__0
                               __tmp193122
                               '()
                               _%clause192204192242%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))))
                (_%loop192199192223%_ _%target192196192217%_ '()))
              (_%g192193192210%_ _%g192194192214%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g192193192210%_
                                             _%g192194192214%_)))))
                                (_%g192192192269%_
                                 (let ((__tmp193125
                                        (lambda (_%clause192273%_)
                                          (let* ((_%__stx193037193038%_
                                                  _%clause192273%_)
                                                 (_%g192277192304%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx193037193038%_)))))
                                            (let ((_%__kont193040193041%_
                                                   (lambda (_%g192279192389%_
                                                            _%g192280192391%_)
                                                     (cons _%g192280192391%_
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'syntax))
                               (cons _%g192279192389%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193042193043%_
                                                   (lambda (_%g192287192341%_
                                                            _%g192288192343%_
                                                            _%g192289192344%_)
                                                     (cons _%g192289192344%_
                                                           (cons _%g192288192343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax))
                                     (cons _%g192287192341%_ '()))
                               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx193037193038%_))
                                                  (let ((_%e192281192369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%__stx193037193038%_))))
                                                    (let ((_%tl192283192376%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192281192369%_)))
                                                          (_%hd192282192373%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192281192369%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192283192376%_))
                                                          (let ((_%e192284192379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl192283192376%_))))
                    (let ((_%tl192286192386%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192284192379%_)))
                          (_%hd192285192383%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192284192379%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192286192386%_))
                          (_%__kont193040193041%_
                           _%hd192285192383%_
                           _%hd192282192373%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192286192386%_))
                              (let ((_%e192296192331%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl192286192386%_))))
                                (let ((_%tl192298192338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192296192331%_)))
                                      (_%hd192297192335%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192296192331%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192298192338%_))
                                      (_%__kont193042193043%_
                                       _%hd192297192335%_
                                       _%hd192285192383%_
                                       _%hd192282192373%_)
                                      (_%g192277192304%_))))
                              (_%g192277192304%_)))))
                  (_%g192277192304%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g192277192304%_))))))
                                       (__tmp193123
                                        (let ((__tmp193124
                                               (lambda (_%g192407192410%_
                                                        _%g192408192413%_)
                                                 (cons _%g192407192410%_
                                                       _%g192408192413%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp193124
                                           '()
                                           _%clause192111192169%_))))
                                   (declare (not safe))
                                   (gx#stx-map1 __tmp193125 __tmp193123))))
                              (_%g192093192117%_ _%g192094192121%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop192106192150%_
                                                   _%target192103192144%_
                                                   '()))
                                                (_%g192093192117%_
                                                 _%g192094192121%_)))))
                                      (_%g192093192117%_ _%g192094192121%_))))
                              (_%g192093192117%_ _%g192094192121%_))))
                      (_%g192093192117%_ _%g192094192121%_)))))
          (_%g192092192416%_ _%stx192090%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj193087
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
           __obj193087
           'gxc#symbol-table::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193087 'symbol-table '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj193087
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj193087
           '(gensyms bindings)
           '8
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193087 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193087 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193087 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193087 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193087 ':init! '13 '#f '#f))
        (let ((__tmp193126 |gxc[1]#_g193127_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj193087 __tmp193126 '4 '#f '#f))
        (let ((__tmp193128 |gxc[1]#_g193129_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj193087 __tmp193128 '14 '#f '#f))
        (let ((__tmp193130 |gxc[1]#_g193131_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj193087 __tmp193130 '15 '#f '#f))
        (let ((__tmp193132
               (cons (cons 'gensyms |gxc[1]#_g193133_|)
                     (cons (cons 'bindings |gxc[1]#_g193134_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj193087 __tmp193132 '16 '#f '#f))
        (let ((__tmp193135
               (cons (cons 'gensyms |gxc[1]#_g193136_|)
                     (cons (cons 'bindings |gxc[1]#_g193137_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj193087 __tmp193135 '17 '#f '#f))
        (let ((__tmp193138
               (cons (cons 'gensyms |gxc[1]#_g193139_|)
                     (cons (cons 'bindings |gxc[1]#_g193140_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj193087 __tmp193138 '18 '#f '#f))
        (let ((__tmp193141
               (cons (cons 'gensyms |gxc[1]#_g193142_|)
                     (cons (cons 'bindings |gxc[1]#_g193143_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj193087 __tmp193141 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193087 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193087 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj193087 '() '21 '#f '#f))
        __obj193087))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx192422%_)
        (let* ((_%g192426192440%_
                (lambda (_%g192427192436%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192427192436%_))))
               (_%g192425192481%_
                (lambda (_%g192427192444%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192427192444%_))
                      (let ((_%e192429192447%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g192427192444%_))))
                        (let ((_%hd192430192451%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192429192447%_)))
                              (_%tl192431192454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192429192447%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192431192454%_))
                              (let ((_%e192432192457%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl192431192454%_))))
                                (let ((_%hd192433192461%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192432192457%_)))
                                      (_%tl192434192464%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192432192457%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192434192464%_))
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
                      (cons '() (cons _%hd192433192461%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%g192426192440%_ _%g192427192444%_))))
                              (_%g192426192440%_ _%g192427192444%_))))
                      (_%g192426192440%_ _%g192427192444%_)))))
          (_%g192425192481%_ _%$stx192422%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx192485%_)
        (let* ((_%g192489192503%_
                (lambda (_%g192490192499%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192490192499%_))))
               (_%g192488192544%_
                (lambda (_%g192490192507%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192490192507%_))
                      (let ((_%e192492192510%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g192490192507%_))))
                        (let ((_%hd192493192514%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192492192510%_)))
                              (_%tl192494192517%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192492192510%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192494192517%_))
                              (let ((_%e192495192520%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl192494192517%_))))
                                (let ((_%hd192496192524%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192495192520%_)))
                                      (_%tl192497192527%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192495192520%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192497192527%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'spawn))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lambda))
                                                        (cons '()
                                                              (cons _%hd192496192524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (_%g192489192503%_ _%g192490192507%_))))
                              (_%g192489192503%_ _%g192490192507%_))))
                      (_%g192489192503%_ _%g192490192507%_)))))
          (_%g192488192544%_ _%$stx192485%_))))))
