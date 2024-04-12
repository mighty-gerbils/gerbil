(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g206159_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206166_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206168_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206170_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206172_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206174_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206186_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206188_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206190_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206192_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206194_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx199577%_)
        (let* ((_%g199581199599%_
                (lambda (_%g199582199595%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199582199595%_))))
               (_%g199580199654%_
                (lambda (_%g199582199603%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199582199603%_))
                      (let ((_%e199585199606%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199582199603%_))))
                        (let ((_%hd199586199610%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199585199606%_)))
                              (_%tl199587199613%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199585199606%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199587199613%_))
                              (let ((_%e199588199616%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199587199613%_))))
                                (let ((_%hd199589199620%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199588199616%_)))
                                      (_%tl199590199623%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199588199616%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199590199623%_))
                                      (let ((_%e199591199626%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199590199623%_))))
                                        (let ((_%hd199592199630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199591199626%_)))
                                              (_%tl199593199633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199591199626%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199593199633%_))
                                              ((lambda (_%L199636%_
                                                        _%L199638%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L199638%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L199638%_ '()))
                         (cons _%L199636%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199581199599%_
                                                      _%g199582199603%_)))
                                               _%hd199592199630%_
                                               _%hd199589199620%_)
                                              (_%g199581199599%_
                                               _%g199582199603%_))))
                                      (_%g199581199599%_ _%g199582199603%_))))
                              (_%g199581199599%_ _%g199582199603%_))))
                      (_%g199581199599%_ _%g199582199603%_)))))
          (_%g199580199654%_ _%$stx199577%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx199658%_)
        (let* ((_%g199662199680%_
                (lambda (_%g199663199676%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199663199676%_))))
               (_%g199661199735%_
                (lambda (_%g199663199684%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199663199684%_))
                      (let ((_%e199666199687%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199663199684%_))))
                        (let ((_%hd199667199691%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199666199687%_)))
                              (_%tl199668199694%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199666199687%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199668199694%_))
                              (let ((_%e199669199697%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199668199694%_))))
                                (let ((_%hd199670199701%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199669199697%_)))
                                      (_%tl199671199704%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199669199697%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199671199704%_))
                                      (let ((_%e199672199707%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199671199704%_))))
                                        (let ((_%hd199673199711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199672199707%_)))
                                              (_%tl199674199714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199672199707%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199674199714%_))
                                              ((lambda (_%L199717%_
                                                        _%L199719%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L199719%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L199719%_ '()))
                         (cons _%L199717%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199662199680%_
                                                      _%g199663199684%_)))
                                               _%hd199673199711%_
                                               _%hd199670199701%_)
                                              (_%g199662199680%_
                                               _%g199663199684%_))))
                                      (_%g199662199680%_ _%g199663199684%_))))
                              (_%g199662199680%_ _%g199663199684%_))))
                      (_%g199662199680%_ _%g199663199684%_)))))
          (_%g199661199735%_ _%$stx199658%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx199739%_)
        (let* ((_%g199743199772%_
                (lambda (_%g199744199768%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199744199768%_))))
               (_%g199742199872%_
                (lambda (_%g199744199776%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199744199776%_))
                      (let ((_%e199747199779%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199744199776%_))))
                        (let ((_%hd199748199783%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199747199779%_)))
                              (_%tl199749199786%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199747199779%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl199749199786%_))
                              (let ((_g206137_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl199749199786%_
                                        '0))))
                                (begin
                                  (let ((_g206138_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g206137_)
                                               (##vector-length _g206137_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g206138_ 2)))
                                        (error "Context expects 2 values"
                                               _g206138_)))
                                  (let ((_%target199750199789%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206137_ 0)))
                                        (_%tl199752199792%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206137_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199752199792%_))
                                        (letrec ((_%loop199753199795%_
                                                  (lambda (_%hd199751199799%_
                                                           _%type199757199802%_
                                                           _%symbol199758199804%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199751199799%_))
                                                        (let ((_%e199754199807%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199751199799%_))))
                  (let ((_%lp-hd199755199811%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199754199807%_)))
                        (_%lp-tl199756199814%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199754199807%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd199755199811%_))
                        (let ((_%e199761199817%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd199755199811%_))))
                          (let ((_%hd199762199821%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199761199817%_)))
                                (_%tl199763199824%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199761199817%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199763199824%_))
                                (let ((_%e199764199827%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199763199824%_))))
                                  (let ((_%hd199765199831%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199764199827%_)))
                                        (_%tl199766199834%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199764199827%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199766199834%_))
                                        (_%loop199753199795%_
                                         _%lp-tl199756199814%_
                                         (cons _%hd199765199831%_
                                               _%type199757199802%_)
                                         (cons _%hd199762199821%_
                                               _%symbol199758199804%_))
                                        (_%g199743199772%_
                                         _%g199744199776%_))))
                                (_%g199743199772%_ _%g199744199776%_))))
                        (_%g199743199772%_ _%g199744199776%_))))
                (let ((_%type199759199837%_ (reverse _%type199757199802%_))
                      (_%symbol199760199840%_
                       (reverse _%symbol199758199804%_)))
                  ((lambda (_%L199843%_ _%L199845%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L199843%_
                                _%L199845%_))
                             (let ((__tmp206139
                                    (lambda (_%g199860199864%_
                                             _%g199861199867%_
                                             _%g199862199869%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g199861199867%_
                                                        (cons _%g199860199864%_
                                                              '())))
                                            _%g199862199869%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp206139
                                '()
                                _%L199843%_
                                _%L199845%_)))))
                   _%type199759199837%_
                   _%symbol199760199840%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop199753199795%_
                                           _%target199750199789%_
                                           '()
                                           '()))
                                        (_%g199743199772%_
                                         _%g199744199776%_)))))
                              (_%g199743199772%_ _%g199744199776%_))))
                      (_%g199743199772%_ _%g199744199776%_)))))
          (_%g199742199872%_ _%$stx199739%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx199877%_)
        (let* ((_%__stx205448205449%_ _%$stx199877%_)
               (_%g199882199924%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205448205449%_)))))
          (let ((_%__kont205451205452%_
                 (lambda (_%L200052%_ _%L200054%_ _%L200055%_ _%L200056%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200056%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L200055%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L200054%_ '()))
                                           (cons _%L200052%_ '())))))))
                (_%__kont205453205454%_
                 (lambda (_%L199971%_ _%L199973%_ _%L199974%_ _%L199975%_)
                   (cons _%L199975%_
                         (cons _%L199974%_
                               (cons _%L199973%_
                                     (cons _%L199971%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match205487205488%_
                   (lambda (_%e199888200002%_
                            _%hd199889200006%_
                            _%tl199890200009%_
                            _%e199891200012%_
                            _%hd199892200016%_
                            _%tl199893200019%_
                            _%e199894200022%_
                            _%hd199895200026%_
                            _%tl199896200029%_
                            _%e199897200032%_
                            _%hd199898200036%_
                            _%tl199899200039%_
                            _%e199900200042%_
                            _%hd199901200046%_
                            _%tl199902200049%_)
                     (let ((_%L200052%_ _%hd199901200046%_)
                           (_%L200054%_ _%hd199898200036%_)
                           (_%L200055%_ _%hd199895200026%_)
                           (_%L200056%_ _%hd199892200016%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L200056%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L200055%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L200054%_)))
                           (_%__kont205451205452%_
                            _%L200052%_
                            _%L200054%_
                            _%L200055%_
                            _%L200056%_)
                           (let ()
                             (declare (not safe))
                             (_%g199882199924%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205448205449%_))
                  (let ((_%e199888200002%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx205448205449%_))))
                    (let ((_%tl199890200009%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199888200002%_)))
                          (_%hd199889200006%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199888200002%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199890200009%_))
                          (let ((_%e199891200012%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199890200009%_))))
                            (let ((_%tl199893200019%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199891200012%_)))
                                  (_%hd199892200016%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199891200012%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199893200019%_))
                                  (let ((_%e199894200022%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199893200019%_))))
                                    (let ((_%tl199896200029%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199894200022%_)))
                                          (_%hd199895200026%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199894200022%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199896200029%_))
                                          (let ((_%e199897200032%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl199896200029%_))))
                                            (let ((_%tl199899200039%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199897200032%_)))
                                                  (_%hd199898200036%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199897200032%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199899200039%_))
                                                  (let ((_%e199900200042%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199899200039%_))))
                                                    (let ((_%tl199902200049%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199900200042%_)))
                                                          (_%hd199901200046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199900200042%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199902200049%_))
                                                          (_%__match205487205488%_
                                                           _%e199888200002%_
                                                           _%hd199889200006%_
                                                           _%tl199890200009%_
                                                           _%e199891200012%_
                                                           _%hd199892200016%_
                                                           _%tl199893200019%_
                                                           _%e199894200022%_
                                                           _%hd199895200026%_
                                                           _%tl199896200029%_
                                                           _%e199897200032%_
                                                           _%hd199898200036%_
                                                           _%tl199899200039%_
                                                           _%e199900200042%_
                                                           _%hd199901200046%_
                                                           _%tl199902200049%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g199882199924%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199899200039%_))
                                                      (_%__kont205453205454%_
                                                       _%hd199898200036%_
                                                       _%hd199895200026%_
                                                       _%hd199892200016%_
                                                       _%hd199889200006%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199882199924%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199882199924%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199882199924%_)))))
                          (let () (declare (not safe)) (_%g199882199924%_)))))
                  (let () (declare (not safe)) (_%g199882199924%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx200081%_)
        (let* ((_%g200085200120%_
                (lambda (_%g200086200116%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200086200116%_))))
               (_%g200084200239%_
                (lambda (_%g200086200124%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200086200124%_))
                      (let ((_%e200090200127%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200086200124%_))))
                        (let ((_%hd200091200131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200090200127%_)))
                              (_%tl200092200134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200090200127%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl200092200134%_))
                              (let ((_g206140_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl200092200134%_
                                        '0))))
                                (begin
                                  (let ((_g206141_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g206140_)
                                               (##vector-length _g206140_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g206141_ 2)))
                                        (error "Context expects 2 values"
                                               _g206141_)))
                                  (let ((_%target200093200137%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206140_ 0)))
                                        (_%tl200095200140%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206140_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200095200140%_))
                                        (letrec ((_%loop200096200143%_
                                                  (lambda (_%hd200094200147%_
                                                           _%symbol200100200150%_
                                                           _%method200101200152%_
                                                           _%type-t200102200154%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200094200147%_))
                                                        (let ((_%e200097200157%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd200094200147%_))))
                  (let ((_%lp-hd200098200161%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200097200157%_)))
                        (_%lp-tl200099200164%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200097200157%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd200098200161%_))
                        (let ((_%e200106200167%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd200098200161%_))))
                          (let ((_%hd200107200171%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200106200167%_)))
                                (_%tl200108200174%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200106200167%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200108200174%_))
                                (let ((_%e200109200177%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200108200174%_))))
                                  (let ((_%hd200110200181%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200109200177%_)))
                                        (_%tl200111200184%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200109200177%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200111200184%_))
                                        (let ((_%e200112200187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl200111200184%_))))
                                          (let ((_%hd200113200191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200112200187%_)))
                                                (_%tl200114200194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200112200187%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200114200194%_))
                                                (_%loop200096200143%_
                                                 _%lp-tl200099200164%_
                                                 (cons _%hd200113200191%_
                                                       _%symbol200100200150%_)
                                                 (cons _%hd200110200181%_
                                                       _%method200101200152%_)
                                                 (cons _%hd200107200171%_
                                                       _%type-t200102200154%_))
                                                (_%g200085200120%_
                                                 _%g200086200124%_))))
                                        (_%g200085200120%_
                                         _%g200086200124%_))))
                                (_%g200085200120%_ _%g200086200124%_))))
                        (_%g200085200120%_ _%g200086200124%_))))
                (let ((_%symbol200103200197%_ (reverse _%symbol200100200150%_))
                      (_%method200104200200%_ (reverse _%method200101200152%_))
                      (_%type-t200105200202%_
                       (reverse _%type-t200102200154%_)))
                  ((lambda (_%L200205%_ _%L200207%_ _%L200208%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L200205%_
                                _%L200207%_
                                _%L200208%_))
                             (let ((__tmp206142
                                    (lambda (_%g200224200229%_
                                             _%g200225200232%_
                                             _%g200226200234%_
                                             _%g200227200236%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g200226200234%_
                                                        (cons _%g200225200232%_
                                                              (cons _%g200224200229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g200227200236%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp206142
                                '()
                                _%L200205%_
                                _%L200207%_
                                _%L200208%_)))))
                   _%symbol200103200197%_
                   _%method200104200200%_
                   _%type-t200105200202%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop200096200143%_
                                           _%target200093200137%_
                                           '()
                                           '()
                                           '()))
                                        (_%g200085200120%_
                                         _%g200086200124%_)))))
                              (_%g200085200120%_ _%g200086200124%_))))
                      (_%g200085200120%_ _%g200086200124%_)))))
          (_%g200084200239%_ _%$stx200081%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx200244%_)
        (let* ((_%g200248200281%_
                (lambda (_%g200249200277%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200249200277%_))))
               (_%g200247200395%_
                (lambda (_%g200249200285%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200249200285%_))
                      (let ((_%e200253200288%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200249200285%_))))
                        (let ((_%hd200254200292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200253200288%_)))
                              (_%tl200255200295%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200253200288%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200255200295%_))
                              (let ((_%e200256200298%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200255200295%_))))
                                (let ((_%hd200257200302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200256200298%_)))
                                      (_%tl200258200305%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200256200298%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200258200305%_))
                                      (let ((_g206143_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200258200305%_
                                                '0))))
                                        (begin
                                          (let ((_g206144_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g206143_)
                                                       (##vector-length
                                                        _g206143_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g206144_ 2)))
                                                (error "Context expects 2 values"
                                                       _g206144_)))
                                          (let ((_%target200259200308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g206143_ 0)))
                                                (_%tl200261200311%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g206143_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200261200311%_))
                                                (letrec ((_%loop200262200314%_
                                                          (lambda (_%hd200260200318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol200266200321%_
                           _%method200267200323%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200260200318%_))
                        (let ((_%e200263200326%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200260200318%_))))
                          (let ((_%lp-hd200264200330%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200263200326%_)))
                                (_%lp-tl200265200333%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200263200326%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd200264200330%_))
                                (let ((_%e200270200336%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd200264200330%_))))
                                  (let ((_%hd200271200340%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200270200336%_)))
                                        (_%tl200272200343%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200270200336%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200272200343%_))
                                        (let ((_%e200273200346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl200272200343%_))))
                                          (let ((_%hd200274200350%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200273200346%_)))
                                                (_%tl200275200353%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200273200346%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200275200353%_))
                                                (_%loop200262200314%_
                                                 _%lp-tl200265200333%_
                                                 (cons _%hd200274200350%_
                                                       _%symbol200266200321%_)
                                                 (cons _%hd200271200340%_
                                                       _%method200267200323%_))
                                                (_%g200248200281%_
                                                 _%g200249200285%_))))
                                        (_%g200248200281%_
                                         _%g200249200285%_))))
                                (_%g200248200281%_ _%g200249200285%_))))
                        (let ((_%symbol200268200356%_
                               (reverse _%symbol200266200321%_))
                              (_%method200269200359%_
                               (reverse _%method200267200323%_)))
                          ((lambda (_%L200362%_ _%L200364%_ _%L200365%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L200362%_
                                        _%L200364%_))
                                     (let ((__tmp206145
                                            (lambda (_%g200383200387%_
                                                     _%g200384200390%_
                                                     _%g200385200392%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L200365%_
                                                                (cons _%g200384200390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g200383200387%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g200385200392%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp206145
                                        '()
                                        _%L200362%_
                                        _%L200364%_)))))
                           _%symbol200268200356%_
                           _%method200269200359%_
                           _%hd200257200302%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200262200314%_
                                                   _%target200259200308%_
                                                   '()
                                                   '()))
                                                (_%g200248200281%_
                                                 _%g200249200285%_)))))
                                      (_%g200248200281%_ _%g200249200285%_))))
                              (_%g200248200281%_ _%g200249200285%_))))
                      (_%g200248200281%_ _%g200249200285%_)))))
          (_%g200247200395%_ _%$stx200244%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx200400%_)
        (let* ((_%g200404200418%_
                (lambda (_%g200405200414%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200405200414%_))))
               (_%g200403200459%_
                (lambda (_%g200405200422%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200405200422%_))
                      (let ((_%e200407200425%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200405200422%_))))
                        (let ((_%hd200408200429%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200407200425%_)))
                              (_%tl200409200432%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200407200425%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200409200432%_))
                              (let ((_%e200410200435%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200409200432%_))))
                                (let ((_%hd200411200439%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200410200435%_)))
                                      (_%tl200412200442%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200410200435%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200412200442%_))
                                      ((lambda (_%L200445%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L200445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd200411200439%_)
                                      (_%g200404200418%_ _%g200405200422%_))))
                              (_%g200404200418%_ _%g200405200422%_))))
                      (_%g200404200418%_ _%g200405200422%_)))))
          (_%g200403200459%_ _%$stx200400%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx200463%_)
        (let* ((_%g200467200521%_
                (lambda (_%g200468200517%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200468200517%_))))
               (_%g200466200702%_
                (lambda (_%g200468200525%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200468200525%_))
                      (let ((_%e200480200528%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200468200525%_))))
                        (let ((_%hd200481200532%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200480200528%_)))
                              (_%tl200482200535%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200480200528%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200482200535%_))
                              (let ((_%e200483200538%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200482200535%_))))
                                (let ((_%hd200484200542%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200483200538%_)))
                                      (_%tl200485200545%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200483200538%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200485200545%_))
                                      (let ((_%e200486200548%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200485200545%_))))
                                        (let ((_%hd200487200552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200486200548%_)))
                                              (_%tl200488200555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200486200548%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200488200555%_))
                                              (let ((_%e200489200558%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200488200555%_))))
                                                (let ((_%hd200490200562%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200489200558%_)))
                                                      (_%tl200491200565%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200489200558%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200491200565%_))
                                                      (let ((_%e200492200568%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl200491200565%_))))
                (let ((_%hd200493200572%_
                       (let () (declare (not safe)) (##car _%e200492200568%_)))
                      (_%tl200494200575%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e200492200568%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200494200575%_))
                      (let ((_%e200495200578%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200494200575%_))))
                        (let ((_%hd200496200582%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200495200578%_)))
                              (_%tl200497200585%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200495200578%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200497200585%_))
                              (let ((_%e200498200588%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200497200585%_))))
                                (let ((_%hd200499200592%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200498200588%_)))
                                      (_%tl200500200595%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200498200588%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200500200595%_))
                                      (let ((_%e200501200598%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200500200595%_))))
                                        (let ((_%hd200502200602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200501200598%_)))
                                              (_%tl200503200605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200501200598%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200503200605%_))
                                              (let ((_%e200504200608%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200503200605%_))))
                                                (let ((_%hd200505200612%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200504200608%_)))
                                                      (_%tl200506200615%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200504200608%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200506200615%_))
                                                      (let ((_%e200507200618%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl200506200615%_))))
                (let ((_%hd200508200622%_
                       (let () (declare (not safe)) (##car _%e200507200618%_)))
                      (_%tl200509200625%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e200507200618%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200509200625%_))
                      (let ((_%e200510200628%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200509200625%_))))
                        (let ((_%hd200511200632%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200510200628%_)))
                              (_%tl200512200635%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200510200628%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200512200635%_))
                              (let ((_%e200513200638%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200512200635%_))))
                                (let ((_%hd200514200642%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200513200638%_)))
                                      (_%tl200515200645%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200513200638%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200515200645%_))
                                      ((lambda (_%L200648%_
                                                _%L200650%_
                                                _%L200651%_
                                                _%L200652%_
                                                _%L200653%_
                                                _%L200654%_
                                                _%L200655%_
                                                _%L200656%_
                                                _%L200657%_
                                                _%L200658%_
                                                _%L200659%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L200659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L200658%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L200657%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200656%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L200655%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L200654%_ '()))
                                           (cons _%L200653%_
                                                 (cons _%L200652%_
                                                       (cons _%L200651%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L200650%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L200648%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd200514200642%_
                                       _%hd200511200632%_
                                       _%hd200508200622%_
                                       _%hd200505200612%_
                                       _%hd200502200602%_
                                       _%hd200499200592%_
                                       _%hd200496200582%_
                                       _%hd200493200572%_
                                       _%hd200490200562%_
                                       _%hd200487200552%_
                                       _%hd200484200542%_)
                                      (_%g200467200521%_ _%g200468200525%_))))
                              (_%g200467200521%_ _%g200468200525%_))))
                      (_%g200467200521%_ _%g200468200525%_))))
              (_%g200467200521%_ _%g200468200525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200467200521%_
                                               _%g200468200525%_))))
                                      (_%g200467200521%_ _%g200468200525%_))))
                              (_%g200467200521%_ _%g200468200525%_))))
                      (_%g200467200521%_ _%g200468200525%_))))
              (_%g200467200521%_ _%g200468200525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200467200521%_
                                               _%g200468200525%_))))
                                      (_%g200467200521%_ _%g200468200525%_))))
                              (_%g200467200521%_ _%g200468200525%_))))
                      (_%g200467200521%_ _%g200468200525%_)))))
          (_%g200466200702%_ _%$stx200463%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx200706%_)
        (let* ((_%g200710200724%_
                (lambda (_%g200711200720%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200711200720%_))))
               (_%g200709200765%_
                (lambda (_%g200711200728%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200711200728%_))
                      (let ((_%e200713200731%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200711200728%_))))
                        (let ((_%hd200714200735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200713200731%_)))
                              (_%tl200715200738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200713200731%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200715200738%_))
                              (let ((_%e200716200741%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200715200738%_))))
                                (let ((_%hd200717200745%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200716200741%_)))
                                      (_%tl200718200748%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200716200741%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200718200748%_))
                                      ((lambda (_%L200751%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L200751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd200717200745%_)
                                      (_%g200710200724%_ _%g200711200728%_))))
                              (_%g200710200724%_ _%g200711200728%_))))
                      (_%g200710200724%_ _%g200711200728%_)))))
          (_%g200709200765%_ _%$stx200706%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx200769%_)
        (let* ((_%g200773200787%_
                (lambda (_%g200774200783%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200774200783%_))))
               (_%g200772200828%_
                (lambda (_%g200774200791%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200774200791%_))
                      (let ((_%e200776200794%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200774200791%_))))
                        (let ((_%hd200777200798%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200776200794%_)))
                              (_%tl200778200801%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200776200794%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200778200801%_))
                              (let ((_%e200779200804%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200778200801%_))))
                                (let ((_%hd200780200808%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200779200804%_)))
                                      (_%tl200781200811%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200779200804%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200781200811%_))
                                      ((lambda (_%L200814%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L200814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd200780200808%_)
                                      (_%g200773200787%_ _%g200774200791%_))))
                              (_%g200773200787%_ _%g200774200791%_))))
                      (_%g200773200787%_ _%g200774200791%_)))))
          (_%g200772200828%_ _%$stx200769%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx200832%_)
        (let* ((_%g200836200858%_
                (lambda (_%g200837200854%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200837200854%_))))
               (_%g200835200927%_
                (lambda (_%g200837200862%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200837200862%_))
                      (let ((_%e200841200865%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200837200862%_))))
                        (let ((_%hd200842200869%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200841200865%_)))
                              (_%tl200843200872%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200841200865%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200843200872%_))
                              (let ((_%e200844200875%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200843200872%_))))
                                (let ((_%hd200845200879%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200844200875%_)))
                                      (_%tl200846200882%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200844200875%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200846200882%_))
                                      (let ((_%e200847200885%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200846200882%_))))
                                        (let ((_%hd200848200889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200847200885%_)))
                                              (_%tl200849200892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200847200885%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200849200892%_))
                                              (let ((_%e200850200895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200849200892%_))))
                                                (let ((_%hd200851200899%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200850200895%_)))
                                                      (_%tl200852200902%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200850200895%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200852200902%_))
                                                      ((lambda (_%L200905%_
                                                                _%L200907%_
                                                                _%L200908%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L200908%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200907%_ '()))
                                   (cons _%L200905%_ '())))))
               _%hd200851200899%_
               _%hd200848200889%_
               _%hd200845200879%_)
              (_%g200836200858%_ _%g200837200862%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200836200858%_
                                               _%g200837200862%_))))
                                      (_%g200836200858%_ _%g200837200862%_))))
                              (_%g200836200858%_ _%g200837200862%_))))
                      (_%g200836200858%_ _%g200837200862%_)))))
          (_%g200835200927%_ _%$stx200832%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx200931%_)
        (let* ((_%g200935200957%_
                (lambda (_%g200936200953%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200936200953%_))))
               (_%g200934201026%_
                (lambda (_%g200936200961%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200936200961%_))
                      (let ((_%e200940200964%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200936200961%_))))
                        (let ((_%hd200941200968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200940200964%_)))
                              (_%tl200942200971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200940200964%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200942200971%_))
                              (let ((_%e200943200974%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200942200971%_))))
                                (let ((_%hd200944200978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200943200974%_)))
                                      (_%tl200945200981%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200943200974%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200945200981%_))
                                      (let ((_%e200946200984%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200945200981%_))))
                                        (let ((_%hd200947200988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200946200984%_)))
                                              (_%tl200948200991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200946200984%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200948200991%_))
                                              (let ((_%e200949200994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200948200991%_))))
                                                (let ((_%hd200950200998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200949200994%_)))
                                                      (_%tl200951201001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200949200994%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200951201001%_))
                                                      ((lambda (_%L201004%_
                                                                _%L201006%_
                                                                _%L201007%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L201007%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L201006%_ '()))
                                   (cons _%L201004%_ '())))))
               _%hd200950200998%_
               _%hd200947200988%_
               _%hd200944200978%_)
              (_%g200935200957%_ _%g200936200961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200935200957%_
                                               _%g200936200961%_))))
                                      (_%g200935200957%_ _%g200936200961%_))))
                              (_%g200935200957%_ _%g200936200961%_))))
                      (_%g200935200957%_ _%g200936200961%_)))))
          (_%g200934201026%_ _%$stx200931%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx201030%_)
        (let* ((_%g201034201048%_
                (lambda (_%g201035201044%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201035201044%_))))
               (_%g201033201089%_
                (lambda (_%g201035201052%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201035201052%_))
                      (let ((_%e201037201055%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201035201052%_))))
                        (let ((_%hd201038201059%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201037201055%_)))
                              (_%tl201039201062%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201037201055%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201039201062%_))
                              (let ((_%e201040201065%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201039201062%_))))
                                (let ((_%hd201041201069%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201040201065%_)))
                                      (_%tl201042201072%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201040201065%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201042201072%_))
                                      ((lambda (_%L201075%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L201075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd201041201069%_)
                                      (_%g201034201048%_ _%g201035201052%_))))
                              (_%g201034201048%_ _%g201035201052%_))))
                      (_%g201034201048%_ _%g201035201052%_)))))
          (_%g201033201089%_ _%$stx201030%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx201093%_)
        (let* ((_%g201097201115%_
                (lambda (_%g201098201111%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201098201111%_))))
               (_%g201096201170%_
                (lambda (_%g201098201119%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201098201119%_))
                      (let ((_%e201101201122%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201098201119%_))))
                        (let ((_%hd201102201126%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201101201122%_)))
                              (_%tl201103201129%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201101201122%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201103201129%_))
                              (let ((_%e201104201132%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201103201129%_))))
                                (let ((_%hd201105201136%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201104201132%_)))
                                      (_%tl201106201139%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201104201132%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201106201139%_))
                                      (let ((_%e201107201142%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201106201139%_))))
                                        (let ((_%hd201108201146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201107201142%_)))
                                              (_%tl201109201149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201107201142%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201109201149%_))
                                              ((lambda (_%L201152%_
                                                        _%L201154%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201154%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L201152%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd201108201146%_
                                               _%hd201105201136%_)
                                              (_%g201097201115%_
                                               _%g201098201119%_))))
                                      (_%g201097201115%_ _%g201098201119%_))))
                              (_%g201097201115%_ _%g201098201119%_))))
                      (_%g201097201115%_ _%g201098201119%_)))))
          (_%g201096201170%_ _%$stx201093%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx201174%_)
        (let* ((_%__stx205516205517%_ _%$stx201174%_)
               (_%g201181201242%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205516205517%_)))))
          (let ((_%__kont205519205520%_
                 (lambda (_%L201480%_ _%L201482%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201482%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201480%_ '()))
                                     '())))))
                (_%__kont205521205522%_
                 (lambda (_%L201419%_ _%L201421%_ _%L201422%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201422%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201421%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L201419%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont205523205524%_
                 (lambda (_%L201343%_ _%L201345%_)
                   (cons _%L201345%_ (cons _%L201343%_ (cons '#f '())))))
                (_%__kont205525205526%_
                 (lambda (_%L201293%_ _%L201295%_ _%L201296%_)
                   (cons _%L201296%_
                         (cons _%L201295%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L201293%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx205516205517%_))
                (let ((_%e201185201450%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx205516205517%_))))
                  (let ((_%tl201187201457%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201185201450%_)))
                        (_%hd201186201454%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201185201450%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl201187201457%_))
                        (let ((_%e201188201460%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl201187201457%_))))
                          (let ((_%tl201190201467%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201188201460%_)))
                                (_%hd201189201464%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201188201460%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201190201467%_))
                                (let ((_%e201191201470%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201190201467%_))))
                                  (let ((_%tl201193201477%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201191201470%_)))
                                        (_%hd201192201474%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201191201470%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201193201477%_))
                                        (_%__kont205519205520%_
                                         _%hd201192201474%_
                                         _%hd201189201464%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl201193201477%_))
                                            (let ((_%e201206201395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl201193201477%_))))
                                              (let ((_%tl201208201402%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201206201395%_)))
                                                    (_%hd201207201399%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201206201395%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd201207201399%_))
                                                    (let ((_%e201209201405%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd201207201399%_))))
                                                      (if (equal? _%e201209201405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201208201402%_))
                      (let ((_%e201210201409%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201208201402%_))))
                        (let ((_%tl201212201416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201210201409%_)))
                              (_%hd201211201413%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201210201409%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201212201416%_))
                              (_%__kont205521205522%_
                               _%hd201211201413%_
                               _%hd201192201474%_
                               _%hd201189201464%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd201192201474%_))
                                  (let ((_%e201233201279%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd201192201474%_))))
                                    (declare (not safe))
                                    (_%g201181201242%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201181201242%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd201192201474%_))
                          (let ((_%e201233201279%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd201192201474%_))))
                            (if (equal? _%e201233201279%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl201208201402%_))
                                    (_%__kont205525205526%_
                                     _%hd201207201399%_
                                     _%hd201189201464%_
                                     _%hd201186201454%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g201181201242%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g201181201242%_))))
                          (let () (declare (not safe)) (_%g201181201242%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd201192201474%_))
                      (let ((_%e201233201279%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd201192201474%_))))
                        (if (equal? _%e201233201279%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201208201402%_))
                                (_%__kont205525205526%_
                                 _%hd201207201399%_
                                 _%hd201189201464%_
                                 _%hd201186201454%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g201181201242%_)))
                            (let () (declare (not safe)) (_%g201181201242%_))))
                      (let () (declare (not safe)) (_%g201181201242%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd201192201474%_))
                                                        (let ((_%e201233201279%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd201192201474%_))))
                  (if (equal? _%e201233201279%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201208201402%_))
                          (_%__kont205525205526%_
                           _%hd201207201399%_
                           _%hd201189201464%_
                           _%hd201186201454%_)
                          (let () (declare (not safe)) (_%g201181201242%_)))
                      (let () (declare (not safe)) (_%g201181201242%_))))
                (let () (declare (not safe)) (_%g201181201242%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd201192201474%_))
                                                (let ((_%e201233201279%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd201192201474%_))))
                                                  (declare (not safe))
                                                  (_%g201181201242%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g201181201242%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl201190201467%_))
                                    (_%__kont205523205524%_
                                     _%hd201189201464%_
                                     _%hd201186201454%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g201181201242%_))))))
                        (let () (declare (not safe)) (_%g201181201242%_)))))
                (let () (declare (not safe)) (_%g201181201242%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx201501%_)
        (let* ((_%g201505201534%_
                (lambda (_%g201506201530%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201506201530%_))))
               (_%g201504201643%_
                (lambda (_%g201506201538%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201506201538%_))
                      (let ((_%e201508201541%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201506201538%_))))
                        (let ((_%hd201509201545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201508201541%_)))
                              (_%tl201510201548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201508201541%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201510201548%_))
                              (let ((_g206146_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201510201548%_
                                        '0))))
                                (begin
                                  (let ((_g206147_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g206146_)
                                               (##vector-length _g206146_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g206147_ 2)))
                                        (error "Context expects 2 values"
                                               _g206147_)))
                                  (let ((_%target201511201551%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206146_ 0)))
                                        (_%tl201513201554%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206146_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201513201554%_))
                                        (letrec ((_%loop201514201557%_
                                                  (lambda (_%hd201512201561%_
                                                           _%clause201518201564%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201512201561%_))
                                                        (let ((_%e201515201567%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201512201561%_))))
                  (let ((_%lp-hd201516201571%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201515201567%_)))
                        (_%lp-tl201517201574%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201515201567%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd201516201571%_))
                        (let ((_g206148_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd201516201571%_
                                  '0))))
                          (begin
                            (let ((_g206149_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g206148_)
                                         (##vector-length _g206148_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g206149_ 2)))
                                  (error "Context expects 2 values"
                                         _g206149_)))
                            (let ((_%target201520201577%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g206148_ 0)))
                                  (_%tl201522201580%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g206148_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201522201580%_))
                                  (letrec ((_%loop201523201583%_
                                            (lambda (_%hd201521201587%_
                                                     _%clause201527201590%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd201521201587%_))
                                                  (let ((_%e201524201593%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd201521201587%_))))
                                                    (let ((_%lp-hd201525201597%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201524201593%_)))
                                                          (_%lp-tl201526201600%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201524201593%_))))
                                                      (_%loop201523201583%_
                                                       _%lp-tl201526201600%_
                                                       (cons _%lp-hd201525201597%_
                                                             _%clause201527201590%_))))
                                                  (let ((_%clause201528201603%_
                                                         (reverse _%clause201527201590%_)))
                                                    (_%loop201514201557%_
                                                     _%lp-tl201517201574%_
                                                     (cons _%clause201528201603%_
                                                           _%clause201518201564%_)))))))
                                    (_%loop201523201583%_
                                     _%target201520201577%_
                                     '()))
                                  (_%g201505201534%_ _%g201506201538%_)))))
                        (_%g201505201534%_ _%g201506201538%_))))
                (let ((_%clause201519201607%_
                       (reverse _%clause201518201564%_)))
                  ((lambda (_%L201611%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp206150
                                              (lambda (_%g201626201631%_
                                                       _%g201627201634%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp206151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g201628201637%_ _%g201629201640%_)
                             (cons _%g201628201637%_ _%g201629201640%_))))
                      (declare (not safe))
                      (__foldr1 __tmp206151 '() _%g201626201631%_)))
              _%g201627201634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp206150
                                          '()
                                          _%L201611%_)))
                                 '())))
                   _%clause201519201607%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201514201557%_
                                           _%target201511201551%_
                                           '()))
                                        (_%g201505201534%_
                                         _%g201506201538%_)))))
                              (_%g201505201534%_ _%g201506201538%_))))
                      (_%g201505201534%_ _%g201506201538%_)))))
          (_%g201504201643%_ _%$stx201501%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx201649%_)
        (let* ((_%g201653201671%_
                (lambda (_%g201654201667%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201654201667%_))))
               (_%g201652201726%_
                (lambda (_%g201654201675%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201654201675%_))
                      (let ((_%e201657201678%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201654201675%_))))
                        (let ((_%hd201658201682%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201657201678%_)))
                              (_%tl201659201685%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201657201678%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201659201685%_))
                              (let ((_%e201660201688%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201659201685%_))))
                                (let ((_%hd201661201692%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201660201688%_)))
                                      (_%tl201662201695%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201660201688%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201662201695%_))
                                      (let ((_%e201663201698%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201662201695%_))))
                                        (let ((_%hd201664201702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201663201698%_)))
                                              (_%tl201665201705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201663201698%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201665201705%_))
                                              ((lambda (_%L201708%_
                                                        _%L201710%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201710%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L201708%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd201664201702%_
                                               _%hd201661201692%_)
                                              (_%g201653201671%_
                                               _%g201654201675%_))))
                                      (_%g201653201671%_ _%g201654201675%_))))
                              (_%g201653201671%_ _%g201654201675%_))))
                      (_%g201653201671%_ _%g201654201675%_)))))
          (_%g201652201726%_ _%$stx201649%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx201730%_)
        (let* ((_%g201734201752%_
                (lambda (_%g201735201748%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201735201748%_))))
               (_%g201733201807%_
                (lambda (_%g201735201756%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201735201756%_))
                      (let ((_%e201738201759%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201735201756%_))))
                        (let ((_%hd201739201763%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201738201759%_)))
                              (_%tl201740201766%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201738201759%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201740201766%_))
                              (let ((_%e201741201769%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201740201766%_))))
                                (let ((_%hd201742201773%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201741201769%_)))
                                      (_%tl201743201776%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201741201769%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201743201776%_))
                                      (let ((_%e201744201779%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201743201776%_))))
                                        (let ((_%hd201745201783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201744201779%_)))
                                              (_%tl201746201786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201744201779%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201746201786%_))
                                              ((lambda (_%L201789%_
                                                        _%L201791%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201791%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L201789%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd201745201783%_
                                               _%hd201742201773%_)
                                              (_%g201734201752%_
                                               _%g201735201756%_))))
                                      (_%g201734201752%_ _%g201735201756%_))))
                              (_%g201734201752%_ _%g201735201756%_))))
                      (_%g201734201752%_ _%g201735201756%_)))))
          (_%g201733201807%_ _%$stx201730%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx201811%_)
        (let* ((_%g201815201844%_
                (lambda (_%g201816201840%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201816201840%_))))
               (_%g201814201944%_
                (lambda (_%g201816201848%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201816201848%_))
                      (let ((_%e201819201851%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201816201848%_))))
                        (let ((_%hd201820201855%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201819201851%_)))
                              (_%tl201821201858%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201819201851%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201821201858%_))
                              (let ((_g206152_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201821201858%_
                                        '0))))
                                (begin
                                  (let ((_g206153_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g206152_)
                                               (##vector-length _g206152_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g206153_ 2)))
                                        (error "Context expects 2 values"
                                               _g206153_)))
                                  (let ((_%target201822201861%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206152_ 0)))
                                        (_%tl201824201864%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206152_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201824201864%_))
                                        (letrec ((_%loop201825201867%_
                                                  (lambda (_%hd201823201871%_
                                                           _%rule201829201874%_
                                                           _%proc201830201876%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201823201871%_))
                                                        (let ((_%e201826201879%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201823201871%_))))
                  (let ((_%lp-hd201827201883%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201826201879%_)))
                        (_%lp-tl201828201886%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201826201879%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd201827201883%_))
                        (let ((_%e201833201889%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd201827201883%_))))
                          (let ((_%hd201834201893%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201833201889%_)))
                                (_%tl201835201896%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201833201889%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201835201896%_))
                                (let ((_%e201836201899%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201835201896%_))))
                                  (let ((_%hd201837201903%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201836201899%_)))
                                        (_%tl201838201906%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201836201899%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201838201906%_))
                                        (_%loop201825201867%_
                                         _%lp-tl201828201886%_
                                         (cons _%hd201837201903%_
                                               _%rule201829201874%_)
                                         (cons _%hd201834201893%_
                                               _%proc201830201876%_))
                                        (_%g201815201844%_
                                         _%g201816201848%_))))
                                (_%g201815201844%_ _%g201816201848%_))))
                        (_%g201815201844%_ _%g201816201848%_))))
                (let ((_%rule201831201909%_ (reverse _%rule201829201874%_))
                      (_%proc201832201912%_ (reverse _%proc201830201876%_)))
                  ((lambda (_%L201915%_ _%L201917%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L201915%_
                                _%L201917%_))
                             (let ((__tmp206154
                                    (lambda (_%g201932201936%_
                                             _%g201933201939%_
                                             _%g201934201941%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g201933201939%_
                                                        (cons _%g201932201936%_
                                                              '())))
                                            _%g201934201941%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp206154
                                '()
                                _%L201915%_
                                _%L201917%_)))))
                   _%rule201831201909%_
                   _%proc201832201912%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201825201867%_
                                           _%target201822201861%_
                                           '()
                                           '()))
                                        (_%g201815201844%_
                                         _%g201816201848%_)))))
                              (_%g201815201844%_ _%g201816201848%_))))
                      (_%g201815201844%_ _%g201816201848%_)))))
          (_%g201814201944%_ _%$stx201811%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx201949%_)
        (let* ((_%g201953201971%_
                (lambda (_%g201954201967%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201954201967%_))))
               (_%g201952202026%_
                (lambda (_%g201954201975%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201954201975%_))
                      (let ((_%e201957201978%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201954201975%_))))
                        (let ((_%hd201958201982%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201957201978%_)))
                              (_%tl201959201985%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201957201978%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201959201985%_))
                              (let ((_%e201960201988%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201959201985%_))))
                                (let ((_%hd201961201992%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201960201988%_)))
                                      (_%tl201962201995%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201960201988%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201962201995%_))
                                      (let ((_%e201963201998%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201962201995%_))))
                                        (let ((_%hd201964202002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201963201998%_)))
                                              (_%tl201965202005%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201963201998%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201965202005%_))
                                              ((lambda (_%L202008%_
                                                        _%L202010%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L202010%_ '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%L202008%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L202010%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd201964202002%_
                                               _%hd201961201992%_)
                                              (_%g201953201971%_
                                               _%g201954201975%_))))
                                      (_%g201953201971%_ _%g201954201975%_))))
                              (_%g201953201971%_ _%g201954201975%_))))
                      (_%g201953201971%_ _%g201954201975%_)))))
          (_%g201952202026%_ _%$stx201949%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx202030%_)
        (let* ((_%__stx205634205635%_ _%$stx202030%_)
               (_%g202035202060%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205634205635%_)))))
          (let ((_%__kont205637205638%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont205639205640%_
                 (lambda (_%L202107%_ _%L202109%_ _%L202110%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L202110%_ (cons _%L202109%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L202107%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx205634205635%_))
                (let ((_%e202037202136%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx205634205635%_))))
                  (let ((_%tl202039202143%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202037202136%_)))
                        (_%hd202038202140%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202037202136%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl202039202143%_))
                        (_%__kont205637205638%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl202039202143%_))
                            (let ((_%e202046202077%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl202039202143%_))))
                              (let ((_%tl202048202084%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202046202077%_)))
                                    (_%hd202047202081%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202046202077%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd202047202081%_))
                                    (let ((_%e202049202087%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd202047202081%_))))
                                      (let ((_%tl202051202094%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e202049202087%_)))
                                            (_%hd202050202091%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e202049202087%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202051202094%_))
                                            (let ((_%e202052202097%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl202051202094%_))))
                                              (let ((_%tl202054202104%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202052202097%_)))
                                                    (_%hd202053202101%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202052202097%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl202054202104%_))
                                                    (_%__kont205639205640%_
                                                     _%tl202048202084%_
                                                     _%hd202053202101%_
                                                     _%hd202050202091%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g202035202060%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g202035202060%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g202035202060%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g202035202060%_))))))
                (let () (declare (not safe)) (_%g202035202060%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx202154%_)
        (let* ((_%__stx205678205679%_ _%$stx202154%_)
               (_%g202159202190%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205678205679%_)))))
          (let ((_%__kont205681205682%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont205683205684%_
                 (lambda (_%L202257%_ _%L202259%_ _%L202260%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L202260%_
                                           (let ((__tmp206155
                                                  (lambda (_%g202280202283%_
                                                           _%g202281202286%_)
                                                    (cons _%g202280202283%_
                                                          _%g202281202286%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp206155
                                              '()
                                              _%L202259%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L202257%_)
                                     '()))))))
            (let ((_%__match205721205722%_
                   (lambda (_%e202167202197%_
                            _%hd202168202201%_
                            _%tl202169202204%_
                            _%e202170202207%_
                            _%hd202171202211%_
                            _%tl202172202214%_
                            _%e202173202217%_
                            _%hd202174202221%_
                            _%tl202175202224%_
                            _%__splice205685205686%_
                            _%target202176202227%_
                            _%tl202178202230%_)
                     (letrec ((_%loop202179202233%_
                               (lambda (_%hd202177202237%_ _%sig202183202240%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd202177202237%_))
                                     (let ((_%e202180202243%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd202177202237%_))))
                                       (let ((_%lp-tl202182202250%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e202180202243%_)))
                                             (_%lp-hd202181202247%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e202180202243%_))))
                                         (_%loop202179202233%_
                                          _%lp-tl202182202250%_
                                          (cons _%lp-hd202181202247%_
                                                _%sig202183202240%_))))
                                     (let ((_%sig202184202253%_
                                            (reverse _%sig202183202240%_)))
                                       (_%__kont205683205684%_
                                        _%tl202172202214%_
                                        _%sig202184202253%_
                                        _%hd202174202221%_))))))
                       (_%loop202179202233%_ _%target202176202227%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205678205679%_))
                  (let ((_%e202161202296%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx205678205679%_))))
                    (let ((_%tl202163202303%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202161202296%_)))
                          (_%hd202162202300%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202161202296%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202163202303%_))
                          (_%__kont205681205682%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202163202303%_))
                              (let ((_%e202170202207%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202163202303%_))))
                                (let ((_%tl202172202214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202170202207%_)))
                                      (_%hd202171202211%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202170202207%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd202171202211%_))
                                      (let ((_%e202173202217%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd202171202211%_))))
                                        (let ((_%tl202175202224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202173202217%_)))
                                              (_%hd202174202221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202173202217%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl202175202224%_))
                                              (let ((_%__splice205685205686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl202175202224%_
                                                        '0))))
                                                (let ((_%tl202178202230%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205685205686%_
                                                          '1)))
                                                      (_%target202176202227%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205685205686%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202178202230%_))
                                                      (_%__match205721205722%_
                                                       _%e202161202296%_
                                                       _%hd202162202300%_
                                                       _%tl202163202303%_
                                                       _%e202170202207%_
                                                       _%hd202171202211%_
                                                       _%tl202172202214%_
                                                       _%e202173202217%_
                                                       _%hd202174202221%_
                                                       _%tl202175202224%_
                                                       _%__splice205685205686%_
                                                       _%target202176202227%_
                                                       _%tl202178202230%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g202159202190%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202159202190%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202159202190%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g202159202190%_))))))
                  (let () (declare (not safe)) (_%g202159202190%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx202315%_)
        (let* ((_%__stx205724205725%_ _%$stx202315%_)
               (_%g202320202367%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205724205725%_)))))
          (let ((_%__kont205727205728%_
                 (lambda (_%L202529%_ _%L202531%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L202531%_
                               (let ((__tmp206156
                                      (lambda (_%g202551202554%_
                                               _%g202552202557%_)
                                        (cons _%g202551202554%_
                                              _%g202552202557%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp206156 '() _%L202529%_))))))
                (_%__kont205731205732%_
                 (lambda (_%L202424%_ _%L202426%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L202426%_
                               (let ((__tmp206157
                                      (lambda (_%g202443202446%_
                                               _%g202444202449%_)
                                        (cons _%g202443202446%_
                                              _%g202444202449%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp206157 '() _%L202424%_)))))))
            (let* ((_%__match205791205792%_
                    (lambda (_%e202347202374%_
                             _%hd202348202378%_
                             _%tl202349202381%_
                             _%e202350202384%_
                             _%hd202351202388%_
                             _%tl202352202391%_
                             _%__splice205733205734%_
                             _%target202353202394%_
                             _%tl202355202397%_)
                      (letrec ((_%loop202356202400%_
                                (lambda (_%hd202354202404%_
                                         _%sig202360202407%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd202354202404%_))
                                      (let ((_%e202357202410%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd202354202404%_))))
                                        (let ((_%lp-tl202359202417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202357202410%_)))
                                              (_%lp-hd202358202414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202357202410%_))))
                                          (_%loop202356202400%_
                                           _%lp-tl202359202417%_
                                           (cons _%lp-hd202358202414%_
                                                 _%sig202360202407%_))))
                                      (let ((_%sig202361202420%_
                                             (reverse _%sig202360202407%_)))
                                        (_%__kont205731205732%_
                                         _%sig202361202420%_
                                         _%hd202351202388%_))))))
                        (_%loop202356202400%_ _%target202353202394%_ '()))))
                   (_%__match205783205784%_
                    (lambda (_%e202347202374%_
                             _%hd202348202378%_
                             _%tl202349202381%_
                             _%e202350202384%_
                             _%hd202351202388%_
                             _%tl202352202391%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl202352202391%_))
                          (let ((_%__splice205733205734%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl202352202391%_
                                    '0))))
                            (let ((_%tl202355202397%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice205733205734%_
                                      '1)))
                                  (_%target202353202394%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice205733205734%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl202355202397%_))
                                  (_%__match205791205792%_
                                   _%e202347202374%_
                                   _%hd202348202378%_
                                   _%tl202349202381%_
                                   _%e202350202384%_
                                   _%hd202351202388%_
                                   _%tl202352202391%_
                                   _%__splice205733205734%_
                                   _%target202353202394%_
                                   _%tl202355202397%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g202320202367%_)))))
                          (let () (declare (not safe)) (_%g202320202367%_)))))
                   (_%__match205771205772%_
                    (lambda (_%e202324202459%_
                             _%hd202325202463%_
                             _%tl202326202466%_
                             _%e202327202469%_
                             _%hd202328202473%_
                             _%tl202329202476%_
                             _%e202330202479%_
                             _%hd202331202483%_
                             _%tl202332202486%_
                             _%e202333202489%_
                             _%hd202334202493%_
                             _%tl202335202496%_
                             _%__splice205729205730%_
                             _%target202336202499%_
                             _%tl202338202502%_)
                      (letrec ((_%loop202339202505%_
                                (lambda (_%hd202337202509%_
                                         _%sig202343202512%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd202337202509%_))
                                      (let ((_%e202340202515%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd202337202509%_))))
                                        (let ((_%lp-tl202342202522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202340202515%_)))
                                              (_%lp-hd202341202519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202340202515%_))))
                                          (_%loop202339202505%_
                                           _%lp-tl202342202522%_
                                           (cons _%lp-hd202341202519%_
                                                 _%sig202343202512%_))))
                                      (let ((_%sig202344202525%_
                                             (reverse _%sig202343202512%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl202332202486%_))
                                            (_%__kont205727205728%_
                                             _%sig202344202525%_
                                             _%hd202328202473%_)
                                            (_%__match205783205784%_
                                             _%e202324202459%_
                                             _%hd202325202463%_
                                             _%tl202326202466%_
                                             _%e202327202469%_
                                             _%hd202328202473%_
                                             _%tl202329202476%_)))))))
                        (_%loop202339202505%_ _%target202336202499%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205724205725%_))
                  (let ((_%e202324202459%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx205724205725%_))))
                    (let ((_%tl202326202466%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202324202459%_)))
                          (_%hd202325202463%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202324202459%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202326202466%_))
                          (let ((_%e202327202469%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl202326202466%_))))
                            (let ((_%tl202329202476%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202327202469%_)))
                                  (_%hd202328202473%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202327202469%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202329202476%_))
                                  (let ((_%e202330202479%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl202329202476%_))))
                                    (let ((_%tl202332202486%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202330202479%_)))
                                          (_%hd202331202483%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202330202479%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd202331202483%_))
                                          (let ((_%e202333202489%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd202331202483%_))))
                                            (let ((_%tl202335202496%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202333202489%_)))
                                                  (_%hd202334202493%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202333202489%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd202334202493%_))
                                                  (if (let ((__tmp206158
                                                             |gxc[1]#_g206159_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp206158
                                                         _%hd202334202493%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl202335202496%_))
                                                          (let ((_%__splice205729205730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl202335202496%_ '0))))
                    (let ((_%tl202338202502%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice205729205730%_ '1)))
                          (_%target202336202499%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice205729205730%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202338202502%_))
                          (_%__match205771205772%_
                           _%e202324202459%_
                           _%hd202325202463%_
                           _%tl202326202466%_
                           _%e202327202469%_
                           _%hd202328202473%_
                           _%tl202329202476%_
                           _%e202330202479%_
                           _%hd202331202483%_
                           _%tl202332202486%_
                           _%e202333202489%_
                           _%hd202334202493%_
                           _%tl202335202496%_
                           _%__splice205729205730%_
                           _%target202336202499%_
                           _%tl202338202502%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202329202476%_))
                              (let ((_%__splice205733205734%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202329202476%_
                                        '0))))
                                (let ((_%tl202355202397%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice205733205734%_
                                          '1)))
                                      (_%target202353202394%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice205733205734%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202355202397%_))
                                      (_%__match205791205792%_
                                       _%e202324202459%_
                                       _%hd202325202463%_
                                       _%tl202326202466%_
                                       _%e202327202469%_
                                       _%hd202328202473%_
                                       _%tl202329202476%_
                                       _%__splice205733205734%_
                                       _%target202353202394%_
                                       _%tl202355202397%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g202320202367%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g202320202367%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl202329202476%_))
                      (let ((_%__splice205733205734%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl202329202476%_
                                '0))))
                        (let ((_%tl202355202397%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205733205734%_ '1)))
                              (_%target202353202394%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205733205734%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202355202397%_))
                              (_%__match205791205792%_
                               _%e202324202459%_
                               _%hd202325202463%_
                               _%tl202326202466%_
                               _%e202327202469%_
                               _%hd202328202473%_
                               _%tl202329202476%_
                               _%__splice205733205734%_
                               _%target202353202394%_
                               _%tl202355202397%_)
                              (let ()
                                (declare (not safe))
                                (_%g202320202367%_)))))
                      (let () (declare (not safe)) (_%g202320202367%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl202329202476%_))
                  (let ((_%__splice205733205734%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl202329202476%_ '0))))
                    (let ((_%tl202355202397%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice205733205734%_ '1)))
                          (_%target202353202394%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice205733205734%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202355202397%_))
                          (_%__match205791205792%_
                           _%e202324202459%_
                           _%hd202325202463%_
                           _%tl202326202466%_
                           _%e202327202469%_
                           _%hd202328202473%_
                           _%tl202329202476%_
                           _%__splice205733205734%_
                           _%target202353202394%_
                           _%tl202355202397%_)
                          (let () (declare (not safe)) (_%g202320202367%_)))))
                  (let () (declare (not safe)) (_%g202320202367%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl202329202476%_))
                                                      (let ((_%__splice205733205734%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl202329202476%_ '0))))
                (let ((_%tl202355202397%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice205733205734%_ '1)))
                      (_%target202353202394%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice205733205734%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl202355202397%_))
                      (_%__match205791205792%_
                       _%e202324202459%_
                       _%hd202325202463%_
                       _%tl202326202466%_
                       _%e202327202469%_
                       _%hd202328202473%_
                       _%tl202329202476%_
                       _%__splice205733205734%_
                       _%target202353202394%_
                       _%tl202355202397%_)
                      (let () (declare (not safe)) (_%g202320202367%_)))))
              (let () (declare (not safe)) (_%g202320202367%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl202329202476%_))
                                              (let ((_%__splice205733205734%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl202329202476%_
                                                        '0))))
                                                (let ((_%tl202355202397%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205733205734%_
                                                          '1)))
                                                      (_%target202353202394%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205733205734%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202355202397%_))
                                                      (_%__match205791205792%_
                                                       _%e202324202459%_
                                                       _%hd202325202463%_
                                                       _%tl202326202466%_
                                                       _%e202327202469%_
                                                       _%hd202328202473%_
                                                       _%tl202329202476%_
                                                       _%__splice205733205734%_
                                                       _%target202353202394%_
                                                       _%tl202355202397%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g202320202367%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202320202367%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl202329202476%_))
                                      (let ((_%__splice205733205734%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl202329202476%_
                                                '0))))
                                        (let ((_%tl202355202397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205733205734%_
                                                  '1)))
                                              (_%target202353202394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205733205734%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202355202397%_))
                                              (_%__match205791205792%_
                                               _%e202324202459%_
                                               _%hd202325202463%_
                                               _%tl202326202466%_
                                               _%e202327202469%_
                                               _%hd202328202473%_
                                               _%tl202329202476%_
                                               _%__splice205733205734%_
                                               _%target202353202394%_
                                               _%tl202355202397%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g202320202367%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202320202367%_))))))
                          (let () (declare (not safe)) (_%g202320202367%_)))))
                  (let () (declare (not safe)) (_%g202320202367%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx203714%_ _%id203716%_)
        (let ((_%proc203720%_
               (let ((__tmp206160
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id203716%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp206160))))
          (if (procedure? _%proc203720%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx203714%_
                 _%id203716%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx203705%_ _%id203707%_)
        (let ((_%klass203711%_
               (let ((__tmp206161
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id203707%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp206161))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass203711%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx203705%_
                 _%id203707%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx202955%_ _%proc202957%_ _%sig202958%_)
        (letrec ((_%signature-arity202960%_
                  (lambda (_%args203637%_)
                    (let _%loop203640%_ ((_%rest203643%_ _%args203637%_)
                                         (_%count203645%_ '0))
                      (let* ((_%rest203646203657%_ _%rest203643%_)
                             (_%E203650203663%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest203646203657%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K203653203694%_
                               (lambda (_%rest203691%_)
                                 (_%loop203640%_
                                  _%rest203691%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count203645%_ '1)))))
                              (_%K203652203683%_ (lambda () _%count203645%_))
                              (_%K203651203671%_
                               (lambda () (cons _%count203645%_ '()))))
                          (let ((_%try-match203648203687%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest203646203657%_))
                                       (_%K203652203683%_)
                                       (_%K203651203671%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest203646203657%_))
                                (let* ((_%tl203655203698%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest203646203657%_)))
                                       (_%rest203702%_ _%tl203655203698%_))
                                  (_%K203653203694%_ _%rest203702%_))
                                (_%try-match203648203687%_))))))))
                 (_%make-signature202962%_
                  (lambda (_%args203519%_
                           _%return203521%_
                           _%effect203522%_
                           _%unchecked203523%_)
                    (let ((__tmp206162
                           (lambda (_%g203524203526%_)
                             (|gxc[1]#verify-class!|
                              _%ctx202955%_
                              _%g203524203526%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp206162 _%args203519%_))
                    (|gxc[1]#verify-class!| _%ctx202955%_ _%return203521%_)
                    (if _%unchecked203523%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx202955%_
                         _%unchecked203523%_)
                        '#!void)
                    (let ((_%arity203530%_
                           (_%signature-arity202960%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args203519%_)))))
                      (if _%effect203522%_
                          (let ((_%effect203533%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect203522%_))))
                            (if (and (list? _%effect203533%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect203533%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx202955%_
                                   _%proc202957%_
                                   _%effect203533%_))))
                          '#!void)
                      (cons _%arity203530%_
                            (cons (let* ((_%g203536203559%_
                                          (lambda (_%g203537203555%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g203537203555%_))))
                                         (_%g203535203633%_
                                          (lambda (_%g203537203563%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g203537203563%_))
                                                (let ((_%e203542203566%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g203537203563%_))))
                                                  (let ((_%hd203543203570%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203542203566%_)))
                                                        (_%tl203544203573%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203542203566%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl203544203573%_))
                                                        (let ((_%e203545203576%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl203544203573%_))))
                  (let ((_%hd203546203580%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203545203576%_)))
                        (_%tl203547203583%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203545203576%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl203547203583%_))
                        (let ((_%e203548203586%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl203547203583%_))))
                          (let ((_%hd203549203590%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203548203586%_)))
                                (_%tl203550203593%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203548203586%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203550203593%_))
                                (let ((_%e203551203596%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203550203593%_))))
                                  (let ((_%hd203552203600%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203551203596%_)))
                                        (_%tl203553203603%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203551203596%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203553203603%_))
                                        ((lambda (_%L203606%_
                                                  _%L203608%_
                                                  _%L203609%_
                                                  _%L203610%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-!signature))
                                                 (cons 'arguments:
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L203610%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L203609%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L203608%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L203606%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd203552203600%_
                                         _%hd203549203590%_
                                         _%hd203546203580%_
                                         _%hd203543203570%_)
                                        (_%g203536203559%_
                                         _%g203537203563%_))))
                                (_%g203536203559%_ _%g203537203563%_))))
                        (_%g203536203559%_ _%g203537203563%_))))
                (_%g203536203559%_ _%g203537203563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g203536203559%_
                                                 _%g203537203563%_)))))
                                    (_%g203535203633%_
                                     (list _%args203519%_
                                           _%return203521%_
                                           _%effect203522%_
                                           _%unchecked203523%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx202955%_ _%proc202957%_)
          (let* ((_%__stx205802205803%_ _%sig202958%_)
                 (_%g202969203072%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx205802205803%_)))))
            (let ((_%__kont205805205806%_
                   (lambda (_%L203500%_ _%L203502%_)
                     (_%make-signature202962%_
                      _%L203502%_
                      _%L203500%_
                      '#f
                      '#f)))
                  (_%__kont205807205808%_
                   (lambda (_%L203451%_ _%L203453%_ _%L203454%_)
                     (_%make-signature202962%_
                      _%L203454%_
                      _%L203453%_
                      _%L203451%_
                      '#f)))
                  (_%__kont205809205810%_
                   (lambda (_%L203375%_ _%L203377%_ _%L203378%_)
                     (_%make-signature202962%_
                      _%L203378%_
                      _%L203377%_
                      _%L203375%_
                      (let ((__tmp206163
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc202957%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp206163)))))
                  (_%__kont205811205812%_
                   (lambda (_%L203281%_ _%L203283%_ _%L203284%_ _%L203285%_)
                     (_%make-signature202962%_
                      _%L203285%_
                      _%L203284%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L203281%_)))))
                  (_%__kont205813205814%_
                   (lambda (_%L203188%_ _%L203190%_)
                     (_%make-signature202962%_
                      _%L203190%_
                      _%L203188%_
                      '#f
                      (let ((__tmp206164
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc202957%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp206164)))))
                  (_%__kont205815205816%_
                   (lambda (_%L203123%_ _%L203125%_ _%L203126%_)
                     (_%make-signature202962%_
                      _%L203126%_
                      _%L203125%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L203123%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205802205803%_))
                  (let ((_%e202973203480%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx205802205803%_))))
                    (let ((_%tl202975203487%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202973203480%_)))
                          (_%hd202974203484%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202973203480%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202975203487%_))
                          (let ((_%e202976203490%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl202975203487%_))))
                            (let ((_%tl202978203497%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202976203490%_)))
                                  (_%hd202977203494%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202976203490%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl202978203497%_))
                                  (_%__kont205805205806%_
                                   _%hd202977203494%_
                                   _%hd202974203484%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202978203497%_))
                                      (let ((_%e202988203427%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202978203497%_))))
                                        (let ((_%tl202990203434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202988203427%_)))
                                              (_%hd202989203431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202988203427%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd202989203431%_))
                                              (let ((_%e202991203437%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd202989203431%_))))
                                                (if (equal? _%e202991203437%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202990203434%_))
                                                        (let ((_%e202992203441%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl202990203434%_))))
                  (let ((_%tl202994203448%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202992203441%_)))
                        (_%hd202993203445%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202992203441%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl202994203448%_))
                        (_%__kont205807205808%_
                         _%hd202993203445%_
                         _%hd202977203494%_
                         _%hd202974203484%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl202994203448%_))
                            (let ((_%e203011203361%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl202994203448%_))))
                              (let ((_%tl203013203368%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203011203361%_)))
                                    (_%hd203012203365%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203011203361%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd203012203365%_))
                                    (let ((_%e203014203371%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd203012203365%_))))
                                      (if (equal? _%e203014203371%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203013203368%_))
                                              (_%__kont205809205810%_
                                               _%hd202993203445%_
                                               _%hd202977203494%_
                                               _%hd202974203484%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203013203368%_))
                                                  (let ((_%e203036203271%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl203013203368%_))))
                                                    (let ((_%tl203038203278%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203036203271%_)))
                                                          (_%hd203037203275%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203036203271%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203038203278%_))
                                                          (_%__kont205811205812%_
                                                           _%hd203037203275%_
                                                           _%hd202993203445%_
                                                           _%hd202977203494%_
                                                           _%hd202974203484%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g202969203072%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202969203072%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202969203072%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g202969203072%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g202969203072%_))))))
                (let () (declare (not safe)) (_%g202969203072%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e202991203437%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl202990203434%_))
                                                            (_%__kont205813205814%_
                                                             _%hd202977203494%_
                                                             _%hd202974203484%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202990203434%_))
                        (let ((_%e203064203113%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl202990203434%_))))
                          (let ((_%tl203066203120%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203064203113%_)))
                                (_%hd203065203117%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203064203113%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl203066203120%_))
                                (_%__kont205815205816%_
                                 _%hd203065203117%_
                                 _%hd202977203494%_
                                 _%hd202974203484%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g202969203072%_)))))
                        (let () (declare (not safe)) (_%g202969203072%_))))
                (let () (declare (not safe)) (_%g202969203072%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g202969203072%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202969203072%_))))))
                          (let () (declare (not safe)) (_%g202969203072%_)))))
                  (let () (declare (not safe)) (_%g202969203072%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig202566%_)
        (let* ((_%g202569202649%_
                (lambda (_%g202570202645%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202570202645%_))))
               (_%g202568202951%_
                (lambda (_%g202570202653%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202570202653%_))
                      (let ((_%e202576202656%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202570202653%_))))
                        (let ((_%hd202577202660%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202576202656%_)))
                              (_%tl202578202663%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202576202656%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202578202663%_))
                              (let ((_%e202579202666%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202578202663%_))))
                                (let ((_%hd202580202670%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202579202666%_)))
                                      (_%tl202581202673%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202579202666%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd202580202670%_))
                                      (let ((_%e202582202676%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd202580202670%_))))
                                        (if (equal? _%e202582202676%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl202581202673%_))
                                                (let ((_%e202583202680%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl202581202673%_))))
                                                  (let ((_%hd202584202684%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202583202680%_)))
                                                        (_%tl202585202687%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202583202680%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202584202684%_))
                                                        (let ((_%e202586202690%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202584202684%_))))
                  (let ((_%hd202587202694%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202586202690%_)))
                        (_%tl202588202697%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202586202690%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd202587202694%_))
                        (if (let ((__tmp206165 |gxc[1]#_g206166_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp206165
                               _%hd202587202694%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202588202697%_))
                                (let ((_%e202589202700%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202588202697%_))))
                                  (let ((_%hd202590202704%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202589202700%_)))
                                        (_%tl202591202707%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202589202700%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202591202707%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202585202687%_))
                                            (let ((_%e202592202710%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl202585202687%_))))
                                              (let ((_%hd202593202714%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202592202710%_)))
                                                    (_%tl202594202717%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202592202710%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd202593202714%_))
                                                    (let ((_%e202595202720%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd202593202714%_))))
                                                      (if (equal? _%e202595202720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl202594202717%_))
                      (let ((_%e202596202724%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl202594202717%_))))
                        (let ((_%hd202597202728%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202596202724%_)))
                              (_%tl202598202731%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202596202724%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd202597202728%_))
                              (let ((_%e202599202734%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd202597202728%_))))
                                (let ((_%hd202600202738%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202599202734%_)))
                                      (_%tl202601202741%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202599202734%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd202600202738%_))
                                      (if (let ((__tmp206167
                                                 |gxc[1]#_g206168_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp206167
                                             _%hd202600202738%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202601202741%_))
                                              (let ((_%e202602202744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202601202741%_))))
                                                (let ((_%hd202603202748%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202602202744%_)))
                                                      (_%tl202604202751%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202602202744%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202604202751%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl202598202731%_))
                                                          (let ((_%e202605202754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl202598202731%_))))
                    (let ((_%hd202606202758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202605202754%_)))
                          (_%tl202607202761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202605202754%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd202606202758%_))
                          (let ((_%e202608202764%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd202606202758%_))))
                            (if (equal? _%e202608202764%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl202607202761%_))
                                    (let ((_%e202609202768%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl202607202761%_))))
                                      (let ((_%hd202610202772%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e202609202768%_)))
                                            (_%tl202611202775%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e202609202768%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd202610202772%_))
                                            (let ((_%e202612202778%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd202610202772%_))))
                                              (let ((_%hd202613202782%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202612202778%_)))
                                                    (_%tl202614202785%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202612202778%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd202613202782%_))
                                                    (if (let ((__tmp206169
                                                               |gxc[1]#_g206170_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp206169
                                                           _%hd202613202782%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl202614202785%_))
                                                            (let ((_%e202615202788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl202614202785%_))))
                      (let ((_%hd202616202792%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202615202788%_)))
                            (_%tl202617202795%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202615202788%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl202617202795%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202611202775%_))
                                (let ((_%e202618202798%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202611202775%_))))
                                  (let ((_%hd202619202802%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202618202798%_)))
                                        (_%tl202620202805%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202618202798%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd202619202802%_))
                                        (let ((_%e202621202808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd202619202802%_))))
                                          (if (equal? _%e202621202808%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202620202805%_))
                                                  (let ((_%e202622202812%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl202620202805%_))))
                                                    (let ((_%hd202623202816%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202622202812%_)))
                                                          (_%tl202624202819%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202622202812%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd202623202816%_))
                                                          (let ((_%e202625202822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd202623202816%_))))
                    (let ((_%hd202626202826%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202625202822%_)))
                          (_%tl202627202829%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202625202822%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd202626202826%_))
                          (if (let ((__tmp206171 |gxc[1]#_g206172_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp206171
                                 _%hd202626202826%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202627202829%_))
                                  (let ((_%e202628202832%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl202627202829%_))))
                                    (let ((_%hd202629202836%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202628202832%_)))
                                          (_%tl202630202839%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202628202832%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202630202839%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202624202819%_))
                                              (let ((_%e202631202842%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202624202819%_))))
                                                (let ((_%hd202632202846%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202631202842%_)))
                                                      (_%tl202633202849%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202631202842%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd202632202846%_))
                                                      (let ((_%e202634202852%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd202632202846%_))))
                (if (equal? _%e202634202852%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl202633202849%_))
                        (let ((_%e202635202856%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl202633202849%_))))
                          (let ((_%hd202636202860%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202635202856%_)))
                                (_%tl202637202863%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202635202856%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd202636202860%_))
                                (let ((_%e202638202866%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd202636202860%_))))
                                  (let ((_%hd202639202870%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202638202866%_)))
                                        (_%tl202640202873%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202638202866%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd202639202870%_))
                                        (if (let ((__tmp206173
                                                   |gxc[1]#_g206174_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp206173
                                               _%hd202639202870%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl202640202873%_))
                                                (let ((_%e202641202876%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl202640202873%_))))
                                                  (let ((_%hd202642202880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202641202876%_)))
                                                        (_%tl202643202883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202641202876%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl202643202883%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl202637202863%_))
                                                            ((lambda (_%L202886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L202888%_
                              _%L202889%_
                              _%L202890%_
                              _%L202891%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L202888%_))
                           (cons _%L202888%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L202890%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L202886%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd202642202880%_
                     _%hd202629202836%_
                     _%hd202616202792%_
                     _%hd202603202748%_
                     _%hd202590202704%_)
                    (_%g202569202649%_ _%g202570202653%_))
                (_%g202569202649%_ _%g202570202653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g202569202649%_
                                                 _%g202570202653%_))
                                            (_%g202569202649%_
                                             _%g202570202653%_))
                                        (_%g202569202649%_
                                         _%g202570202653%_))))
                                (_%g202569202649%_ _%g202570202653%_))))
                        (_%g202569202649%_ _%g202570202653%_))
                    (_%g202569202649%_ _%g202570202653%_)))
              (_%g202569202649%_ _%g202570202653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202569202649%_
                                               _%g202570202653%_))
                                          (_%g202569202649%_
                                           _%g202570202653%_))))
                                  (_%g202569202649%_ _%g202570202653%_))
                              (_%g202569202649%_ _%g202570202653%_))
                          (_%g202569202649%_ _%g202570202653%_))))
                  (_%g202569202649%_ _%g202570202653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g202569202649%_
                                                   _%g202570202653%_))
                                              (_%g202569202649%_
                                               _%g202570202653%_)))
                                        (_%g202569202649%_
                                         _%g202570202653%_))))
                                (_%g202569202649%_ _%g202570202653%_))
                            (_%g202569202649%_ _%g202570202653%_))))
                    (_%g202569202649%_ _%g202570202653%_))
                (_%g202569202649%_ _%g202570202653%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g202569202649%_
                                                     _%g202570202653%_))))
                                            (_%g202569202649%_
                                             _%g202570202653%_))))
                                    (_%g202569202649%_ _%g202570202653%_))
                                (_%g202569202649%_ _%g202570202653%_)))
                          (_%g202569202649%_ _%g202570202653%_))))
                  (_%g202569202649%_ _%g202570202653%_))
              (_%g202569202649%_ _%g202570202653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202569202649%_
                                               _%g202570202653%_))
                                          (_%g202569202649%_
                                           _%g202570202653%_))
                                      (_%g202569202649%_ _%g202570202653%_))))
                              (_%g202569202649%_ _%g202570202653%_))))
                      (_%g202569202649%_ _%g202570202653%_))
                  (_%g202569202649%_ _%g202570202653%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g202569202649%_
                                                     _%g202570202653%_))))
                                            (_%g202569202649%_
                                             _%g202570202653%_))
                                        (_%g202569202649%_
                                         _%g202570202653%_))))
                                (_%g202569202649%_ _%g202570202653%_))
                            (_%g202569202649%_ _%g202570202653%_))
                        (_%g202569202649%_ _%g202570202653%_))))
                (_%g202569202649%_ _%g202570202653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g202569202649%_
                                                 _%g202570202653%_))
                                            (_%g202569202649%_
                                             _%g202570202653%_)))
                                      (_%g202569202649%_ _%g202570202653%_))))
                              (_%g202569202649%_ _%g202570202653%_))))
                      (_%g202569202649%_ _%g202570202653%_)))))
          (_%g202568202951%_ _%sig202566%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx203723%_)
        (let* ((_%g203726203744%_
                (lambda (_%g203727203740%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203727203740%_))))
               (_%g203725203799%_
                (lambda (_%g203727203748%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203727203748%_))
                      (let ((_%e203730203751%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203727203748%_))))
                        (let ((_%hd203731203755%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203730203751%_)))
                              (_%tl203732203758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203730203751%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203732203758%_))
                              (let ((_%e203733203761%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203732203758%_))))
                                (let ((_%hd203734203765%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203733203761%_)))
                                      (_%tl203735203768%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203733203761%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203735203768%_))
                                      (let ((_%e203736203771%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203735203768%_))))
                                        (let ((_%hd203737203775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203736203771%_)))
                                              (_%tl203738203778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203736203771%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203738203778%_))
                                              ((lambda (_%L203781%_
                                                        _%L203783%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L203783%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L203781%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx203723%_
                                                        _%L203783%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx203723%_
                                                        _%L203781%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L203783%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L203781%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g203726203744%_
                                                      _%g203727203748%_)))
                                               _%hd203737203775%_
                                               _%hd203734203765%_)
                                              (_%g203726203744%_
                                               _%g203727203748%_))))
                                      (_%g203726203744%_ _%g203727203748%_))))
                              (_%g203726203744%_ _%g203727203748%_))))
                      (_%g203726203744%_ _%g203727203748%_)))))
          (_%g203725203799%_ _%stx203723%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx203803%_)
        (let* ((_%g203806203830%_
                (lambda (_%g203807203826%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203807203826%_))))
               (_%g203805204113%_
                (lambda (_%g203807203834%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203807203834%_))
                      (let ((_%e203810203837%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203807203834%_))))
                        (let ((_%hd203811203841%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203810203837%_)))
                              (_%tl203812203844%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203810203837%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203812203844%_))
                              (let ((_%e203813203847%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203812203844%_))))
                                (let ((_%hd203814203851%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203813203847%_)))
                                      (_%tl203815203854%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203813203847%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203815203854%_))
                                      (let ((_g206175_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl203815203854%_
                                                '0))))
                                        (begin
                                          (let ((_g206176_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g206175_)
                                                       (##vector-length
                                                        _g206175_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g206176_ 2)))
                                                (error "Context expects 2 values"
                                                       _g206176_)))
                                          (let ((_%target203816203857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g206175_ 0)))
                                                (_%tl203818203860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g206175_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203818203860%_))
                                                (letrec ((_%loop203819203863%_
                                                          (lambda (_%hd203817203867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature203823203870%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd203817203867%_))
                        (let ((_%e203820203873%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd203817203867%_))))
                          (let ((_%lp-hd203821203877%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203820203873%_)))
                                (_%lp-tl203822203880%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203820203873%_))))
                            (_%loop203819203863%_
                             _%lp-tl203822203880%_
                             (cons _%lp-hd203821203877%_
                                   _%signature203823203870%_))))
                        (let ((_%signature203824203883%_
                               (reverse _%signature203823203870%_)))
                          ((lambda (_%L203887%_ _%L203889%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L203889%_))
                                 (let* ((_%g203907203922%_
                                         (lambda (_%g203908203918%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g203908203918%_))))
                                        (_%g203906204101%_
                                         (lambda (_%g203908203926%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g203908203926%_))
                                               (let ((_%e203911203929%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g203908203926%_))))
                                                 (let ((_%hd203912203933%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e203911203929%_)))
                                                       (_%tl203913203936%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e203911203929%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl203913203936%_))
                                                       (let ((_%e203914203939%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl203913203936%_))))
                 (let ((_%hd203915203943%_
                        (let ()
                          (declare (not safe))
                          (##car _%e203914203939%_)))
                       (_%tl203916203946%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e203914203939%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl203916203946%_))
                       ((lambda (_%L203949%_ _%L203951%_)
                          (let* ((_%g203967203975%_
                                  (lambda (_%g203968203971%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g203968203971%_))))
                                 (_%g203966204097%_
                                  (lambda (_%g203968203979%_)
                                    ((lambda (_%L203982%_)
                                       (let* ((_%unchecked203995%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L203949%_))
                                              (_%g203998204006%_
                                               (lambda (_%g203999204002%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g203999204002%_))))
                                              (_%g203997204029%_
                                               (lambda (_%g203999204010%_)
                                                 ((lambda (_%L204013%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L203982%_
                                                                (cons _%L204013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g203999204010%_))))
                                         (_%g203997204029%_
                                          (if _%unchecked203995%_
                                              (let* ((_%g204033204048%_
                                                      (lambda (_%g204034204044%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g204034204044%_))))
                                                     (_%g204032204093%_
                                                      (lambda (_%g204034204052%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g204034204052%_))
                                                            (let ((_%e204037204055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g204034204052%_))))
                      (let ((_%hd204038204059%_
                             (let ()
                               (declare (not safe))
                               (##car _%e204037204055%_)))
                            (_%tl204039204062%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e204037204055%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl204039204062%_))
                            (let ((_%e204040204065%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl204039204062%_))))
                              (let ((_%hd204041204069%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e204040204065%_)))
                                    (_%tl204042204072%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e204040204065%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl204042204072%_))
                                    ((lambda (_%L204075%_ _%L204077%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L204077%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L203951%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L204075%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd204041204069%_
                                     _%hd204038204059%_)
                                    (_%g204033204048%_ _%g204034204052%_))))
                            (_%g204033204048%_ _%g204034204052%_))))
                    (_%g204033204048%_ _%g204034204052%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g204032204093%_
                                                 _%unchecked203995%_))
                                              '(begin)))))
                                     _%g203968203979%_))))
                            (_%g203966204097%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L203889%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L203951%_ '()))
                   (cons '#f (cons 'signature: (cons _%L203949%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd203915203943%_
                        _%hd203912203933%_)
                       (_%g203907203922%_ _%g203908203926%_))))
               (_%g203907203922%_ _%g203908203926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g203907203922%_
                                                _%g203908203926%_)))))
                                   (_%g203906204101%_
                                    (|gxc[1]#parse-signature|
                                     _%stx203803%_
                                     _%L203889%_
                                     (let ((__tmp206177
                                            (lambda (_%g204104204107%_
                                                     _%g204105204110%_)
                                              (cons _%g204104204107%_
                                                    _%g204105204110%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp206177
                                        '()
                                        _%L203887%_)))))
                                 (_%g203806203830%_ _%g203807203834%_)))
                           _%signature203824203883%_
                           _%hd203814203851%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop203819203863%_
                                                   _%target203816203857%_
                                                   '()))
                                                (_%g203806203830%_
                                                 _%g203807203834%_)))))
                                      (_%g203806203830%_ _%g203807203834%_))))
                              (_%g203806203830%_ _%g203807203834%_))))
                      (_%g203806203830%_ _%g203807203834%_)))))
          (_%g203805204113%_ _%stx203803%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx204118%_)
        (let* ((_%g204121204145%_
                (lambda (_%g204122204141%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204122204141%_))))
               (_%g204120205028%_
                (lambda (_%g204122204149%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204122204149%_))
                      (let ((_%e204125204152%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204122204149%_))))
                        (let ((_%hd204126204156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204125204152%_)))
                              (_%tl204127204159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204125204152%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204127204159%_))
                              (let ((_%e204128204162%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204127204159%_))))
                                (let ((_%hd204129204166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204128204162%_)))
                                      (_%tl204130204169%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204128204162%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204130204169%_))
                                      (let ((_g206178_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl204130204169%_
                                                '0))))
                                        (begin
                                          (let ((_g206179_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g206178_)
                                                       (##vector-length
                                                        _g206178_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g206179_ 2)))
                                                (error "Context expects 2 values"
                                                       _g206179_)))
                                          (let ((_%target204131204172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g206178_ 0)))
                                                (_%tl204133204175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g206178_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204133204175%_))
                                                (letrec ((_%loop204134204178%_
                                                          (lambda (_%hd204132204182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature204138204185%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204132204182%_))
                        (let ((_%e204135204188%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd204132204182%_))))
                          (let ((_%lp-hd204136204192%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204135204188%_)))
                                (_%lp-tl204137204195%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204135204188%_))))
                            (_%loop204134204178%_
                             _%lp-tl204137204195%_
                             (cons _%lp-hd204136204192%_
                                   _%case-signature204138204185%_))))
                        (let ((_%case-signature204139204198%_
                               (reverse _%case-signature204138204185%_)))
                          ((lambda (_%L204202%_ _%L204204%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L204204%_))
                                 (let* ((_%signatures204235%_
                                         (map (lambda (_%g204221204223%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx204118%_
                                                 _%L204204%_
                                                 _%g204221204223%_))
                                              (let ((__tmp206180
                                                     (lambda (_%g204226204229%_
                                                              _%g204227204232%_)
                                                       (cons _%g204226204229%_
                                                             _%g204227204232%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp206180
                                                 '()
                                                 _%L204202%_))))
                                        (_%g204238204264%_
                                         (lambda (_%g204239204260%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g204239204260%_))))
                                        (_%g204237205024%_
                                         (lambda (_%g204239204268%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g204239204268%_))
                                               (let ((_g206181_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g204239204268%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g206182_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g206181_)
                        (##vector-length _g206181_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g206182_ 2)))
                 (error "Context expects 2 values" _g206182_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target204242204271%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g206181_
                                                             0)))
                                                         (_%tl204244204274%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g206181_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl204244204274%_))
                                                         (letrec ((_%loop204245204277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd204243204281%_
                                    _%sig204249204284%_
                                    _%arity204250204286%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd204243204281%_))
                                 (let ((_%e204246204289%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd204243204281%_))))
                                   (let ((_%lp-hd204247204293%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e204246204289%_)))
                                         (_%lp-tl204248204296%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e204246204289%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd204247204293%_))
                                         (let ((_%e204253204299%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd204247204293%_))))
                                           (let ((_%hd204254204303%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e204253204299%_)))
                                                 (_%tl204255204306%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e204253204299%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl204255204306%_))
                                                 (let ((_%e204256204309%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl204255204306%_))))
                                                   (let ((_%hd204257204313%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e204256204309%_)))
                                                         (_%tl204258204316%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e204256204309%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl204258204316%_))
                                                         (_%loop204245204277%_
                                                          _%lp-tl204248204296%_
                                                          (cons _%hd204257204313%_
                                                                _%sig204249204284%_)
                                                          (cons _%hd204254204303%_
                                                                _%arity204250204286%_))
                                                         (_%g204238204264%_
                                                          _%g204239204268%_))))
                                                 (_%g204238204264%_
                                                  _%g204239204268%_))))
                                         (_%g204238204264%_
                                          _%g204239204268%_))))
                                 (let ((_%sig204251204319%_
                                        (reverse _%sig204249204284%_))
                                       (_%arity204252204322%_
                                        (reverse _%arity204250204286%_)))
                                   ((lambda (_%L204325%_ _%L204327%_)
                                      (let* ((_%g204344204352%_
                                              (lambda (_%g204345204348%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g204345204348%_))))
                                             (_%g204343205009%_
                                              (lambda (_%g204345204356%_)
                                                ((lambda (_%L204359%_)
                                                   (let* ((_%g204372204380%_
                                                           (lambda (_%g204373204376%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g204373204376%_))))
                  (_%g204371204402%_
                   (lambda (_%g204373204384%_)
                     ((lambda (_%L204387%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L204359%_ (cons _%L204387%_ '()))))
                      _%g204373204384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g204371204402%_
                                                      (let ((_g206183_
                                                             (let _%loop204406%_ ((_%rest204409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures204235%_)
                                          (_%unchecked-proc204411%_ '#f)
                                          (_%unchecked-clauses204412%_ '()))
                       (let* ((_%rest204413204421%_ _%rest204409%_)
                              (_%else204415204433%_
                               (lambda ()
                                 (values _%unchecked-proc204411%_
                                         (reverse!
                                          _%unchecked-clauses204412%_))))
                              (_%K204417204874%_
                               (lambda (_%rest204437%_ _%hd204439%_)
                                 (let* ((_%g204441204528%_
                                         (lambda (_%g204442204524%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g204442204524%_))))
                                        (_%g204440204870%_
                                         (lambda (_%g204442204532%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g204442204532%_))
                                               (let ((_%e204449204535%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g204442204532%_))))
                                                 (let ((_%hd204450204539%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e204449204535%_)))
                                                       (_%tl204451204542%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e204449204535%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl204451204542%_))
                                                       (let ((_%e204452204545%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl204451204542%_))))
                 (let ((_%hd204453204549%_
                        (let ()
                          (declare (not safe))
                          (##car _%e204452204545%_)))
                       (_%tl204454204552%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e204452204545%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd204453204549%_))
                       (let ((_%e204455204555%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd204453204549%_))))
                         (let ((_%hd204456204559%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e204455204555%_)))
                               (_%tl204457204562%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e204455204555%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl204457204562%_))
                               (let ((_%e204458204565%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl204457204562%_))))
                                 (let ((_%hd204459204569%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e204458204565%_)))
                                       (_%tl204460204572%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e204458204565%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd204459204569%_))
                                       (let ((_%e204461204575%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd204459204569%_))))
                                         (if (equal? _%e204461204575%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl204460204572%_))
                                                 (let ((_%e204462204579%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl204460204572%_))))
                                                   (let ((_%hd204463204583%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e204462204579%_)))
                                                         (_%tl204464204586%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e204462204579%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd204463204583%_))
                                                         (let ((_%e204465204589%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd204463204583%_))))
                   (let ((_%hd204466204593%_
                          (let ()
                            (declare (not safe))
                            (##car _%e204465204589%_)))
                         (_%tl204467204596%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e204465204589%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd204466204593%_))
                         (if (let ((__tmp206185 |gxc[1]#_g206186_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp206185
                                _%hd204466204593%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl204467204596%_))
                                 (let ((_%e204468204599%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl204467204596%_))))
                                   (let ((_%hd204469204603%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e204468204599%_)))
                                         (_%tl204470204606%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e204468204599%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl204470204606%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl204464204586%_))
                                             (let ((_%e204471204609%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl204464204586%_))))
                                               (let ((_%hd204472204613%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e204471204609%_)))
                                                     (_%tl204473204616%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e204471204609%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd204472204613%_))
                                                     (let ((_%e204474204619%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd204472204613%_))))
                                                       (if (equal? _%e204474204619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl204473204616%_))
                       (let ((_%e204475204623%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl204473204616%_))))
                         (let ((_%hd204476204627%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e204475204623%_)))
                               (_%tl204477204630%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e204475204623%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd204476204627%_))
                               (let ((_%e204478204633%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd204476204627%_))))
                                 (let ((_%hd204479204637%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e204478204633%_)))
                                       (_%tl204480204640%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e204478204633%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd204479204637%_))
                                       (if (let ((__tmp206187
                                                  |gxc[1]#_g206188_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp206187
                                              _%hd204479204637%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl204480204640%_))
                                               (let ((_%e204481204643%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl204480204640%_))))
                                                 (let ((_%hd204482204647%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e204481204643%_)))
                                                       (_%tl204483204650%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e204481204643%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl204483204650%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl204477204630%_))
                                                           (let ((_%e204484204653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl204477204630%_))))
                     (let ((_%hd204485204657%_
                            (let ()
                              (declare (not safe))
                              (##car _%e204484204653%_)))
                           (_%tl204486204660%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e204484204653%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd204485204657%_))
                           (let ((_%e204487204663%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd204485204657%_))))
                             (if (equal? _%e204487204663%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl204486204660%_))
                                     (let ((_%e204488204667%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl204486204660%_))))
                                       (let ((_%hd204489204671%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e204488204667%_)))
                                             (_%tl204490204674%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e204488204667%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd204489204671%_))
                                             (let ((_%e204491204677%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd204489204671%_))))
                                               (let ((_%hd204492204681%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e204491204677%_)))
                                                     (_%tl204493204684%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e204491204677%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd204492204681%_))
                                                     (if (let ((__tmp206189
                                                                |gxc[1]#_g206190_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp206189
                                                            _%hd204492204681%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl204493204684%_))
                     (let ((_%e204494204687%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl204493204684%_))))
                       (let ((_%hd204495204691%_
                              (let ()
                                (declare (not safe))
                                (##car _%e204494204687%_)))
                             (_%tl204496204694%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e204494204687%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl204496204694%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl204490204674%_))
                                 (let ((_%e204497204697%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl204490204674%_))))
                                   (let ((_%hd204498204701%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e204497204697%_)))
                                         (_%tl204499204704%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e204497204697%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd204498204701%_))
                                         (let ((_%e204500204707%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd204498204701%_))))
                                           (if (equal? _%e204500204707%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl204499204704%_))
                                                   (let ((_%e204501204711%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl204499204704%_))))
                                                     (let ((_%hd204502204715%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e204501204711%_)))
                                                           (_%tl204503204718%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e204501204711%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd204502204715%_))
                                                           (let ((_%e204504204721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd204502204715%_))))
                     (let ((_%hd204505204725%_
                            (let ()
                              (declare (not safe))
                              (##car _%e204504204721%_)))
                           (_%tl204506204728%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e204504204721%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd204505204725%_))
                           (if (let ((__tmp206191 |gxc[1]#_g206192_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp206191
                                  _%hd204505204725%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl204506204728%_))
                                   (let ((_%e204507204731%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl204506204728%_))))
                                     (let ((_%hd204508204735%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e204507204731%_)))
                                           (_%tl204509204738%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e204507204731%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl204509204738%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl204503204718%_))
                                               (let ((_%e204510204741%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl204503204718%_))))
                                                 (let ((_%hd204511204745%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e204510204741%_)))
                                                       (_%tl204512204748%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e204510204741%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd204511204745%_))
                                                       (let ((_%e204513204751%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd204511204745%_))))
                 (if (equal? _%e204513204751%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl204512204748%_))
                         (let ((_%e204514204755%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl204512204748%_))))
                           (let ((_%hd204515204759%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e204514204755%_)))
                                 (_%tl204516204762%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e204514204755%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd204515204759%_))
                                 (let ((_%e204517204765%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd204515204759%_))))
                                   (let ((_%hd204518204769%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e204517204765%_)))
                                         (_%tl204519204772%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e204517204765%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd204518204769%_))
                                         (if (let ((__tmp206193
                                                    |gxc[1]#_g206194_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp206193
                                                _%hd204518204769%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl204519204772%_))
                                                 (let ((_%e204520204775%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl204519204772%_))))
                                                   (let ((_%hd204521204779%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e204520204775%_)))
                                                         (_%tl204522204782%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e204520204775%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl204522204782%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl204516204762%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl204454204552%_))
                         ((lambda (_%L204785%_
                                   _%L204787%_
                                   _%L204788%_
                                   _%L204789%_
                                   _%L204790%_
                                   _%L204791%_)
                            (let ((_%clause204862%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L204791%_ '()))
                                               (cons '#f
                                                     (cons 'signature:
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L204789%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L204785%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked204864%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L204787%_))))
                              (_%loop204406%_
                               _%rest204437%_
                               (let ((_%$e204866%_ _%unchecked204864%_))
                                 (if _%$e204866%_
                                     _%$e204866%_
                                     _%unchecked-proc204411%_))
                               (cons _%clause204862%_
                                     _%unchecked-clauses204412%_))))
                          _%hd204521204779%_
                          _%hd204508204735%_
                          _%hd204495204691%_
                          _%hd204482204647%_
                          _%hd204469204603%_
                          _%hd204450204539%_)
                         (_%g204441204528%_ _%g204442204532%_))
                     (_%g204441204528%_ _%g204442204532%_))
                 (_%g204441204528%_ _%g204442204532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g204441204528%_
                                                  _%g204442204532%_))
                                             (_%g204441204528%_
                                              _%g204442204532%_))
                                         (_%g204441204528%_
                                          _%g204442204532%_))))
                                 (_%g204441204528%_ _%g204442204532%_))))
                         (_%g204441204528%_ _%g204442204532%_))
                     (_%g204441204528%_ _%g204442204532%_)))
               (_%g204441204528%_ _%g204442204532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g204441204528%_
                                                _%g204442204532%_))
                                           (_%g204441204528%_
                                            _%g204442204532%_))))
                                   (_%g204441204528%_ _%g204442204532%_))
                               (_%g204441204528%_ _%g204442204532%_))
                           (_%g204441204528%_ _%g204442204532%_))))
                   (_%g204441204528%_ _%g204442204532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g204441204528%_
                                                    _%g204442204532%_))
                                               (_%g204441204528%_
                                                _%g204442204532%_)))
                                         (_%g204441204528%_
                                          _%g204442204532%_))))
                                 (_%g204441204528%_ _%g204442204532%_))
                             (_%g204441204528%_ _%g204442204532%_))))
                     (_%g204441204528%_ _%g204442204532%_))
                 (_%g204441204528%_ _%g204442204532%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g204441204528%_
                                                      _%g204442204532%_))))
                                             (_%g204441204528%_
                                              _%g204442204532%_))))
                                     (_%g204441204528%_ _%g204442204532%_))
                                 (_%g204441204528%_ _%g204442204532%_)))
                           (_%g204441204528%_ _%g204442204532%_))))
                   (_%g204441204528%_ _%g204442204532%_))
               (_%g204441204528%_ _%g204442204532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g204441204528%_
                                                _%g204442204532%_))
                                           (_%g204441204528%_
                                            _%g204442204532%_))
                                       (_%g204441204528%_ _%g204442204532%_))))
                               (_%g204441204528%_ _%g204442204532%_))))
                       (_%g204441204528%_ _%g204442204532%_))
                   (_%g204441204528%_ _%g204442204532%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g204441204528%_
                                                      _%g204442204532%_))))
                                             (_%g204441204528%_
                                              _%g204442204532%_))
                                         (_%g204441204528%_
                                          _%g204442204532%_))))
                                 (_%g204441204528%_ _%g204442204532%_))
                             (_%g204441204528%_ _%g204442204532%_))
                         (_%g204441204528%_ _%g204442204532%_))))
                 (_%g204441204528%_ _%g204442204532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g204441204528%_
                                                  _%g204442204532%_))
                                             (_%g204441204528%_
                                              _%g204442204532%_)))
                                       (_%g204441204528%_ _%g204442204532%_))))
                               (_%g204441204528%_ _%g204442204532%_))))
                       (_%g204441204528%_ _%g204442204532%_))))
               (_%g204441204528%_ _%g204442204532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g204441204528%_
                                                _%g204442204532%_)))))
                                   (_%g204440204870%_ _%hd204439%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest204413204421%_))
                             (let ((_%hd204418204878%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest204413204421%_)))
                                   (_%tl204419204881%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest204413204421%_))))
                               (let* ((_%hd204884%_ _%hd204418204878%_)
                                      (_%rest204887%_ _%tl204419204881%_))
                                 (_%K204417204874%_
                                  _%rest204887%_
                                  _%hd204884%_)))
                             (_%else204415204433%_))))))
                (begin
                  (let ((_g206184_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g206183_)
                               (##vector-length _g206183_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g206184_ 2)))
                        (error "Context expects 2 values" _g206184_)))
                  (let ((_%unchecked-proc204890%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g206183_ 0)))
                        (_%unchecked-clauses204892%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g206183_ 1))))
                    (if _%unchecked-proc204890%_
                        (let* ((_%g204894204918%_
                                (lambda (_%g204895204914%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g204895204914%_))))
                               (_%g204893205005%_
                                (lambda (_%g204895204922%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g204895204922%_))
                                      (let ((_%e204898204925%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g204895204922%_))))
                                        (let ((_%hd204899204929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204898204925%_)))
                                              (_%tl204900204932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204898204925%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204900204932%_))
                                              (let ((_%e204901204935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204900204932%_))))
                                                (let ((_%hd204902204939%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204901204935%_)))
                                                      (_%tl204903204942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204901204935%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd204902204939%_))
                                                      (let ((_g206195_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd204902204939%_ '0))))
                (begin
                  (let ((_g206196_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g206195_)
                               (##vector-length _g206195_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g206196_ 2)))
                        (error "Context expects 2 values" _g206196_)))
                  (let ((_%target204904204945%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g206195_ 0)))
                        (_%tl204906204948%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g206195_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl204906204948%_))
                        (letrec ((_%loop204907204951%_
                                  (lambda (_%hd204905204955%_
                                           _%clause204911204958%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd204905204955%_))
                                        (let ((_%e204908204961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd204905204955%_))))
                                          (let ((_%lp-hd204909204965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204908204961%_)))
                                                (_%lp-tl204910204968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204908204961%_))))
                                            (_%loop204907204951%_
                                             _%lp-tl204910204968%_
                                             (cons _%lp-hd204909204965%_
                                                   _%clause204911204958%_))))
                                        (let ((_%clause204912204971%_
                                               (reverse _%clause204911204958%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204903204942%_))
                                              ((lambda (_%L204975%_
                                                        _%L204977%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L204977%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp206197
                                                    (lambda (_%g204996204999%_
                                                             _%g204997205002%_)
                                                      (cons _%g204996204999%_
                                                            _%g204997205002%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp206197
                                                '()
                                                _%L204975%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause204912204971%_
                                               _%hd204899204929%_)
                                              (_%g204894204918%_
                                               _%g204895204922%_)))))))
                          (_%loop204907204951%_ _%target204904204945%_ '()))
                        (_%g204894204918%_ _%g204895204922%_)))))
              (_%g204894204918%_ _%g204895204922%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204894204918%_
                                               _%g204895204922%_))))
                                      (_%g204894204918%_ _%g204895204922%_)))))
                          (_%g204893205005%_
                           (list _%unchecked-proc204890%_
                                 _%unchecked-clauses204892%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g204345204356%_))))
                                        (_%g204343205009%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L204204%_
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'make-!primitive-case-lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '@list))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%L204325%_
                                          _%L204327%_))
                                       (let ((__tmp206198
                                              (lambda (_%g205012205016%_
                                                       _%g205013205019%_
                                                       _%g205014205021%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g205013205019%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g205012205016%_ '())))))
              _%g205014205021%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp206198
                                          '()
                                          _%L204325%_
                                          _%L204327%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig204251204319%_
                                    _%arity204252204322%_))))))
                   (_%loop204245204277%_ _%target204242204271%_ '() '()))
                 (_%g204238204264%_ _%g204239204268%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g204238204264%_
                                                _%g204239204268%_)))))
                                   (_%g204237205024%_ _%signatures204235%_))
                                 (_%g204121204145%_ _%g204122204149%_)))
                           _%case-signature204139204198%_
                           _%hd204129204166%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop204134204178%_
                                                   _%target204131204172%_
                                                   '()))
                                                (_%g204121204145%_
                                                 _%g204122204149%_)))))
                                      (_%g204121204145%_ _%g204122204149%_))))
                              (_%g204121204145%_ _%g204122204149%_))))
                      (_%g204121204145%_ _%g204122204149%_)))))
          (_%g204120205028%_ _%stx204118%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx205036%_)
        (let* ((_%__stx206018206019%_ _%$stx205036%_)
               (_%g205042205102%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206018206019%_)))))
          (let ((_%__kont206021206022%_
                 (lambda (_%L205324%_ _%L205326%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205326%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L205326%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L205324%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont206023206024%_
                 (lambda (_%L205249%_ _%L205251%_ _%L205252%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205252%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L205252%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L205251%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205249%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont206025206026%_
                 (lambda (_%L205163%_ _%L205165%_ _%L205166%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205166%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L205166%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L205165%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205163%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx206018206019%_))
                (let ((_%e205046205280%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx206018206019%_))))
                  (let ((_%tl205048205287%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205046205280%_)))
                        (_%hd205047205284%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205046205280%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205048205287%_))
                        (let ((_%e205049205290%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205048205287%_))))
                          (let ((_%tl205051205297%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205049205290%_)))
                                (_%hd205050205294%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205049205290%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd205050205294%_))
                                (let ((_%e205052205300%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd205050205294%_))))
                                  (if (equal? _%e205052205300%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl205051205297%_))
                                          (let ((_%e205053205304%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl205051205297%_))))
                                            (let ((_%tl205055205311%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e205053205304%_)))
                                                  (_%hd205054205308%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e205053205304%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205055205311%_))
                                                  (let ((_%e205056205314%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl205055205311%_))))
                                                    (let ((_%tl205058205321%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205056205314%_)))
                                                          (_%hd205057205318%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205056205314%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl205058205321%_))
                                                          (_%__kont206021206022%_
                                                           _%hd205057205318%_
                                                           _%hd205054205308%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g205042205102%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g205042205102%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g205042205102%_)))
                                      (if (equal? _%e205052205300%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205051205297%_))
                                              (let ((_%e205069205219%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205051205297%_))))
                                                (let ((_%tl205071205226%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205069205219%_)))
                                                      (_%hd205070205223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205069205219%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl205071205226%_))
                                                      (let ((_%e205072205229%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl205071205226%_))))
                (let ((_%tl205074205236%_
                       (let () (declare (not safe)) (##cdr _%e205072205229%_)))
                      (_%hd205073205233%_
                       (let ()
                         (declare (not safe))
                         (##car _%e205072205229%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl205074205236%_))
                      (let ((_%e205075205239%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl205074205236%_))))
                        (let ((_%tl205077205246%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205075205239%_)))
                              (_%hd205076205243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205075205239%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205077205246%_))
                              (_%__kont206023206024%_
                               _%hd205076205243%_
                               _%hd205073205233%_
                               _%hd205070205223%_)
                              (let ()
                                (declare (not safe))
                                (_%g205042205102%_)))))
                      (let () (declare (not safe)) (_%g205042205102%_)))))
              (let () (declare (not safe)) (_%g205042205102%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g205042205102%_)))
                                          (if (equal? _%e205052205300%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205051205297%_))
                                                  (let ((_%e205088205133%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl205051205297%_))))
                                                    (let ((_%tl205090205140%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205088205133%_)))
                                                          (_%hd205089205137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205088205133%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl205090205140%_))
                                                          (let ((_%e205091205143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl205090205140%_))))
                    (let ((_%tl205093205150%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205091205143%_)))
                          (_%hd205092205147%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205091205143%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205093205150%_))
                          (let ((_%e205094205153%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl205093205150%_))))
                            (let ((_%tl205096205160%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205094205153%_)))
                                  (_%hd205095205157%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205094205153%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205096205160%_))
                                  (_%__kont206025206026%_
                                   _%hd205095205157%_
                                   _%hd205092205147%_
                                   _%hd205089205137%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g205042205102%_)))))
                          (let () (declare (not safe)) (_%g205042205102%_)))))
                  (let () (declare (not safe)) (_%g205042205102%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g205042205102%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205042205102%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g205042205102%_)))))
                        (let () (declare (not safe)) (_%g205042205102%_)))))
                (let () (declare (not safe)) (_%g205042205102%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx205348%_)
        (let* ((_%g205352205372%_
                (lambda (_%g205353205368%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205353205368%_))))
               (_%g205351205443%_
                (lambda (_%g205353205376%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205353205376%_))
                      (let ((_%e205355205379%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205353205376%_))))
                        (let ((_%hd205356205383%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205355205379%_)))
                              (_%tl205357205386%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205355205379%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205357205386%_))
                              (let ((_g206199_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205357205386%_
                                        '0))))
                                (begin
                                  (let ((_g206200_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g206199_)
                                               (##vector-length _g206199_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g206200_ 2)))
                                        (error "Context expects 2 values"
                                               _g206200_)))
                                  (let ((_%target205358205389%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206199_ 0)))
                                        (_%tl205360205392%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206199_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205360205392%_))
                                        (letrec ((_%loop205361205395%_
                                                  (lambda (_%hd205359205399%_
                                                           _%decl205365205402%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205359205399%_))
                                                        (let ((_%e205362205405%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205359205399%_))))
                  (let ((_%lp-hd205363205409%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205362205405%_)))
                        (_%lp-tl205364205412%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205362205405%_))))
                    (_%loop205361205395%_
                     _%lp-tl205364205412%_
                     (cons _%lp-hd205363205409%_ _%decl205365205402%_))))
                (let ((_%decl205366205415%_ (reverse _%decl205365205402%_)))
                  ((lambda (_%L205419%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp206201
                                  (lambda (_%g205434205437%_ _%g205435205440%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g205434205437%_)
                                          _%g205435205440%_))))
                             (declare (not safe))
                             (__foldr1 __tmp206201 '() _%L205419%_))))
                   _%decl205366205415%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop205361205395%_
                                           _%target205358205389%_
                                           '()))
                                        (_%g205352205372%_
                                         _%g205353205376%_)))))
                              (_%g205352205372%_ _%g205353205376%_))))
                      (_%g205352205372%_ _%g205353205376%_)))))
          (_%g205351205443%_ _%$stx205348%_))))))
