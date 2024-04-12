(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g206217_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206224_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206226_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206228_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206230_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206232_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206244_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206246_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206248_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206250_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206252_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx199635%_)
        (let* ((_%g199639199657%_
                (lambda (_%g199640199653%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199640199653%_))))
               (_%g199638199712%_
                (lambda (_%g199640199661%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199640199661%_))
                      (let ((_%e199643199664%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199640199661%_))))
                        (let ((_%hd199644199668%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199643199664%_)))
                              (_%tl199645199671%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199643199664%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199645199671%_))
                              (let ((_%e199646199674%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199645199671%_))))
                                (let ((_%hd199647199678%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199646199674%_)))
                                      (_%tl199648199681%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199646199674%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199648199681%_))
                                      (let ((_%e199649199684%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199648199681%_))))
                                        (let ((_%hd199650199688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199649199684%_)))
                                              (_%tl199651199691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199649199684%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199651199691%_))
                                              ((lambda (_%L199694%_
                                                        _%L199696%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L199696%_))
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
                               (cons _%L199696%_ '()))
                         (cons _%L199694%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199639199657%_
                                                      _%g199640199661%_)))
                                               _%hd199650199688%_
                                               _%hd199647199678%_)
                                              (_%g199639199657%_
                                               _%g199640199661%_))))
                                      (_%g199639199657%_ _%g199640199661%_))))
                              (_%g199639199657%_ _%g199640199661%_))))
                      (_%g199639199657%_ _%g199640199661%_)))))
          (_%g199638199712%_ _%$stx199635%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx199716%_)
        (let* ((_%g199720199738%_
                (lambda (_%g199721199734%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199721199734%_))))
               (_%g199719199793%_
                (lambda (_%g199721199742%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199721199742%_))
                      (let ((_%e199724199745%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199721199742%_))))
                        (let ((_%hd199725199749%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199724199745%_)))
                              (_%tl199726199752%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199724199745%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199726199752%_))
                              (let ((_%e199727199755%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199726199752%_))))
                                (let ((_%hd199728199759%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199727199755%_)))
                                      (_%tl199729199762%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199727199755%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199729199762%_))
                                      (let ((_%e199730199765%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199729199762%_))))
                                        (let ((_%hd199731199769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199730199765%_)))
                                              (_%tl199732199772%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199730199765%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199732199772%_))
                                              ((lambda (_%L199775%_
                                                        _%L199777%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L199777%_))
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
                               (cons _%L199777%_ '()))
                         (cons _%L199775%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199720199738%_
                                                      _%g199721199742%_)))
                                               _%hd199731199769%_
                                               _%hd199728199759%_)
                                              (_%g199720199738%_
                                               _%g199721199742%_))))
                                      (_%g199720199738%_ _%g199721199742%_))))
                              (_%g199720199738%_ _%g199721199742%_))))
                      (_%g199720199738%_ _%g199721199742%_)))))
          (_%g199719199793%_ _%$stx199716%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx199797%_)
        (let* ((_%g199801199830%_
                (lambda (_%g199802199826%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199802199826%_))))
               (_%g199800199930%_
                (lambda (_%g199802199834%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199802199834%_))
                      (let ((_%e199805199837%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199802199834%_))))
                        (let ((_%hd199806199841%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199805199837%_)))
                              (_%tl199807199844%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199805199837%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl199807199844%_))
                              (let ((_g206195_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl199807199844%_
                                        '0))))
                                (begin
                                  (let ((_g206196_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g206195_)
                                               (##vector-length _g206195_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g206196_ 2)))
                                        (error "Context expects 2 values"
                                               _g206196_)))
                                  (let ((_%target199808199847%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206195_ 0)))
                                        (_%tl199810199850%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206195_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199810199850%_))
                                        (letrec ((_%loop199811199853%_
                                                  (lambda (_%hd199809199857%_
                                                           _%type199815199860%_
                                                           _%symbol199816199862%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199809199857%_))
                                                        (let ((_%e199812199865%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199809199857%_))))
                  (let ((_%lp-hd199813199869%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199812199865%_)))
                        (_%lp-tl199814199872%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199812199865%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd199813199869%_))
                        (let ((_%e199819199875%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd199813199869%_))))
                          (let ((_%hd199820199879%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199819199875%_)))
                                (_%tl199821199882%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199819199875%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199821199882%_))
                                (let ((_%e199822199885%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199821199882%_))))
                                  (let ((_%hd199823199889%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199822199885%_)))
                                        (_%tl199824199892%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199822199885%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199824199892%_))
                                        (_%loop199811199853%_
                                         _%lp-tl199814199872%_
                                         (cons _%hd199823199889%_
                                               _%type199815199860%_)
                                         (cons _%hd199820199879%_
                                               _%symbol199816199862%_))
                                        (_%g199801199830%_
                                         _%g199802199834%_))))
                                (_%g199801199830%_ _%g199802199834%_))))
                        (_%g199801199830%_ _%g199802199834%_))))
                (let ((_%type199817199895%_ (reverse _%type199815199860%_))
                      (_%symbol199818199898%_
                       (reverse _%symbol199816199862%_)))
                  ((lambda (_%L199901%_ _%L199903%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L199901%_
                                _%L199903%_))
                             (let ((__tmp206197
                                    (lambda (_%g199918199922%_
                                             _%g199919199925%_
                                             _%g199920199927%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g199919199925%_
                                                        (cons _%g199918199922%_
                                                              '())))
                                            _%g199920199927%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp206197
                                '()
                                _%L199901%_
                                _%L199903%_)))))
                   _%type199817199895%_
                   _%symbol199818199898%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop199811199853%_
                                           _%target199808199847%_
                                           '()
                                           '()))
                                        (_%g199801199830%_
                                         _%g199802199834%_)))))
                              (_%g199801199830%_ _%g199802199834%_))))
                      (_%g199801199830%_ _%g199802199834%_)))))
          (_%g199800199930%_ _%$stx199797%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx199935%_)
        (let* ((_%__stx205506205507%_ _%$stx199935%_)
               (_%g199940199982%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205506205507%_)))))
          (let ((_%__kont205509205510%_
                 (lambda (_%L200110%_ _%L200112%_ _%L200113%_ _%L200114%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200114%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L200113%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L200112%_ '()))
                                           (cons _%L200110%_ '())))))))
                (_%__kont205511205512%_
                 (lambda (_%L200029%_ _%L200031%_ _%L200032%_ _%L200033%_)
                   (cons _%L200033%_
                         (cons _%L200032%_
                               (cons _%L200031%_
                                     (cons _%L200029%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match205545205546%_
                   (lambda (_%e199946200060%_
                            _%hd199947200064%_
                            _%tl199948200067%_
                            _%e199949200070%_
                            _%hd199950200074%_
                            _%tl199951200077%_
                            _%e199952200080%_
                            _%hd199953200084%_
                            _%tl199954200087%_
                            _%e199955200090%_
                            _%hd199956200094%_
                            _%tl199957200097%_
                            _%e199958200100%_
                            _%hd199959200104%_
                            _%tl199960200107%_)
                     (let ((_%L200110%_ _%hd199959200104%_)
                           (_%L200112%_ _%hd199956200094%_)
                           (_%L200113%_ _%hd199953200084%_)
                           (_%L200114%_ _%hd199950200074%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L200114%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L200113%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L200112%_)))
                           (_%__kont205509205510%_
                            _%L200110%_
                            _%L200112%_
                            _%L200113%_
                            _%L200114%_)
                           (let ()
                             (declare (not safe))
                             (_%g199940199982%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205506205507%_))
                  (let ((_%e199946200060%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx205506205507%_))))
                    (let ((_%tl199948200067%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199946200060%_)))
                          (_%hd199947200064%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199946200060%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199948200067%_))
                          (let ((_%e199949200070%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199948200067%_))))
                            (let ((_%tl199951200077%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199949200070%_)))
                                  (_%hd199950200074%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199949200070%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199951200077%_))
                                  (let ((_%e199952200080%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199951200077%_))))
                                    (let ((_%tl199954200087%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199952200080%_)))
                                          (_%hd199953200084%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199952200080%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199954200087%_))
                                          (let ((_%e199955200090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl199954200087%_))))
                                            (let ((_%tl199957200097%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199955200090%_)))
                                                  (_%hd199956200094%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199955200090%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199957200097%_))
                                                  (let ((_%e199958200100%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199957200097%_))))
                                                    (let ((_%tl199960200107%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199958200100%_)))
                                                          (_%hd199959200104%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199958200100%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199960200107%_))
                                                          (_%__match205545205546%_
                                                           _%e199946200060%_
                                                           _%hd199947200064%_
                                                           _%tl199948200067%_
                                                           _%e199949200070%_
                                                           _%hd199950200074%_
                                                           _%tl199951200077%_
                                                           _%e199952200080%_
                                                           _%hd199953200084%_
                                                           _%tl199954200087%_
                                                           _%e199955200090%_
                                                           _%hd199956200094%_
                                                           _%tl199957200097%_
                                                           _%e199958200100%_
                                                           _%hd199959200104%_
                                                           _%tl199960200107%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g199940199982%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199957200097%_))
                                                      (_%__kont205511205512%_
                                                       _%hd199956200094%_
                                                       _%hd199953200084%_
                                                       _%hd199950200074%_
                                                       _%hd199947200064%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199940199982%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199940199982%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199940199982%_)))))
                          (let () (declare (not safe)) (_%g199940199982%_)))))
                  (let () (declare (not safe)) (_%g199940199982%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx200139%_)
        (let* ((_%g200143200178%_
                (lambda (_%g200144200174%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200144200174%_))))
               (_%g200142200297%_
                (lambda (_%g200144200182%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200144200182%_))
                      (let ((_%e200148200185%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200144200182%_))))
                        (let ((_%hd200149200189%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200148200185%_)))
                              (_%tl200150200192%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200148200185%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl200150200192%_))
                              (let ((_g206198_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl200150200192%_
                                        '0))))
                                (begin
                                  (let ((_g206199_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g206198_)
                                               (##vector-length _g206198_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g206199_ 2)))
                                        (error "Context expects 2 values"
                                               _g206199_)))
                                  (let ((_%target200151200195%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206198_ 0)))
                                        (_%tl200153200198%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206198_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200153200198%_))
                                        (letrec ((_%loop200154200201%_
                                                  (lambda (_%hd200152200205%_
                                                           _%symbol200158200208%_
                                                           _%method200159200210%_
                                                           _%type-t200160200212%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200152200205%_))
                                                        (let ((_%e200155200215%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd200152200205%_))))
                  (let ((_%lp-hd200156200219%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200155200215%_)))
                        (_%lp-tl200157200222%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200155200215%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd200156200219%_))
                        (let ((_%e200164200225%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd200156200219%_))))
                          (let ((_%hd200165200229%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200164200225%_)))
                                (_%tl200166200232%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200164200225%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200166200232%_))
                                (let ((_%e200167200235%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200166200232%_))))
                                  (let ((_%hd200168200239%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200167200235%_)))
                                        (_%tl200169200242%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200167200235%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200169200242%_))
                                        (let ((_%e200170200245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl200169200242%_))))
                                          (let ((_%hd200171200249%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200170200245%_)))
                                                (_%tl200172200252%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200170200245%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200172200252%_))
                                                (_%loop200154200201%_
                                                 _%lp-tl200157200222%_
                                                 (cons _%hd200171200249%_
                                                       _%symbol200158200208%_)
                                                 (cons _%hd200168200239%_
                                                       _%method200159200210%_)
                                                 (cons _%hd200165200229%_
                                                       _%type-t200160200212%_))
                                                (_%g200143200178%_
                                                 _%g200144200182%_))))
                                        (_%g200143200178%_
                                         _%g200144200182%_))))
                                (_%g200143200178%_ _%g200144200182%_))))
                        (_%g200143200178%_ _%g200144200182%_))))
                (let ((_%symbol200161200255%_ (reverse _%symbol200158200208%_))
                      (_%method200162200258%_ (reverse _%method200159200210%_))
                      (_%type-t200163200260%_
                       (reverse _%type-t200160200212%_)))
                  ((lambda (_%L200263%_ _%L200265%_ _%L200266%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L200263%_
                                _%L200265%_
                                _%L200266%_))
                             (let ((__tmp206200
                                    (lambda (_%g200282200287%_
                                             _%g200283200290%_
                                             _%g200284200292%_
                                             _%g200285200294%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g200284200292%_
                                                        (cons _%g200283200290%_
                                                              (cons _%g200282200287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g200285200294%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp206200
                                '()
                                _%L200263%_
                                _%L200265%_
                                _%L200266%_)))))
                   _%symbol200161200255%_
                   _%method200162200258%_
                   _%type-t200163200260%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop200154200201%_
                                           _%target200151200195%_
                                           '()
                                           '()
                                           '()))
                                        (_%g200143200178%_
                                         _%g200144200182%_)))))
                              (_%g200143200178%_ _%g200144200182%_))))
                      (_%g200143200178%_ _%g200144200182%_)))))
          (_%g200142200297%_ _%$stx200139%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx200302%_)
        (let* ((_%g200306200339%_
                (lambda (_%g200307200335%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200307200335%_))))
               (_%g200305200453%_
                (lambda (_%g200307200343%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200307200343%_))
                      (let ((_%e200311200346%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200307200343%_))))
                        (let ((_%hd200312200350%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200311200346%_)))
                              (_%tl200313200353%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200311200346%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200313200353%_))
                              (let ((_%e200314200356%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200313200353%_))))
                                (let ((_%hd200315200360%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200314200356%_)))
                                      (_%tl200316200363%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200314200356%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200316200363%_))
                                      (let ((_g206201_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200316200363%_
                                                '0))))
                                        (begin
                                          (let ((_g206202_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g206201_)
                                                       (##vector-length
                                                        _g206201_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g206202_ 2)))
                                                (error "Context expects 2 values"
                                                       _g206202_)))
                                          (let ((_%target200317200366%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g206201_ 0)))
                                                (_%tl200319200369%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g206201_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200319200369%_))
                                                (letrec ((_%loop200320200372%_
                                                          (lambda (_%hd200318200376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol200324200379%_
                           _%method200325200381%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200318200376%_))
                        (let ((_%e200321200384%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200318200376%_))))
                          (let ((_%lp-hd200322200388%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200321200384%_)))
                                (_%lp-tl200323200391%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200321200384%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd200322200388%_))
                                (let ((_%e200328200394%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd200322200388%_))))
                                  (let ((_%hd200329200398%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200328200394%_)))
                                        (_%tl200330200401%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200328200394%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200330200401%_))
                                        (let ((_%e200331200404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl200330200401%_))))
                                          (let ((_%hd200332200408%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200331200404%_)))
                                                (_%tl200333200411%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200331200404%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200333200411%_))
                                                (_%loop200320200372%_
                                                 _%lp-tl200323200391%_
                                                 (cons _%hd200332200408%_
                                                       _%symbol200324200379%_)
                                                 (cons _%hd200329200398%_
                                                       _%method200325200381%_))
                                                (_%g200306200339%_
                                                 _%g200307200343%_))))
                                        (_%g200306200339%_
                                         _%g200307200343%_))))
                                (_%g200306200339%_ _%g200307200343%_))))
                        (let ((_%symbol200326200414%_
                               (reverse _%symbol200324200379%_))
                              (_%method200327200417%_
                               (reverse _%method200325200381%_)))
                          ((lambda (_%L200420%_ _%L200422%_ _%L200423%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L200420%_
                                        _%L200422%_))
                                     (let ((__tmp206203
                                            (lambda (_%g200441200445%_
                                                     _%g200442200448%_
                                                     _%g200443200450%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L200423%_
                                                                (cons _%g200442200448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g200441200445%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g200443200450%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp206203
                                        '()
                                        _%L200420%_
                                        _%L200422%_)))))
                           _%symbol200326200414%_
                           _%method200327200417%_
                           _%hd200315200360%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200320200372%_
                                                   _%target200317200366%_
                                                   '()
                                                   '()))
                                                (_%g200306200339%_
                                                 _%g200307200343%_)))))
                                      (_%g200306200339%_ _%g200307200343%_))))
                              (_%g200306200339%_ _%g200307200343%_))))
                      (_%g200306200339%_ _%g200307200343%_)))))
          (_%g200305200453%_ _%$stx200302%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx200458%_)
        (let* ((_%g200462200476%_
                (lambda (_%g200463200472%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200463200472%_))))
               (_%g200461200517%_
                (lambda (_%g200463200480%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200463200480%_))
                      (let ((_%e200465200483%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200463200480%_))))
                        (let ((_%hd200466200487%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200465200483%_)))
                              (_%tl200467200490%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200465200483%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200467200490%_))
                              (let ((_%e200468200493%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200467200490%_))))
                                (let ((_%hd200469200497%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200468200493%_)))
                                      (_%tl200470200500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200468200493%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200470200500%_))
                                      ((lambda (_%L200503%_)
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
                                                           (cons _%L200503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd200469200497%_)
                                      (_%g200462200476%_ _%g200463200480%_))))
                              (_%g200462200476%_ _%g200463200480%_))))
                      (_%g200462200476%_ _%g200463200480%_)))))
          (_%g200461200517%_ _%$stx200458%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx200521%_)
        (let* ((_%g200525200579%_
                (lambda (_%g200526200575%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200526200575%_))))
               (_%g200524200760%_
                (lambda (_%g200526200583%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200526200583%_))
                      (let ((_%e200538200586%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200526200583%_))))
                        (let ((_%hd200539200590%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200538200586%_)))
                              (_%tl200540200593%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200538200586%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200540200593%_))
                              (let ((_%e200541200596%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200540200593%_))))
                                (let ((_%hd200542200600%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200541200596%_)))
                                      (_%tl200543200603%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200541200596%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200543200603%_))
                                      (let ((_%e200544200606%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200543200603%_))))
                                        (let ((_%hd200545200610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200544200606%_)))
                                              (_%tl200546200613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200544200606%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200546200613%_))
                                              (let ((_%e200547200616%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200546200613%_))))
                                                (let ((_%hd200548200620%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200547200616%_)))
                                                      (_%tl200549200623%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200547200616%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200549200623%_))
                                                      (let ((_%e200550200626%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl200549200623%_))))
                (let ((_%hd200551200630%_
                       (let () (declare (not safe)) (##car _%e200550200626%_)))
                      (_%tl200552200633%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e200550200626%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200552200633%_))
                      (let ((_%e200553200636%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200552200633%_))))
                        (let ((_%hd200554200640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200553200636%_)))
                              (_%tl200555200643%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200553200636%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200555200643%_))
                              (let ((_%e200556200646%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200555200643%_))))
                                (let ((_%hd200557200650%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200556200646%_)))
                                      (_%tl200558200653%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200556200646%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200558200653%_))
                                      (let ((_%e200559200656%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200558200653%_))))
                                        (let ((_%hd200560200660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200559200656%_)))
                                              (_%tl200561200663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200559200656%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200561200663%_))
                                              (let ((_%e200562200666%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200561200663%_))))
                                                (let ((_%hd200563200670%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200562200666%_)))
                                                      (_%tl200564200673%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200562200666%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200564200673%_))
                                                      (let ((_%e200565200676%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl200564200673%_))))
                (let ((_%hd200566200680%_
                       (let () (declare (not safe)) (##car _%e200565200676%_)))
                      (_%tl200567200683%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e200565200676%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200567200683%_))
                      (let ((_%e200568200686%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200567200683%_))))
                        (let ((_%hd200569200690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200568200686%_)))
                              (_%tl200570200693%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200568200686%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200570200693%_))
                              (let ((_%e200571200696%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200570200693%_))))
                                (let ((_%hd200572200700%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200571200696%_)))
                                      (_%tl200573200703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200571200696%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200573200703%_))
                                      ((lambda (_%L200706%_
                                                _%L200708%_
                                                _%L200709%_
                                                _%L200710%_
                                                _%L200711%_
                                                _%L200712%_
                                                _%L200713%_
                                                _%L200714%_
                                                _%L200715%_
                                                _%L200716%_
                                                _%L200717%_)
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
                                                           (cons _%L200717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L200716%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L200715%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200714%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L200713%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L200712%_ '()))
                                           (cons _%L200711%_
                                                 (cons _%L200710%_
                                                       (cons _%L200709%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L200708%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L200706%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd200572200700%_
                                       _%hd200569200690%_
                                       _%hd200566200680%_
                                       _%hd200563200670%_
                                       _%hd200560200660%_
                                       _%hd200557200650%_
                                       _%hd200554200640%_
                                       _%hd200551200630%_
                                       _%hd200548200620%_
                                       _%hd200545200610%_
                                       _%hd200542200600%_)
                                      (_%g200525200579%_ _%g200526200583%_))))
                              (_%g200525200579%_ _%g200526200583%_))))
                      (_%g200525200579%_ _%g200526200583%_))))
              (_%g200525200579%_ _%g200526200583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200525200579%_
                                               _%g200526200583%_))))
                                      (_%g200525200579%_ _%g200526200583%_))))
                              (_%g200525200579%_ _%g200526200583%_))))
                      (_%g200525200579%_ _%g200526200583%_))))
              (_%g200525200579%_ _%g200526200583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200525200579%_
                                               _%g200526200583%_))))
                                      (_%g200525200579%_ _%g200526200583%_))))
                              (_%g200525200579%_ _%g200526200583%_))))
                      (_%g200525200579%_ _%g200526200583%_)))))
          (_%g200524200760%_ _%$stx200521%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx200764%_)
        (let* ((_%g200768200782%_
                (lambda (_%g200769200778%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200769200778%_))))
               (_%g200767200823%_
                (lambda (_%g200769200786%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200769200786%_))
                      (let ((_%e200771200789%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200769200786%_))))
                        (let ((_%hd200772200793%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200771200789%_)))
                              (_%tl200773200796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200771200789%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200773200796%_))
                              (let ((_%e200774200799%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200773200796%_))))
                                (let ((_%hd200775200803%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200774200799%_)))
                                      (_%tl200776200806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200774200799%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200776200806%_))
                                      ((lambda (_%L200809%_)
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
                                                           (cons _%L200809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd200775200803%_)
                                      (_%g200768200782%_ _%g200769200786%_))))
                              (_%g200768200782%_ _%g200769200786%_))))
                      (_%g200768200782%_ _%g200769200786%_)))))
          (_%g200767200823%_ _%$stx200764%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx200827%_)
        (let* ((_%g200831200845%_
                (lambda (_%g200832200841%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200832200841%_))))
               (_%g200830200886%_
                (lambda (_%g200832200849%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200832200849%_))
                      (let ((_%e200834200852%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200832200849%_))))
                        (let ((_%hd200835200856%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200834200852%_)))
                              (_%tl200836200859%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200834200852%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200836200859%_))
                              (let ((_%e200837200862%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200836200859%_))))
                                (let ((_%hd200838200866%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200837200862%_)))
                                      (_%tl200839200869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200837200862%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200839200869%_))
                                      ((lambda (_%L200872%_)
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
                                                           (cons _%L200872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd200838200866%_)
                                      (_%g200831200845%_ _%g200832200849%_))))
                              (_%g200831200845%_ _%g200832200849%_))))
                      (_%g200831200845%_ _%g200832200849%_)))))
          (_%g200830200886%_ _%$stx200827%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx200890%_)
        (let* ((_%g200894200916%_
                (lambda (_%g200895200912%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200895200912%_))))
               (_%g200893200985%_
                (lambda (_%g200895200920%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200895200920%_))
                      (let ((_%e200899200923%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200895200920%_))))
                        (let ((_%hd200900200927%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200899200923%_)))
                              (_%tl200901200930%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200899200923%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200901200930%_))
                              (let ((_%e200902200933%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200901200930%_))))
                                (let ((_%hd200903200937%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200902200933%_)))
                                      (_%tl200904200940%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200902200933%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200904200940%_))
                                      (let ((_%e200905200943%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200904200940%_))))
                                        (let ((_%hd200906200947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200905200943%_)))
                                              (_%tl200907200950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200905200943%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200907200950%_))
                                              (let ((_%e200908200953%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200907200950%_))))
                                                (let ((_%hd200909200957%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200908200953%_)))
                                                      (_%tl200910200960%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200908200953%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200910200960%_))
                                                      ((lambda (_%L200963%_
                                                                _%L200965%_
                                                                _%L200966%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L200966%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200965%_ '()))
                                   (cons _%L200963%_ '())))))
               _%hd200909200957%_
               _%hd200906200947%_
               _%hd200903200937%_)
              (_%g200894200916%_ _%g200895200920%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200894200916%_
                                               _%g200895200920%_))))
                                      (_%g200894200916%_ _%g200895200920%_))))
                              (_%g200894200916%_ _%g200895200920%_))))
                      (_%g200894200916%_ _%g200895200920%_)))))
          (_%g200893200985%_ _%$stx200890%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx200989%_)
        (let* ((_%g200993201015%_
                (lambda (_%g200994201011%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200994201011%_))))
               (_%g200992201084%_
                (lambda (_%g200994201019%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200994201019%_))
                      (let ((_%e200998201022%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200994201019%_))))
                        (let ((_%hd200999201026%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200998201022%_)))
                              (_%tl201000201029%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200998201022%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201000201029%_))
                              (let ((_%e201001201032%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201000201029%_))))
                                (let ((_%hd201002201036%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201001201032%_)))
                                      (_%tl201003201039%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201001201032%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201003201039%_))
                                      (let ((_%e201004201042%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201003201039%_))))
                                        (let ((_%hd201005201046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201004201042%_)))
                                              (_%tl201006201049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201004201042%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201006201049%_))
                                              (let ((_%e201007201052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201006201049%_))))
                                                (let ((_%hd201008201056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201007201052%_)))
                                                      (_%tl201009201059%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201007201052%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201009201059%_))
                                                      ((lambda (_%L201062%_
                                                                _%L201064%_
                                                                _%L201065%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L201065%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L201064%_ '()))
                                   (cons _%L201062%_ '())))))
               _%hd201008201056%_
               _%hd201005201046%_
               _%hd201002201036%_)
              (_%g200993201015%_ _%g200994201019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200993201015%_
                                               _%g200994201019%_))))
                                      (_%g200993201015%_ _%g200994201019%_))))
                              (_%g200993201015%_ _%g200994201019%_))))
                      (_%g200993201015%_ _%g200994201019%_)))))
          (_%g200992201084%_ _%$stx200989%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx201088%_)
        (let* ((_%g201092201106%_
                (lambda (_%g201093201102%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201093201102%_))))
               (_%g201091201147%_
                (lambda (_%g201093201110%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201093201110%_))
                      (let ((_%e201095201113%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201093201110%_))))
                        (let ((_%hd201096201117%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201095201113%_)))
                              (_%tl201097201120%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201095201113%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201097201120%_))
                              (let ((_%e201098201123%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201097201120%_))))
                                (let ((_%hd201099201127%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201098201123%_)))
                                      (_%tl201100201130%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201098201123%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201100201130%_))
                                      ((lambda (_%L201133%_)
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
                                                           (cons _%L201133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd201099201127%_)
                                      (_%g201092201106%_ _%g201093201110%_))))
                              (_%g201092201106%_ _%g201093201110%_))))
                      (_%g201092201106%_ _%g201093201110%_)))))
          (_%g201091201147%_ _%$stx201088%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx201151%_)
        (let* ((_%g201155201173%_
                (lambda (_%g201156201169%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201156201169%_))))
               (_%g201154201228%_
                (lambda (_%g201156201177%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201156201177%_))
                      (let ((_%e201159201180%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201156201177%_))))
                        (let ((_%hd201160201184%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201159201180%_)))
                              (_%tl201161201187%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201159201180%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201161201187%_))
                              (let ((_%e201162201190%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201161201187%_))))
                                (let ((_%hd201163201194%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201162201190%_)))
                                      (_%tl201164201197%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201162201190%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201164201197%_))
                                      (let ((_%e201165201200%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201164201197%_))))
                                        (let ((_%hd201166201204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201165201200%_)))
                                              (_%tl201167201207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201165201200%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201167201207%_))
                                              ((lambda (_%L201210%_
                                                        _%L201212%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201212%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L201210%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd201166201204%_
                                               _%hd201163201194%_)
                                              (_%g201155201173%_
                                               _%g201156201177%_))))
                                      (_%g201155201173%_ _%g201156201177%_))))
                              (_%g201155201173%_ _%g201156201177%_))))
                      (_%g201155201173%_ _%g201156201177%_)))))
          (_%g201154201228%_ _%$stx201151%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx201232%_)
        (let* ((_%__stx205574205575%_ _%$stx201232%_)
               (_%g201239201300%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205574205575%_)))))
          (let ((_%__kont205577205578%_
                 (lambda (_%L201538%_ _%L201540%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201540%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201538%_ '()))
                                     '())))))
                (_%__kont205579205580%_
                 (lambda (_%L201477%_ _%L201479%_ _%L201480%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201480%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201479%_ '()))
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
                                 (cons _%L201477%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont205581205582%_
                 (lambda (_%L201401%_ _%L201403%_)
                   (cons _%L201403%_ (cons _%L201401%_ (cons '#f '())))))
                (_%__kont205583205584%_
                 (lambda (_%L201351%_ _%L201353%_ _%L201354%_)
                   (cons _%L201354%_
                         (cons _%L201353%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L201351%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx205574205575%_))
                (let ((_%e201243201508%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx205574205575%_))))
                  (let ((_%tl201245201515%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201243201508%_)))
                        (_%hd201244201512%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201243201508%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl201245201515%_))
                        (let ((_%e201246201518%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl201245201515%_))))
                          (let ((_%tl201248201525%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201246201518%_)))
                                (_%hd201247201522%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201246201518%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201248201525%_))
                                (let ((_%e201249201528%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201248201525%_))))
                                  (let ((_%tl201251201535%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201249201528%_)))
                                        (_%hd201250201532%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201249201528%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201251201535%_))
                                        (_%__kont205577205578%_
                                         _%hd201250201532%_
                                         _%hd201247201522%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl201251201535%_))
                                            (let ((_%e201264201453%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl201251201535%_))))
                                              (let ((_%tl201266201460%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201264201453%_)))
                                                    (_%hd201265201457%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201264201453%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd201265201457%_))
                                                    (let ((_%e201267201463%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd201265201457%_))))
                                                      (if (equal? _%e201267201463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201266201460%_))
                      (let ((_%e201268201467%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201266201460%_))))
                        (let ((_%tl201270201474%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201268201467%_)))
                              (_%hd201269201471%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201268201467%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201270201474%_))
                              (_%__kont205579205580%_
                               _%hd201269201471%_
                               _%hd201250201532%_
                               _%hd201247201522%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd201250201532%_))
                                  (let ((_%e201291201337%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd201250201532%_))))
                                    (declare (not safe))
                                    (_%g201239201300%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201239201300%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd201250201532%_))
                          (let ((_%e201291201337%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd201250201532%_))))
                            (if (equal? _%e201291201337%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl201266201460%_))
                                    (_%__kont205583205584%_
                                     _%hd201265201457%_
                                     _%hd201247201522%_
                                     _%hd201244201512%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g201239201300%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g201239201300%_))))
                          (let () (declare (not safe)) (_%g201239201300%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd201250201532%_))
                      (let ((_%e201291201337%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd201250201532%_))))
                        (if (equal? _%e201291201337%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201266201460%_))
                                (_%__kont205583205584%_
                                 _%hd201265201457%_
                                 _%hd201247201522%_
                                 _%hd201244201512%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g201239201300%_)))
                            (let () (declare (not safe)) (_%g201239201300%_))))
                      (let () (declare (not safe)) (_%g201239201300%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd201250201532%_))
                                                        (let ((_%e201291201337%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd201250201532%_))))
                  (if (equal? _%e201291201337%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201266201460%_))
                          (_%__kont205583205584%_
                           _%hd201265201457%_
                           _%hd201247201522%_
                           _%hd201244201512%_)
                          (let () (declare (not safe)) (_%g201239201300%_)))
                      (let () (declare (not safe)) (_%g201239201300%_))))
                (let () (declare (not safe)) (_%g201239201300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd201250201532%_))
                                                (let ((_%e201291201337%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd201250201532%_))))
                                                  (declare (not safe))
                                                  (_%g201239201300%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g201239201300%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl201248201525%_))
                                    (_%__kont205581205582%_
                                     _%hd201247201522%_
                                     _%hd201244201512%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g201239201300%_))))))
                        (let () (declare (not safe)) (_%g201239201300%_)))))
                (let () (declare (not safe)) (_%g201239201300%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx201559%_)
        (let* ((_%g201563201592%_
                (lambda (_%g201564201588%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201564201588%_))))
               (_%g201562201701%_
                (lambda (_%g201564201596%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201564201596%_))
                      (let ((_%e201566201599%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201564201596%_))))
                        (let ((_%hd201567201603%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201566201599%_)))
                              (_%tl201568201606%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201566201599%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201568201606%_))
                              (let ((_g206204_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201568201606%_
                                        '0))))
                                (begin
                                  (let ((_g206205_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g206204_)
                                               (##vector-length _g206204_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g206205_ 2)))
                                        (error "Context expects 2 values"
                                               _g206205_)))
                                  (let ((_%target201569201609%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206204_ 0)))
                                        (_%tl201571201612%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206204_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201571201612%_))
                                        (letrec ((_%loop201572201615%_
                                                  (lambda (_%hd201570201619%_
                                                           _%clause201576201622%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201570201619%_))
                                                        (let ((_%e201573201625%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201570201619%_))))
                  (let ((_%lp-hd201574201629%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201573201625%_)))
                        (_%lp-tl201575201632%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201573201625%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd201574201629%_))
                        (let ((_g206206_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd201574201629%_
                                  '0))))
                          (begin
                            (let ((_g206207_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g206206_)
                                         (##vector-length _g206206_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g206207_ 2)))
                                  (error "Context expects 2 values"
                                         _g206207_)))
                            (let ((_%target201578201635%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g206206_ 0)))
                                  (_%tl201580201638%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g206206_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201580201638%_))
                                  (letrec ((_%loop201581201641%_
                                            (lambda (_%hd201579201645%_
                                                     _%clause201585201648%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd201579201645%_))
                                                  (let ((_%e201582201651%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd201579201645%_))))
                                                    (let ((_%lp-hd201583201655%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201582201651%_)))
                                                          (_%lp-tl201584201658%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201582201651%_))))
                                                      (_%loop201581201641%_
                                                       _%lp-tl201584201658%_
                                                       (cons _%lp-hd201583201655%_
                                                             _%clause201585201648%_))))
                                                  (let ((_%clause201586201661%_
                                                         (reverse _%clause201585201648%_)))
                                                    (_%loop201572201615%_
                                                     _%lp-tl201575201632%_
                                                     (cons _%clause201586201661%_
                                                           _%clause201576201622%_)))))))
                                    (_%loop201581201641%_
                                     _%target201578201635%_
                                     '()))
                                  (_%g201563201592%_ _%g201564201596%_)))))
                        (_%g201563201592%_ _%g201564201596%_))))
                (let ((_%clause201577201665%_
                       (reverse _%clause201576201622%_)))
                  ((lambda (_%L201669%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp206208
                                              (lambda (_%g201684201689%_
                                                       _%g201685201692%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp206209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g201686201695%_ _%g201687201698%_)
                             (cons _%g201686201695%_ _%g201687201698%_))))
                      (declare (not safe))
                      (__foldr1 __tmp206209 '() _%g201684201689%_)))
              _%g201685201692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp206208
                                          '()
                                          _%L201669%_)))
                                 '())))
                   _%clause201577201665%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201572201615%_
                                           _%target201569201609%_
                                           '()))
                                        (_%g201563201592%_
                                         _%g201564201596%_)))))
                              (_%g201563201592%_ _%g201564201596%_))))
                      (_%g201563201592%_ _%g201564201596%_)))))
          (_%g201562201701%_ _%$stx201559%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx201707%_)
        (let* ((_%g201711201729%_
                (lambda (_%g201712201725%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201712201725%_))))
               (_%g201710201784%_
                (lambda (_%g201712201733%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201712201733%_))
                      (let ((_%e201715201736%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201712201733%_))))
                        (let ((_%hd201716201740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201715201736%_)))
                              (_%tl201717201743%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201715201736%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201717201743%_))
                              (let ((_%e201718201746%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201717201743%_))))
                                (let ((_%hd201719201750%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201718201746%_)))
                                      (_%tl201720201753%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201718201746%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201720201753%_))
                                      (let ((_%e201721201756%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201720201753%_))))
                                        (let ((_%hd201722201760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201721201756%_)))
                                              (_%tl201723201763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201721201756%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201723201763%_))
                                              ((lambda (_%L201766%_
                                                        _%L201768%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201768%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L201766%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd201722201760%_
                                               _%hd201719201750%_)
                                              (_%g201711201729%_
                                               _%g201712201733%_))))
                                      (_%g201711201729%_ _%g201712201733%_))))
                              (_%g201711201729%_ _%g201712201733%_))))
                      (_%g201711201729%_ _%g201712201733%_)))))
          (_%g201710201784%_ _%$stx201707%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx201788%_)
        (let* ((_%g201792201810%_
                (lambda (_%g201793201806%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201793201806%_))))
               (_%g201791201865%_
                (lambda (_%g201793201814%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201793201814%_))
                      (let ((_%e201796201817%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201793201814%_))))
                        (let ((_%hd201797201821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201796201817%_)))
                              (_%tl201798201824%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201796201817%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201798201824%_))
                              (let ((_%e201799201827%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201798201824%_))))
                                (let ((_%hd201800201831%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201799201827%_)))
                                      (_%tl201801201834%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201799201827%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201801201834%_))
                                      (let ((_%e201802201837%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201801201834%_))))
                                        (let ((_%hd201803201841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201802201837%_)))
                                              (_%tl201804201844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201802201837%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201804201844%_))
                                              ((lambda (_%L201847%_
                                                        _%L201849%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201849%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L201847%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd201803201841%_
                                               _%hd201800201831%_)
                                              (_%g201792201810%_
                                               _%g201793201814%_))))
                                      (_%g201792201810%_ _%g201793201814%_))))
                              (_%g201792201810%_ _%g201793201814%_))))
                      (_%g201792201810%_ _%g201793201814%_)))))
          (_%g201791201865%_ _%$stx201788%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx201869%_)
        (let* ((_%g201873201902%_
                (lambda (_%g201874201898%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201874201898%_))))
               (_%g201872202002%_
                (lambda (_%g201874201906%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201874201906%_))
                      (let ((_%e201877201909%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201874201906%_))))
                        (let ((_%hd201878201913%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201877201909%_)))
                              (_%tl201879201916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201877201909%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201879201916%_))
                              (let ((_g206210_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201879201916%_
                                        '0))))
                                (begin
                                  (let ((_g206211_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g206210_)
                                               (##vector-length _g206210_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g206211_ 2)))
                                        (error "Context expects 2 values"
                                               _g206211_)))
                                  (let ((_%target201880201919%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206210_ 0)))
                                        (_%tl201882201922%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206210_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201882201922%_))
                                        (letrec ((_%loop201883201925%_
                                                  (lambda (_%hd201881201929%_
                                                           _%rule201887201932%_
                                                           _%proc201888201934%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201881201929%_))
                                                        (let ((_%e201884201937%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201881201929%_))))
                  (let ((_%lp-hd201885201941%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201884201937%_)))
                        (_%lp-tl201886201944%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201884201937%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd201885201941%_))
                        (let ((_%e201891201947%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd201885201941%_))))
                          (let ((_%hd201892201951%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201891201947%_)))
                                (_%tl201893201954%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201891201947%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201893201954%_))
                                (let ((_%e201894201957%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201893201954%_))))
                                  (let ((_%hd201895201961%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201894201957%_)))
                                        (_%tl201896201964%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201894201957%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201896201964%_))
                                        (_%loop201883201925%_
                                         _%lp-tl201886201944%_
                                         (cons _%hd201895201961%_
                                               _%rule201887201932%_)
                                         (cons _%hd201892201951%_
                                               _%proc201888201934%_))
                                        (_%g201873201902%_
                                         _%g201874201906%_))))
                                (_%g201873201902%_ _%g201874201906%_))))
                        (_%g201873201902%_ _%g201874201906%_))))
                (let ((_%rule201889201967%_ (reverse _%rule201887201932%_))
                      (_%proc201890201970%_ (reverse _%proc201888201934%_)))
                  ((lambda (_%L201973%_ _%L201975%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L201973%_
                                _%L201975%_))
                             (let ((__tmp206212
                                    (lambda (_%g201990201994%_
                                             _%g201991201997%_
                                             _%g201992201999%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g201991201997%_
                                                        (cons _%g201990201994%_
                                                              '())))
                                            _%g201992201999%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp206212
                                '()
                                _%L201973%_
                                _%L201975%_)))))
                   _%rule201889201967%_
                   _%proc201890201970%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201883201925%_
                                           _%target201880201919%_
                                           '()
                                           '()))
                                        (_%g201873201902%_
                                         _%g201874201906%_)))))
                              (_%g201873201902%_ _%g201874201906%_))))
                      (_%g201873201902%_ _%g201874201906%_)))))
          (_%g201872202002%_ _%$stx201869%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx202007%_)
        (let* ((_%g202011202029%_
                (lambda (_%g202012202025%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202012202025%_))))
               (_%g202010202084%_
                (lambda (_%g202012202033%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202012202033%_))
                      (let ((_%e202015202036%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202012202033%_))))
                        (let ((_%hd202016202040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202015202036%_)))
                              (_%tl202017202043%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202015202036%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202017202043%_))
                              (let ((_%e202018202046%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202017202043%_))))
                                (let ((_%hd202019202050%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202018202046%_)))
                                      (_%tl202020202053%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202018202046%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202020202053%_))
                                      (let ((_%e202021202056%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202020202053%_))))
                                        (let ((_%hd202022202060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202021202056%_)))
                                              (_%tl202023202063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202021202056%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202023202063%_))
                                              ((lambda (_%L202066%_
                                                        _%L202068%_)
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
                                                   (cons _%L202068%_ '()))
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
                 (cons _%L202066%_ '())))
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
                                   (cons _%L202068%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd202022202060%_
                                               _%hd202019202050%_)
                                              (_%g202011202029%_
                                               _%g202012202033%_))))
                                      (_%g202011202029%_ _%g202012202033%_))))
                              (_%g202011202029%_ _%g202012202033%_))))
                      (_%g202011202029%_ _%g202012202033%_)))))
          (_%g202010202084%_ _%$stx202007%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx202088%_)
        (let* ((_%__stx205692205693%_ _%$stx202088%_)
               (_%g202093202118%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205692205693%_)))))
          (let ((_%__kont205695205696%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont205697205698%_
                 (lambda (_%L202165%_ _%L202167%_ _%L202168%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L202168%_ (cons _%L202167%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L202165%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx205692205693%_))
                (let ((_%e202095202194%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx205692205693%_))))
                  (let ((_%tl202097202201%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202095202194%_)))
                        (_%hd202096202198%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202095202194%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl202097202201%_))
                        (_%__kont205695205696%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl202097202201%_))
                            (let ((_%e202104202135%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl202097202201%_))))
                              (let ((_%tl202106202142%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202104202135%_)))
                                    (_%hd202105202139%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202104202135%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd202105202139%_))
                                    (let ((_%e202107202145%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd202105202139%_))))
                                      (let ((_%tl202109202152%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e202107202145%_)))
                                            (_%hd202108202149%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e202107202145%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202109202152%_))
                                            (let ((_%e202110202155%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl202109202152%_))))
                                              (let ((_%tl202112202162%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202110202155%_)))
                                                    (_%hd202111202159%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202110202155%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl202112202162%_))
                                                    (_%__kont205697205698%_
                                                     _%tl202106202142%_
                                                     _%hd202111202159%_
                                                     _%hd202108202149%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g202093202118%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g202093202118%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g202093202118%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g202093202118%_))))))
                (let () (declare (not safe)) (_%g202093202118%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx202212%_)
        (let* ((_%__stx205736205737%_ _%$stx202212%_)
               (_%g202217202248%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205736205737%_)))))
          (let ((_%__kont205739205740%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont205741205742%_
                 (lambda (_%L202315%_ _%L202317%_ _%L202318%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L202318%_
                                           (let ((__tmp206213
                                                  (lambda (_%g202338202341%_
                                                           _%g202339202344%_)
                                                    (cons _%g202338202341%_
                                                          _%g202339202344%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp206213
                                              '()
                                              _%L202317%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L202315%_)
                                     '()))))))
            (let ((_%__match205779205780%_
                   (lambda (_%e202225202255%_
                            _%hd202226202259%_
                            _%tl202227202262%_
                            _%e202228202265%_
                            _%hd202229202269%_
                            _%tl202230202272%_
                            _%e202231202275%_
                            _%hd202232202279%_
                            _%tl202233202282%_
                            _%__splice205743205744%_
                            _%target202234202285%_
                            _%tl202236202288%_)
                     (letrec ((_%loop202237202291%_
                               (lambda (_%hd202235202295%_ _%sig202241202298%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd202235202295%_))
                                     (let ((_%e202238202301%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd202235202295%_))))
                                       (let ((_%lp-tl202240202308%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e202238202301%_)))
                                             (_%lp-hd202239202305%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e202238202301%_))))
                                         (_%loop202237202291%_
                                          _%lp-tl202240202308%_
                                          (cons _%lp-hd202239202305%_
                                                _%sig202241202298%_))))
                                     (let ((_%sig202242202311%_
                                            (reverse _%sig202241202298%_)))
                                       (_%__kont205741205742%_
                                        _%tl202230202272%_
                                        _%sig202242202311%_
                                        _%hd202232202279%_))))))
                       (_%loop202237202291%_ _%target202234202285%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205736205737%_))
                  (let ((_%e202219202354%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx205736205737%_))))
                    (let ((_%tl202221202361%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202219202354%_)))
                          (_%hd202220202358%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202219202354%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202221202361%_))
                          (_%__kont205739205740%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202221202361%_))
                              (let ((_%e202228202265%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202221202361%_))))
                                (let ((_%tl202230202272%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202228202265%_)))
                                      (_%hd202229202269%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202228202265%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd202229202269%_))
                                      (let ((_%e202231202275%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd202229202269%_))))
                                        (let ((_%tl202233202282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202231202275%_)))
                                              (_%hd202232202279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202231202275%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl202233202282%_))
                                              (let ((_%__splice205743205744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl202233202282%_
                                                        '0))))
                                                (let ((_%tl202236202288%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205743205744%_
                                                          '1)))
                                                      (_%target202234202285%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205743205744%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202236202288%_))
                                                      (_%__match205779205780%_
                                                       _%e202219202354%_
                                                       _%hd202220202358%_
                                                       _%tl202221202361%_
                                                       _%e202228202265%_
                                                       _%hd202229202269%_
                                                       _%tl202230202272%_
                                                       _%e202231202275%_
                                                       _%hd202232202279%_
                                                       _%tl202233202282%_
                                                       _%__splice205743205744%_
                                                       _%target202234202285%_
                                                       _%tl202236202288%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g202217202248%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202217202248%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202217202248%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g202217202248%_))))))
                  (let () (declare (not safe)) (_%g202217202248%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx202373%_)
        (let* ((_%__stx205782205783%_ _%$stx202373%_)
               (_%g202378202425%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205782205783%_)))))
          (let ((_%__kont205785205786%_
                 (lambda (_%L202587%_ _%L202589%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L202589%_
                               (let ((__tmp206214
                                      (lambda (_%g202609202612%_
                                               _%g202610202615%_)
                                        (cons _%g202609202612%_
                                              _%g202610202615%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp206214 '() _%L202587%_))))))
                (_%__kont205789205790%_
                 (lambda (_%L202482%_ _%L202484%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L202484%_
                               (let ((__tmp206215
                                      (lambda (_%g202501202504%_
                                               _%g202502202507%_)
                                        (cons _%g202501202504%_
                                              _%g202502202507%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp206215 '() _%L202482%_)))))))
            (let* ((_%__match205849205850%_
                    (lambda (_%e202405202432%_
                             _%hd202406202436%_
                             _%tl202407202439%_
                             _%e202408202442%_
                             _%hd202409202446%_
                             _%tl202410202449%_
                             _%__splice205791205792%_
                             _%target202411202452%_
                             _%tl202413202455%_)
                      (letrec ((_%loop202414202458%_
                                (lambda (_%hd202412202462%_
                                         _%sig202418202465%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd202412202462%_))
                                      (let ((_%e202415202468%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd202412202462%_))))
                                        (let ((_%lp-tl202417202475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202415202468%_)))
                                              (_%lp-hd202416202472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202415202468%_))))
                                          (_%loop202414202458%_
                                           _%lp-tl202417202475%_
                                           (cons _%lp-hd202416202472%_
                                                 _%sig202418202465%_))))
                                      (let ((_%sig202419202478%_
                                             (reverse _%sig202418202465%_)))
                                        (_%__kont205789205790%_
                                         _%sig202419202478%_
                                         _%hd202409202446%_))))))
                        (_%loop202414202458%_ _%target202411202452%_ '()))))
                   (_%__match205841205842%_
                    (lambda (_%e202405202432%_
                             _%hd202406202436%_
                             _%tl202407202439%_
                             _%e202408202442%_
                             _%hd202409202446%_
                             _%tl202410202449%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl202410202449%_))
                          (let ((_%__splice205791205792%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl202410202449%_
                                    '0))))
                            (let ((_%tl202413202455%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice205791205792%_
                                      '1)))
                                  (_%target202411202452%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice205791205792%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl202413202455%_))
                                  (_%__match205849205850%_
                                   _%e202405202432%_
                                   _%hd202406202436%_
                                   _%tl202407202439%_
                                   _%e202408202442%_
                                   _%hd202409202446%_
                                   _%tl202410202449%_
                                   _%__splice205791205792%_
                                   _%target202411202452%_
                                   _%tl202413202455%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g202378202425%_)))))
                          (let () (declare (not safe)) (_%g202378202425%_)))))
                   (_%__match205829205830%_
                    (lambda (_%e202382202517%_
                             _%hd202383202521%_
                             _%tl202384202524%_
                             _%e202385202527%_
                             _%hd202386202531%_
                             _%tl202387202534%_
                             _%e202388202537%_
                             _%hd202389202541%_
                             _%tl202390202544%_
                             _%e202391202547%_
                             _%hd202392202551%_
                             _%tl202393202554%_
                             _%__splice205787205788%_
                             _%target202394202557%_
                             _%tl202396202560%_)
                      (letrec ((_%loop202397202563%_
                                (lambda (_%hd202395202567%_
                                         _%sig202401202570%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd202395202567%_))
                                      (let ((_%e202398202573%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd202395202567%_))))
                                        (let ((_%lp-tl202400202580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202398202573%_)))
                                              (_%lp-hd202399202577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202398202573%_))))
                                          (_%loop202397202563%_
                                           _%lp-tl202400202580%_
                                           (cons _%lp-hd202399202577%_
                                                 _%sig202401202570%_))))
                                      (let ((_%sig202402202583%_
                                             (reverse _%sig202401202570%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl202390202544%_))
                                            (_%__kont205785205786%_
                                             _%sig202402202583%_
                                             _%hd202386202531%_)
                                            (_%__match205841205842%_
                                             _%e202382202517%_
                                             _%hd202383202521%_
                                             _%tl202384202524%_
                                             _%e202385202527%_
                                             _%hd202386202531%_
                                             _%tl202387202534%_)))))))
                        (_%loop202397202563%_ _%target202394202557%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205782205783%_))
                  (let ((_%e202382202517%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx205782205783%_))))
                    (let ((_%tl202384202524%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202382202517%_)))
                          (_%hd202383202521%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202382202517%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202384202524%_))
                          (let ((_%e202385202527%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl202384202524%_))))
                            (let ((_%tl202387202534%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202385202527%_)))
                                  (_%hd202386202531%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202385202527%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202387202534%_))
                                  (let ((_%e202388202537%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl202387202534%_))))
                                    (let ((_%tl202390202544%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202388202537%_)))
                                          (_%hd202389202541%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202388202537%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd202389202541%_))
                                          (let ((_%e202391202547%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd202389202541%_))))
                                            (let ((_%tl202393202554%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202391202547%_)))
                                                  (_%hd202392202551%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202391202547%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd202392202551%_))
                                                  (if (let ((__tmp206216
                                                             |gxc[1]#_g206217_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp206216
                                                         _%hd202392202551%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl202393202554%_))
                                                          (let ((_%__splice205787205788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl202393202554%_ '0))))
                    (let ((_%tl202396202560%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice205787205788%_ '1)))
                          (_%target202394202557%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice205787205788%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202396202560%_))
                          (_%__match205829205830%_
                           _%e202382202517%_
                           _%hd202383202521%_
                           _%tl202384202524%_
                           _%e202385202527%_
                           _%hd202386202531%_
                           _%tl202387202534%_
                           _%e202388202537%_
                           _%hd202389202541%_
                           _%tl202390202544%_
                           _%e202391202547%_
                           _%hd202392202551%_
                           _%tl202393202554%_
                           _%__splice205787205788%_
                           _%target202394202557%_
                           _%tl202396202560%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202387202534%_))
                              (let ((_%__splice205791205792%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202387202534%_
                                        '0))))
                                (let ((_%tl202413202455%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice205791205792%_
                                          '1)))
                                      (_%target202411202452%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice205791205792%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202413202455%_))
                                      (_%__match205849205850%_
                                       _%e202382202517%_
                                       _%hd202383202521%_
                                       _%tl202384202524%_
                                       _%e202385202527%_
                                       _%hd202386202531%_
                                       _%tl202387202534%_
                                       _%__splice205791205792%_
                                       _%target202411202452%_
                                       _%tl202413202455%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g202378202425%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g202378202425%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl202387202534%_))
                      (let ((_%__splice205791205792%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl202387202534%_
                                '0))))
                        (let ((_%tl202413202455%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205791205792%_ '1)))
                              (_%target202411202452%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205791205792%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202413202455%_))
                              (_%__match205849205850%_
                               _%e202382202517%_
                               _%hd202383202521%_
                               _%tl202384202524%_
                               _%e202385202527%_
                               _%hd202386202531%_
                               _%tl202387202534%_
                               _%__splice205791205792%_
                               _%target202411202452%_
                               _%tl202413202455%_)
                              (let ()
                                (declare (not safe))
                                (_%g202378202425%_)))))
                      (let () (declare (not safe)) (_%g202378202425%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl202387202534%_))
                  (let ((_%__splice205791205792%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl202387202534%_ '0))))
                    (let ((_%tl202413202455%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice205791205792%_ '1)))
                          (_%target202411202452%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice205791205792%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202413202455%_))
                          (_%__match205849205850%_
                           _%e202382202517%_
                           _%hd202383202521%_
                           _%tl202384202524%_
                           _%e202385202527%_
                           _%hd202386202531%_
                           _%tl202387202534%_
                           _%__splice205791205792%_
                           _%target202411202452%_
                           _%tl202413202455%_)
                          (let () (declare (not safe)) (_%g202378202425%_)))))
                  (let () (declare (not safe)) (_%g202378202425%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl202387202534%_))
                                                      (let ((_%__splice205791205792%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl202387202534%_ '0))))
                (let ((_%tl202413202455%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice205791205792%_ '1)))
                      (_%target202411202452%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice205791205792%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl202413202455%_))
                      (_%__match205849205850%_
                       _%e202382202517%_
                       _%hd202383202521%_
                       _%tl202384202524%_
                       _%e202385202527%_
                       _%hd202386202531%_
                       _%tl202387202534%_
                       _%__splice205791205792%_
                       _%target202411202452%_
                       _%tl202413202455%_)
                      (let () (declare (not safe)) (_%g202378202425%_)))))
              (let () (declare (not safe)) (_%g202378202425%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl202387202534%_))
                                              (let ((_%__splice205791205792%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl202387202534%_
                                                        '0))))
                                                (let ((_%tl202413202455%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205791205792%_
                                                          '1)))
                                                      (_%target202411202452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205791205792%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202413202455%_))
                                                      (_%__match205849205850%_
                                                       _%e202382202517%_
                                                       _%hd202383202521%_
                                                       _%tl202384202524%_
                                                       _%e202385202527%_
                                                       _%hd202386202531%_
                                                       _%tl202387202534%_
                                                       _%__splice205791205792%_
                                                       _%target202411202452%_
                                                       _%tl202413202455%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g202378202425%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202378202425%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl202387202534%_))
                                      (let ((_%__splice205791205792%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl202387202534%_
                                                '0))))
                                        (let ((_%tl202413202455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205791205792%_
                                                  '1)))
                                              (_%target202411202452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205791205792%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202413202455%_))
                                              (_%__match205849205850%_
                                               _%e202382202517%_
                                               _%hd202383202521%_
                                               _%tl202384202524%_
                                               _%e202385202527%_
                                               _%hd202386202531%_
                                               _%tl202387202534%_
                                               _%__splice205791205792%_
                                               _%target202411202452%_
                                               _%tl202413202455%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g202378202425%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202378202425%_))))))
                          (let () (declare (not safe)) (_%g202378202425%_)))))
                  (let () (declare (not safe)) (_%g202378202425%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx203772%_ _%id203774%_)
        (let ((_%proc203778%_
               (let ((__tmp206218
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id203774%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp206218))))
          (if (procedure? _%proc203778%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx203772%_
                 _%id203774%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx203763%_ _%id203765%_)
        (let ((_%klass203769%_
               (let ((__tmp206219
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id203765%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp206219))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass203769%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx203763%_
                 _%id203765%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx203013%_ _%proc203015%_ _%sig203016%_)
        (letrec ((_%signature-arity203018%_
                  (lambda (_%args203695%_)
                    (let _%loop203698%_ ((_%rest203701%_ _%args203695%_)
                                         (_%count203703%_ '0))
                      (let* ((_%rest203704203715%_ _%rest203701%_)
                             (_%E203708203721%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest203704203715%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K203711203752%_
                               (lambda (_%rest203749%_)
                                 (_%loop203698%_
                                  _%rest203749%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count203703%_ '1)))))
                              (_%K203710203741%_ (lambda () _%count203703%_))
                              (_%K203709203729%_
                               (lambda () (cons _%count203703%_ '()))))
                          (let ((_%try-match203706203745%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest203704203715%_))
                                       (_%K203710203741%_)
                                       (_%K203709203729%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest203704203715%_))
                                (let* ((_%tl203713203756%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest203704203715%_)))
                                       (_%rest203760%_ _%tl203713203756%_))
                                  (_%K203711203752%_ _%rest203760%_))
                                (_%try-match203706203745%_))))))))
                 (_%make-signature203020%_
                  (lambda (_%args203577%_
                           _%return203579%_
                           _%effect203580%_
                           _%unchecked203581%_)
                    (let ((__tmp206220
                           (lambda (_%g203582203584%_)
                             (|gxc[1]#verify-class!|
                              _%ctx203013%_
                              _%g203582203584%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp206220 _%args203577%_))
                    (|gxc[1]#verify-class!| _%ctx203013%_ _%return203579%_)
                    (if _%unchecked203581%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx203013%_
                         _%unchecked203581%_)
                        '#!void)
                    (let ((_%arity203588%_
                           (_%signature-arity203018%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args203577%_)))))
                      (if _%effect203580%_
                          (let ((_%effect203591%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect203580%_))))
                            (if (and (list? _%effect203591%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect203591%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx203013%_
                                   _%proc203015%_
                                   _%effect203591%_))))
                          '#!void)
                      (cons _%arity203588%_
                            (cons (let* ((_%g203594203617%_
                                          (lambda (_%g203595203613%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g203595203613%_))))
                                         (_%g203593203691%_
                                          (lambda (_%g203595203621%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g203595203621%_))
                                                (let ((_%e203600203624%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g203595203621%_))))
                                                  (let ((_%hd203601203628%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203600203624%_)))
                                                        (_%tl203602203631%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203600203624%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl203602203631%_))
                                                        (let ((_%e203603203634%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl203602203631%_))))
                  (let ((_%hd203604203638%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203603203634%_)))
                        (_%tl203605203641%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203603203634%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl203605203641%_))
                        (let ((_%e203606203644%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl203605203641%_))))
                          (let ((_%hd203607203648%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203606203644%_)))
                                (_%tl203608203651%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203606203644%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203608203651%_))
                                (let ((_%e203609203654%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203608203651%_))))
                                  (let ((_%hd203610203658%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203609203654%_)))
                                        (_%tl203611203661%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203609203654%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203611203661%_))
                                        ((lambda (_%L203664%_
                                                  _%L203666%_
                                                  _%L203667%_
                                                  _%L203668%_)
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
                           (cons _%L203668%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L203667%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L203666%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L203664%_ '()))
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
                                         _%hd203610203658%_
                                         _%hd203607203648%_
                                         _%hd203604203638%_
                                         _%hd203601203628%_)
                                        (_%g203594203617%_
                                         _%g203595203621%_))))
                                (_%g203594203617%_ _%g203595203621%_))))
                        (_%g203594203617%_ _%g203595203621%_))))
                (_%g203594203617%_ _%g203595203621%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g203594203617%_
                                                 _%g203595203621%_)))))
                                    (_%g203593203691%_
                                     (list _%args203577%_
                                           _%return203579%_
                                           _%effect203580%_
                                           _%unchecked203581%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx203013%_ _%proc203015%_)
          (let* ((_%__stx205860205861%_ _%sig203016%_)
                 (_%g203027203130%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx205860205861%_)))))
            (let ((_%__kont205863205864%_
                   (lambda (_%L203558%_ _%L203560%_)
                     (_%make-signature203020%_
                      _%L203560%_
                      _%L203558%_
                      '#f
                      '#f)))
                  (_%__kont205865205866%_
                   (lambda (_%L203509%_ _%L203511%_ _%L203512%_)
                     (_%make-signature203020%_
                      _%L203512%_
                      _%L203511%_
                      _%L203509%_
                      '#f)))
                  (_%__kont205867205868%_
                   (lambda (_%L203433%_ _%L203435%_ _%L203436%_)
                     (_%make-signature203020%_
                      _%L203436%_
                      _%L203435%_
                      _%L203433%_
                      (let ((__tmp206221
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc203015%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp206221)))))
                  (_%__kont205869205870%_
                   (lambda (_%L203339%_ _%L203341%_ _%L203342%_ _%L203343%_)
                     (_%make-signature203020%_
                      _%L203343%_
                      _%L203342%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L203339%_)))))
                  (_%__kont205871205872%_
                   (lambda (_%L203246%_ _%L203248%_)
                     (_%make-signature203020%_
                      _%L203248%_
                      _%L203246%_
                      '#f
                      (let ((__tmp206222
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc203015%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp206222)))))
                  (_%__kont205873205874%_
                   (lambda (_%L203181%_ _%L203183%_ _%L203184%_)
                     (_%make-signature203020%_
                      _%L203184%_
                      _%L203183%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L203181%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205860205861%_))
                  (let ((_%e203031203538%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx205860205861%_))))
                    (let ((_%tl203033203545%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203031203538%_)))
                          (_%hd203032203542%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203031203538%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203033203545%_))
                          (let ((_%e203034203548%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl203033203545%_))))
                            (let ((_%tl203036203555%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203034203548%_)))
                                  (_%hd203035203552%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203034203548%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203036203555%_))
                                  (_%__kont205863205864%_
                                   _%hd203035203552%_
                                   _%hd203032203542%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203036203555%_))
                                      (let ((_%e203046203485%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203036203555%_))))
                                        (let ((_%tl203048203492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203046203485%_)))
                                              (_%hd203047203489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203046203485%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd203047203489%_))
                                              (let ((_%e203049203495%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd203047203489%_))))
                                                (if (equal? _%e203049203495%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl203048203492%_))
                                                        (let ((_%e203050203499%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl203048203492%_))))
                  (let ((_%tl203052203506%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203050203499%_)))
                        (_%hd203051203503%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203050203499%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl203052203506%_))
                        (_%__kont205865205866%_
                         _%hd203051203503%_
                         _%hd203035203552%_
                         _%hd203032203542%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl203052203506%_))
                            (let ((_%e203069203419%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl203052203506%_))))
                              (let ((_%tl203071203426%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203069203419%_)))
                                    (_%hd203070203423%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203069203419%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd203070203423%_))
                                    (let ((_%e203072203429%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd203070203423%_))))
                                      (if (equal? _%e203072203429%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203071203426%_))
                                              (_%__kont205867205868%_
                                               _%hd203051203503%_
                                               _%hd203035203552%_
                                               _%hd203032203542%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203071203426%_))
                                                  (let ((_%e203094203329%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl203071203426%_))))
                                                    (let ((_%tl203096203336%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203094203329%_)))
                                                          (_%hd203095203333%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203094203329%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203096203336%_))
                                                          (_%__kont205869205870%_
                                                           _%hd203095203333%_
                                                           _%hd203051203503%_
                                                           _%hd203035203552%_
                                                           _%hd203032203542%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g203027203130%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g203027203130%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g203027203130%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g203027203130%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g203027203130%_))))))
                (let () (declare (not safe)) (_%g203027203130%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e203049203495%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl203048203492%_))
                                                            (_%__kont205871205872%_
                                                             _%hd203035203552%_
                                                             _%hd203032203542%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl203048203492%_))
                        (let ((_%e203122203171%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl203048203492%_))))
                          (let ((_%tl203124203178%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203122203171%_)))
                                (_%hd203123203175%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203122203171%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl203124203178%_))
                                (_%__kont205873205874%_
                                 _%hd203123203175%_
                                 _%hd203035203552%_
                                 _%hd203032203542%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g203027203130%_)))))
                        (let () (declare (not safe)) (_%g203027203130%_))))
                (let () (declare (not safe)) (_%g203027203130%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g203027203130%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203027203130%_))))))
                          (let () (declare (not safe)) (_%g203027203130%_)))))
                  (let () (declare (not safe)) (_%g203027203130%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig202624%_)
        (let* ((_%g202627202707%_
                (lambda (_%g202628202703%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202628202703%_))))
               (_%g202626203009%_
                (lambda (_%g202628202711%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202628202711%_))
                      (let ((_%e202634202714%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202628202711%_))))
                        (let ((_%hd202635202718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202634202714%_)))
                              (_%tl202636202721%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202634202714%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202636202721%_))
                              (let ((_%e202637202724%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202636202721%_))))
                                (let ((_%hd202638202728%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202637202724%_)))
                                      (_%tl202639202731%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202637202724%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd202638202728%_))
                                      (let ((_%e202640202734%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd202638202728%_))))
                                        (if (equal? _%e202640202734%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl202639202731%_))
                                                (let ((_%e202641202738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl202639202731%_))))
                                                  (let ((_%hd202642202742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202641202738%_)))
                                                        (_%tl202643202745%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202641202738%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202642202742%_))
                                                        (let ((_%e202644202748%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202642202742%_))))
                  (let ((_%hd202645202752%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202644202748%_)))
                        (_%tl202646202755%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202644202748%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd202645202752%_))
                        (if (let ((__tmp206223 |gxc[1]#_g206224_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp206223
                               _%hd202645202752%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202646202755%_))
                                (let ((_%e202647202758%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202646202755%_))))
                                  (let ((_%hd202648202762%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202647202758%_)))
                                        (_%tl202649202765%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202647202758%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202649202765%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202643202745%_))
                                            (let ((_%e202650202768%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl202643202745%_))))
                                              (let ((_%hd202651202772%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202650202768%_)))
                                                    (_%tl202652202775%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202650202768%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd202651202772%_))
                                                    (let ((_%e202653202778%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd202651202772%_))))
                                                      (if (equal? _%e202653202778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl202652202775%_))
                      (let ((_%e202654202782%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl202652202775%_))))
                        (let ((_%hd202655202786%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202654202782%_)))
                              (_%tl202656202789%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202654202782%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd202655202786%_))
                              (let ((_%e202657202792%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd202655202786%_))))
                                (let ((_%hd202658202796%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202657202792%_)))
                                      (_%tl202659202799%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202657202792%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd202658202796%_))
                                      (if (let ((__tmp206225
                                                 |gxc[1]#_g206226_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp206225
                                             _%hd202658202796%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202659202799%_))
                                              (let ((_%e202660202802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202659202799%_))))
                                                (let ((_%hd202661202806%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202660202802%_)))
                                                      (_%tl202662202809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202660202802%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202662202809%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl202656202789%_))
                                                          (let ((_%e202663202812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl202656202789%_))))
                    (let ((_%hd202664202816%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202663202812%_)))
                          (_%tl202665202819%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202663202812%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd202664202816%_))
                          (let ((_%e202666202822%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd202664202816%_))))
                            (if (equal? _%e202666202822%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl202665202819%_))
                                    (let ((_%e202667202826%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl202665202819%_))))
                                      (let ((_%hd202668202830%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e202667202826%_)))
                                            (_%tl202669202833%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e202667202826%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd202668202830%_))
                                            (let ((_%e202670202836%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd202668202830%_))))
                                              (let ((_%hd202671202840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202670202836%_)))
                                                    (_%tl202672202843%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202670202836%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd202671202840%_))
                                                    (if (let ((__tmp206227
                                                               |gxc[1]#_g206228_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp206227
                                                           _%hd202671202840%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl202672202843%_))
                                                            (let ((_%e202673202846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl202672202843%_))))
                      (let ((_%hd202674202850%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202673202846%_)))
                            (_%tl202675202853%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202673202846%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl202675202853%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202669202833%_))
                                (let ((_%e202676202856%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202669202833%_))))
                                  (let ((_%hd202677202860%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202676202856%_)))
                                        (_%tl202678202863%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202676202856%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd202677202860%_))
                                        (let ((_%e202679202866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd202677202860%_))))
                                          (if (equal? _%e202679202866%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202678202863%_))
                                                  (let ((_%e202680202870%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl202678202863%_))))
                                                    (let ((_%hd202681202874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202680202870%_)))
                                                          (_%tl202682202877%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202680202870%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd202681202874%_))
                                                          (let ((_%e202683202880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd202681202874%_))))
                    (let ((_%hd202684202884%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202683202880%_)))
                          (_%tl202685202887%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202683202880%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd202684202884%_))
                          (if (let ((__tmp206229 |gxc[1]#_g206230_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp206229
                                 _%hd202684202884%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202685202887%_))
                                  (let ((_%e202686202890%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl202685202887%_))))
                                    (let ((_%hd202687202894%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202686202890%_)))
                                          (_%tl202688202897%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202686202890%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202688202897%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202682202877%_))
                                              (let ((_%e202689202900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202682202877%_))))
                                                (let ((_%hd202690202904%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202689202900%_)))
                                                      (_%tl202691202907%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202689202900%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd202690202904%_))
                                                      (let ((_%e202692202910%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd202690202904%_))))
                (if (equal? _%e202692202910%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl202691202907%_))
                        (let ((_%e202693202914%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl202691202907%_))))
                          (let ((_%hd202694202918%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202693202914%_)))
                                (_%tl202695202921%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202693202914%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd202694202918%_))
                                (let ((_%e202696202924%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd202694202918%_))))
                                  (let ((_%hd202697202928%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202696202924%_)))
                                        (_%tl202698202931%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202696202924%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd202697202928%_))
                                        (if (let ((__tmp206231
                                                   |gxc[1]#_g206232_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp206231
                                               _%hd202697202928%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl202698202931%_))
                                                (let ((_%e202699202934%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl202698202931%_))))
                                                  (let ((_%hd202700202938%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202699202934%_)))
                                                        (_%tl202701202941%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202699202934%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl202701202941%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl202695202921%_))
                                                            ((lambda (_%L202944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L202946%_
                              _%L202947%_
                              _%L202948%_
                              _%L202949%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L202946%_))
                           (cons _%L202946%_
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
                       (cons _%L202948%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L202944%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd202700202938%_
                     _%hd202687202894%_
                     _%hd202674202850%_
                     _%hd202661202806%_
                     _%hd202648202762%_)
                    (_%g202627202707%_ _%g202628202711%_))
                (_%g202627202707%_ _%g202628202711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g202627202707%_
                                                 _%g202628202711%_))
                                            (_%g202627202707%_
                                             _%g202628202711%_))
                                        (_%g202627202707%_
                                         _%g202628202711%_))))
                                (_%g202627202707%_ _%g202628202711%_))))
                        (_%g202627202707%_ _%g202628202711%_))
                    (_%g202627202707%_ _%g202628202711%_)))
              (_%g202627202707%_ _%g202628202711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202627202707%_
                                               _%g202628202711%_))
                                          (_%g202627202707%_
                                           _%g202628202711%_))))
                                  (_%g202627202707%_ _%g202628202711%_))
                              (_%g202627202707%_ _%g202628202711%_))
                          (_%g202627202707%_ _%g202628202711%_))))
                  (_%g202627202707%_ _%g202628202711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g202627202707%_
                                                   _%g202628202711%_))
                                              (_%g202627202707%_
                                               _%g202628202711%_)))
                                        (_%g202627202707%_
                                         _%g202628202711%_))))
                                (_%g202627202707%_ _%g202628202711%_))
                            (_%g202627202707%_ _%g202628202711%_))))
                    (_%g202627202707%_ _%g202628202711%_))
                (_%g202627202707%_ _%g202628202711%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g202627202707%_
                                                     _%g202628202711%_))))
                                            (_%g202627202707%_
                                             _%g202628202711%_))))
                                    (_%g202627202707%_ _%g202628202711%_))
                                (_%g202627202707%_ _%g202628202711%_)))
                          (_%g202627202707%_ _%g202628202711%_))))
                  (_%g202627202707%_ _%g202628202711%_))
              (_%g202627202707%_ _%g202628202711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202627202707%_
                                               _%g202628202711%_))
                                          (_%g202627202707%_
                                           _%g202628202711%_))
                                      (_%g202627202707%_ _%g202628202711%_))))
                              (_%g202627202707%_ _%g202628202711%_))))
                      (_%g202627202707%_ _%g202628202711%_))
                  (_%g202627202707%_ _%g202628202711%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g202627202707%_
                                                     _%g202628202711%_))))
                                            (_%g202627202707%_
                                             _%g202628202711%_))
                                        (_%g202627202707%_
                                         _%g202628202711%_))))
                                (_%g202627202707%_ _%g202628202711%_))
                            (_%g202627202707%_ _%g202628202711%_))
                        (_%g202627202707%_ _%g202628202711%_))))
                (_%g202627202707%_ _%g202628202711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g202627202707%_
                                                 _%g202628202711%_))
                                            (_%g202627202707%_
                                             _%g202628202711%_)))
                                      (_%g202627202707%_ _%g202628202711%_))))
                              (_%g202627202707%_ _%g202628202711%_))))
                      (_%g202627202707%_ _%g202628202711%_)))))
          (_%g202626203009%_ _%sig202624%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx203781%_)
        (let* ((_%g203784203802%_
                (lambda (_%g203785203798%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203785203798%_))))
               (_%g203783203857%_
                (lambda (_%g203785203806%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203785203806%_))
                      (let ((_%e203788203809%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203785203806%_))))
                        (let ((_%hd203789203813%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203788203809%_)))
                              (_%tl203790203816%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203788203809%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203790203816%_))
                              (let ((_%e203791203819%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203790203816%_))))
                                (let ((_%hd203792203823%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203791203819%_)))
                                      (_%tl203793203826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203791203819%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203793203826%_))
                                      (let ((_%e203794203829%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203793203826%_))))
                                        (let ((_%hd203795203833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203794203829%_)))
                                              (_%tl203796203836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203794203829%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203796203836%_))
                                              ((lambda (_%L203839%_
                                                        _%L203841%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L203841%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L203839%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx203781%_
                                                        _%L203841%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx203781%_
                                                        _%L203839%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L203841%_
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
                                                   (cons _%L203839%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g203784203802%_
                                                      _%g203785203806%_)))
                                               _%hd203795203833%_
                                               _%hd203792203823%_)
                                              (_%g203784203802%_
                                               _%g203785203806%_))))
                                      (_%g203784203802%_ _%g203785203806%_))))
                              (_%g203784203802%_ _%g203785203806%_))))
                      (_%g203784203802%_ _%g203785203806%_)))))
          (_%g203783203857%_ _%stx203781%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx203861%_)
        (let* ((_%g203864203888%_
                (lambda (_%g203865203884%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203865203884%_))))
               (_%g203863204171%_
                (lambda (_%g203865203892%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203865203892%_))
                      (let ((_%e203868203895%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203865203892%_))))
                        (let ((_%hd203869203899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203868203895%_)))
                              (_%tl203870203902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203868203895%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203870203902%_))
                              (let ((_%e203871203905%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203870203902%_))))
                                (let ((_%hd203872203909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203871203905%_)))
                                      (_%tl203873203912%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203871203905%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203873203912%_))
                                      (let ((_g206233_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl203873203912%_
                                                '0))))
                                        (begin
                                          (let ((_g206234_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g206233_)
                                                       (##vector-length
                                                        _g206233_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g206234_ 2)))
                                                (error "Context expects 2 values"
                                                       _g206234_)))
                                          (let ((_%target203874203915%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g206233_ 0)))
                                                (_%tl203876203918%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g206233_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203876203918%_))
                                                (letrec ((_%loop203877203921%_
                                                          (lambda (_%hd203875203925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature203881203928%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd203875203925%_))
                        (let ((_%e203878203931%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd203875203925%_))))
                          (let ((_%lp-hd203879203935%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203878203931%_)))
                                (_%lp-tl203880203938%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203878203931%_))))
                            (_%loop203877203921%_
                             _%lp-tl203880203938%_
                             (cons _%lp-hd203879203935%_
                                   _%signature203881203928%_))))
                        (let ((_%signature203882203941%_
                               (reverse _%signature203881203928%_)))
                          ((lambda (_%L203945%_ _%L203947%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L203947%_))
                                 (let* ((_%g203965203980%_
                                         (lambda (_%g203966203976%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g203966203976%_))))
                                        (_%g203964204159%_
                                         (lambda (_%g203966203984%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g203966203984%_))
                                               (let ((_%e203969203987%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g203966203984%_))))
                                                 (let ((_%hd203970203991%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e203969203987%_)))
                                                       (_%tl203971203994%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e203969203987%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl203971203994%_))
                                                       (let ((_%e203972203997%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl203971203994%_))))
                 (let ((_%hd203973204001%_
                        (let ()
                          (declare (not safe))
                          (##car _%e203972203997%_)))
                       (_%tl203974204004%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e203972203997%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl203974204004%_))
                       ((lambda (_%L204007%_ _%L204009%_)
                          (let* ((_%g204025204033%_
                                  (lambda (_%g204026204029%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g204026204029%_))))
                                 (_%g204024204155%_
                                  (lambda (_%g204026204037%_)
                                    ((lambda (_%L204040%_)
                                       (let* ((_%unchecked204053%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L204007%_))
                                              (_%g204056204064%_
                                               (lambda (_%g204057204060%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g204057204060%_))))
                                              (_%g204055204087%_
                                               (lambda (_%g204057204068%_)
                                                 ((lambda (_%L204071%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L204040%_
                                                                (cons _%L204071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g204057204068%_))))
                                         (_%g204055204087%_
                                          (if _%unchecked204053%_
                                              (let* ((_%g204091204106%_
                                                      (lambda (_%g204092204102%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g204092204102%_))))
                                                     (_%g204090204151%_
                                                      (lambda (_%g204092204110%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g204092204110%_))
                                                            (let ((_%e204095204113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g204092204110%_))))
                      (let ((_%hd204096204117%_
                             (let ()
                               (declare (not safe))
                               (##car _%e204095204113%_)))
                            (_%tl204097204120%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e204095204113%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl204097204120%_))
                            (let ((_%e204098204123%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl204097204120%_))))
                              (let ((_%hd204099204127%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e204098204123%_)))
                                    (_%tl204100204130%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e204098204123%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl204100204130%_))
                                    ((lambda (_%L204133%_ _%L204135%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L204135%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L204009%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L204133%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd204099204127%_
                                     _%hd204096204117%_)
                                    (_%g204091204106%_ _%g204092204110%_))))
                            (_%g204091204106%_ _%g204092204110%_))))
                    (_%g204091204106%_ _%g204092204110%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g204090204151%_
                                                 _%unchecked204053%_))
                                              '(begin)))))
                                     _%g204026204037%_))))
                            (_%g204024204155%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L203947%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L204009%_ '()))
                   (cons '#f (cons 'signature: (cons _%L204007%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd203973204001%_
                        _%hd203970203991%_)
                       (_%g203965203980%_ _%g203966203984%_))))
               (_%g203965203980%_ _%g203966203984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g203965203980%_
                                                _%g203966203984%_)))))
                                   (_%g203964204159%_
                                    (|gxc[1]#parse-signature|
                                     _%stx203861%_
                                     _%L203947%_
                                     (let ((__tmp206235
                                            (lambda (_%g204162204165%_
                                                     _%g204163204168%_)
                                              (cons _%g204162204165%_
                                                    _%g204163204168%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp206235
                                        '()
                                        _%L203945%_)))))
                                 (_%g203864203888%_ _%g203865203892%_)))
                           _%signature203882203941%_
                           _%hd203872203909%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop203877203921%_
                                                   _%target203874203915%_
                                                   '()))
                                                (_%g203864203888%_
                                                 _%g203865203892%_)))))
                                      (_%g203864203888%_ _%g203865203892%_))))
                              (_%g203864203888%_ _%g203865203892%_))))
                      (_%g203864203888%_ _%g203865203892%_)))))
          (_%g203863204171%_ _%stx203861%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx204176%_)
        (let* ((_%g204179204203%_
                (lambda (_%g204180204199%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204180204199%_))))
               (_%g204178205086%_
                (lambda (_%g204180204207%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204180204207%_))
                      (let ((_%e204183204210%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204180204207%_))))
                        (let ((_%hd204184204214%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204183204210%_)))
                              (_%tl204185204217%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204183204210%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204185204217%_))
                              (let ((_%e204186204220%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204185204217%_))))
                                (let ((_%hd204187204224%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204186204220%_)))
                                      (_%tl204188204227%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204186204220%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204188204227%_))
                                      (let ((_g206236_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl204188204227%_
                                                '0))))
                                        (begin
                                          (let ((_g206237_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g206236_)
                                                       (##vector-length
                                                        _g206236_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g206237_ 2)))
                                                (error "Context expects 2 values"
                                                       _g206237_)))
                                          (let ((_%target204189204230%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g206236_ 0)))
                                                (_%tl204191204233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g206236_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204191204233%_))
                                                (letrec ((_%loop204192204236%_
                                                          (lambda (_%hd204190204240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature204196204243%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204190204240%_))
                        (let ((_%e204193204246%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd204190204240%_))))
                          (let ((_%lp-hd204194204250%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204193204246%_)))
                                (_%lp-tl204195204253%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204193204246%_))))
                            (_%loop204192204236%_
                             _%lp-tl204195204253%_
                             (cons _%lp-hd204194204250%_
                                   _%case-signature204196204243%_))))
                        (let ((_%case-signature204197204256%_
                               (reverse _%case-signature204196204243%_)))
                          ((lambda (_%L204260%_ _%L204262%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L204262%_))
                                 (let* ((_%signatures204293%_
                                         (map (lambda (_%g204279204281%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx204176%_
                                                 _%L204262%_
                                                 _%g204279204281%_))
                                              (let ((__tmp206238
                                                     (lambda (_%g204284204287%_
                                                              _%g204285204290%_)
                                                       (cons _%g204284204287%_
                                                             _%g204285204290%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp206238
                                                 '()
                                                 _%L204260%_))))
                                        (_%g204296204322%_
                                         (lambda (_%g204297204318%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g204297204318%_))))
                                        (_%g204295205082%_
                                         (lambda (_%g204297204326%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g204297204326%_))
                                               (let ((_g206239_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g204297204326%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g206240_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g206239_)
                        (##vector-length _g206239_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g206240_ 2)))
                 (error "Context expects 2 values" _g206240_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target204300204329%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g206239_
                                                             0)))
                                                         (_%tl204302204332%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g206239_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl204302204332%_))
                                                         (letrec ((_%loop204303204335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd204301204339%_
                                    _%sig204307204342%_
                                    _%arity204308204344%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd204301204339%_))
                                 (let ((_%e204304204347%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd204301204339%_))))
                                   (let ((_%lp-hd204305204351%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e204304204347%_)))
                                         (_%lp-tl204306204354%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e204304204347%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd204305204351%_))
                                         (let ((_%e204311204357%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd204305204351%_))))
                                           (let ((_%hd204312204361%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e204311204357%_)))
                                                 (_%tl204313204364%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e204311204357%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl204313204364%_))
                                                 (let ((_%e204314204367%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl204313204364%_))))
                                                   (let ((_%hd204315204371%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e204314204367%_)))
                                                         (_%tl204316204374%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e204314204367%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl204316204374%_))
                                                         (_%loop204303204335%_
                                                          _%lp-tl204306204354%_
                                                          (cons _%hd204315204371%_
                                                                _%sig204307204342%_)
                                                          (cons _%hd204312204361%_
                                                                _%arity204308204344%_))
                                                         (_%g204296204322%_
                                                          _%g204297204326%_))))
                                                 (_%g204296204322%_
                                                  _%g204297204326%_))))
                                         (_%g204296204322%_
                                          _%g204297204326%_))))
                                 (let ((_%sig204309204377%_
                                        (reverse _%sig204307204342%_))
                                       (_%arity204310204380%_
                                        (reverse _%arity204308204344%_)))
                                   ((lambda (_%L204383%_ _%L204385%_)
                                      (let* ((_%g204402204410%_
                                              (lambda (_%g204403204406%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g204403204406%_))))
                                             (_%g204401205067%_
                                              (lambda (_%g204403204414%_)
                                                ((lambda (_%L204417%_)
                                                   (let* ((_%g204430204438%_
                                                           (lambda (_%g204431204434%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g204431204434%_))))
                  (_%g204429204460%_
                   (lambda (_%g204431204442%_)
                     ((lambda (_%L204445%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L204417%_ (cons _%L204445%_ '()))))
                      _%g204431204442%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g204429204460%_
                                                      (let ((_g206241_
                                                             (let _%loop204464%_ ((_%rest204467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures204293%_)
                                          (_%unchecked-proc204469%_ '#f)
                                          (_%unchecked-clauses204470%_ '()))
                       (let* ((_%rest204471204479%_ _%rest204467%_)
                              (_%else204473204491%_
                               (lambda ()
                                 (values _%unchecked-proc204469%_
                                         (reverse!
                                          _%unchecked-clauses204470%_))))
                              (_%K204475204932%_
                               (lambda (_%rest204495%_ _%hd204497%_)
                                 (let* ((_%g204499204586%_
                                         (lambda (_%g204500204582%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g204500204582%_))))
                                        (_%g204498204928%_
                                         (lambda (_%g204500204590%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g204500204590%_))
                                               (let ((_%e204507204593%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g204500204590%_))))
                                                 (let ((_%hd204508204597%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e204507204593%_)))
                                                       (_%tl204509204600%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e204507204593%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl204509204600%_))
                                                       (let ((_%e204510204603%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl204509204600%_))))
                 (let ((_%hd204511204607%_
                        (let ()
                          (declare (not safe))
                          (##car _%e204510204603%_)))
                       (_%tl204512204610%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e204510204603%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd204511204607%_))
                       (let ((_%e204513204613%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd204511204607%_))))
                         (let ((_%hd204514204617%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e204513204613%_)))
                               (_%tl204515204620%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e204513204613%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl204515204620%_))
                               (let ((_%e204516204623%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl204515204620%_))))
                                 (let ((_%hd204517204627%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e204516204623%_)))
                                       (_%tl204518204630%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e204516204623%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd204517204627%_))
                                       (let ((_%e204519204633%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd204517204627%_))))
                                         (if (equal? _%e204519204633%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl204518204630%_))
                                                 (let ((_%e204520204637%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl204518204630%_))))
                                                   (let ((_%hd204521204641%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e204520204637%_)))
                                                         (_%tl204522204644%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e204520204637%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd204521204641%_))
                                                         (let ((_%e204523204647%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd204521204641%_))))
                   (let ((_%hd204524204651%_
                          (let ()
                            (declare (not safe))
                            (##car _%e204523204647%_)))
                         (_%tl204525204654%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e204523204647%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd204524204651%_))
                         (if (let ((__tmp206243 |gxc[1]#_g206244_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp206243
                                _%hd204524204651%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl204525204654%_))
                                 (let ((_%e204526204657%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl204525204654%_))))
                                   (let ((_%hd204527204661%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e204526204657%_)))
                                         (_%tl204528204664%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e204526204657%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl204528204664%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl204522204644%_))
                                             (let ((_%e204529204667%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl204522204644%_))))
                                               (let ((_%hd204530204671%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e204529204667%_)))
                                                     (_%tl204531204674%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e204529204667%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd204530204671%_))
                                                     (let ((_%e204532204677%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd204530204671%_))))
                                                       (if (equal? _%e204532204677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl204531204674%_))
                       (let ((_%e204533204681%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl204531204674%_))))
                         (let ((_%hd204534204685%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e204533204681%_)))
                               (_%tl204535204688%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e204533204681%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd204534204685%_))
                               (let ((_%e204536204691%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd204534204685%_))))
                                 (let ((_%hd204537204695%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e204536204691%_)))
                                       (_%tl204538204698%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e204536204691%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd204537204695%_))
                                       (if (let ((__tmp206245
                                                  |gxc[1]#_g206246_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp206245
                                              _%hd204537204695%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl204538204698%_))
                                               (let ((_%e204539204701%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl204538204698%_))))
                                                 (let ((_%hd204540204705%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e204539204701%_)))
                                                       (_%tl204541204708%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e204539204701%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl204541204708%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl204535204688%_))
                                                           (let ((_%e204542204711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl204535204688%_))))
                     (let ((_%hd204543204715%_
                            (let ()
                              (declare (not safe))
                              (##car _%e204542204711%_)))
                           (_%tl204544204718%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e204542204711%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd204543204715%_))
                           (let ((_%e204545204721%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd204543204715%_))))
                             (if (equal? _%e204545204721%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl204544204718%_))
                                     (let ((_%e204546204725%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl204544204718%_))))
                                       (let ((_%hd204547204729%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e204546204725%_)))
                                             (_%tl204548204732%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e204546204725%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd204547204729%_))
                                             (let ((_%e204549204735%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd204547204729%_))))
                                               (let ((_%hd204550204739%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e204549204735%_)))
                                                     (_%tl204551204742%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e204549204735%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd204550204739%_))
                                                     (if (let ((__tmp206247
                                                                |gxc[1]#_g206248_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp206247
                                                            _%hd204550204739%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl204551204742%_))
                     (let ((_%e204552204745%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl204551204742%_))))
                       (let ((_%hd204553204749%_
                              (let ()
                                (declare (not safe))
                                (##car _%e204552204745%_)))
                             (_%tl204554204752%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e204552204745%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl204554204752%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl204548204732%_))
                                 (let ((_%e204555204755%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl204548204732%_))))
                                   (let ((_%hd204556204759%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e204555204755%_)))
                                         (_%tl204557204762%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e204555204755%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd204556204759%_))
                                         (let ((_%e204558204765%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd204556204759%_))))
                                           (if (equal? _%e204558204765%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl204557204762%_))
                                                   (let ((_%e204559204769%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl204557204762%_))))
                                                     (let ((_%hd204560204773%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e204559204769%_)))
                                                           (_%tl204561204776%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e204559204769%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd204560204773%_))
                                                           (let ((_%e204562204779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd204560204773%_))))
                     (let ((_%hd204563204783%_
                            (let ()
                              (declare (not safe))
                              (##car _%e204562204779%_)))
                           (_%tl204564204786%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e204562204779%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd204563204783%_))
                           (if (let ((__tmp206249 |gxc[1]#_g206250_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp206249
                                  _%hd204563204783%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl204564204786%_))
                                   (let ((_%e204565204789%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl204564204786%_))))
                                     (let ((_%hd204566204793%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e204565204789%_)))
                                           (_%tl204567204796%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e204565204789%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl204567204796%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl204561204776%_))
                                               (let ((_%e204568204799%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl204561204776%_))))
                                                 (let ((_%hd204569204803%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e204568204799%_)))
                                                       (_%tl204570204806%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e204568204799%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd204569204803%_))
                                                       (let ((_%e204571204809%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd204569204803%_))))
                 (if (equal? _%e204571204809%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl204570204806%_))
                         (let ((_%e204572204813%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl204570204806%_))))
                           (let ((_%hd204573204817%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e204572204813%_)))
                                 (_%tl204574204820%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e204572204813%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd204573204817%_))
                                 (let ((_%e204575204823%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd204573204817%_))))
                                   (let ((_%hd204576204827%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e204575204823%_)))
                                         (_%tl204577204830%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e204575204823%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd204576204827%_))
                                         (if (let ((__tmp206251
                                                    |gxc[1]#_g206252_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp206251
                                                _%hd204576204827%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl204577204830%_))
                                                 (let ((_%e204578204833%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl204577204830%_))))
                                                   (let ((_%hd204579204837%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e204578204833%_)))
                                                         (_%tl204580204840%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e204578204833%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl204580204840%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl204574204820%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl204512204610%_))
                         ((lambda (_%L204843%_
                                   _%L204845%_
                                   _%L204846%_
                                   _%L204847%_
                                   _%L204848%_
                                   _%L204849%_)
                            (let ((_%clause204920%_
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
                                                     (cons _%L204849%_ '()))
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
                                                 (cons _%L204847%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L204843%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked204922%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L204845%_))))
                              (_%loop204464%_
                               _%rest204495%_
                               (let ((_%$e204924%_ _%unchecked204922%_))
                                 (if _%$e204924%_
                                     _%$e204924%_
                                     _%unchecked-proc204469%_))
                               (cons _%clause204920%_
                                     _%unchecked-clauses204470%_))))
                          _%hd204579204837%_
                          _%hd204566204793%_
                          _%hd204553204749%_
                          _%hd204540204705%_
                          _%hd204527204661%_
                          _%hd204508204597%_)
                         (_%g204499204586%_ _%g204500204590%_))
                     (_%g204499204586%_ _%g204500204590%_))
                 (_%g204499204586%_ _%g204500204590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g204499204586%_
                                                  _%g204500204590%_))
                                             (_%g204499204586%_
                                              _%g204500204590%_))
                                         (_%g204499204586%_
                                          _%g204500204590%_))))
                                 (_%g204499204586%_ _%g204500204590%_))))
                         (_%g204499204586%_ _%g204500204590%_))
                     (_%g204499204586%_ _%g204500204590%_)))
               (_%g204499204586%_ _%g204500204590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g204499204586%_
                                                _%g204500204590%_))
                                           (_%g204499204586%_
                                            _%g204500204590%_))))
                                   (_%g204499204586%_ _%g204500204590%_))
                               (_%g204499204586%_ _%g204500204590%_))
                           (_%g204499204586%_ _%g204500204590%_))))
                   (_%g204499204586%_ _%g204500204590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g204499204586%_
                                                    _%g204500204590%_))
                                               (_%g204499204586%_
                                                _%g204500204590%_)))
                                         (_%g204499204586%_
                                          _%g204500204590%_))))
                                 (_%g204499204586%_ _%g204500204590%_))
                             (_%g204499204586%_ _%g204500204590%_))))
                     (_%g204499204586%_ _%g204500204590%_))
                 (_%g204499204586%_ _%g204500204590%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g204499204586%_
                                                      _%g204500204590%_))))
                                             (_%g204499204586%_
                                              _%g204500204590%_))))
                                     (_%g204499204586%_ _%g204500204590%_))
                                 (_%g204499204586%_ _%g204500204590%_)))
                           (_%g204499204586%_ _%g204500204590%_))))
                   (_%g204499204586%_ _%g204500204590%_))
               (_%g204499204586%_ _%g204500204590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g204499204586%_
                                                _%g204500204590%_))
                                           (_%g204499204586%_
                                            _%g204500204590%_))
                                       (_%g204499204586%_ _%g204500204590%_))))
                               (_%g204499204586%_ _%g204500204590%_))))
                       (_%g204499204586%_ _%g204500204590%_))
                   (_%g204499204586%_ _%g204500204590%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g204499204586%_
                                                      _%g204500204590%_))))
                                             (_%g204499204586%_
                                              _%g204500204590%_))
                                         (_%g204499204586%_
                                          _%g204500204590%_))))
                                 (_%g204499204586%_ _%g204500204590%_))
                             (_%g204499204586%_ _%g204500204590%_))
                         (_%g204499204586%_ _%g204500204590%_))))
                 (_%g204499204586%_ _%g204500204590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g204499204586%_
                                                  _%g204500204590%_))
                                             (_%g204499204586%_
                                              _%g204500204590%_)))
                                       (_%g204499204586%_ _%g204500204590%_))))
                               (_%g204499204586%_ _%g204500204590%_))))
                       (_%g204499204586%_ _%g204500204590%_))))
               (_%g204499204586%_ _%g204500204590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g204499204586%_
                                                _%g204500204590%_)))))
                                   (_%g204498204928%_ _%hd204497%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest204471204479%_))
                             (let ((_%hd204476204936%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest204471204479%_)))
                                   (_%tl204477204939%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest204471204479%_))))
                               (let* ((_%hd204942%_ _%hd204476204936%_)
                                      (_%rest204945%_ _%tl204477204939%_))
                                 (_%K204475204932%_
                                  _%rest204945%_
                                  _%hd204942%_)))
                             (_%else204473204491%_))))))
                (begin
                  (let ((_g206242_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g206241_)
                               (##vector-length _g206241_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g206242_ 2)))
                        (error "Context expects 2 values" _g206242_)))
                  (let ((_%unchecked-proc204948%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g206241_ 0)))
                        (_%unchecked-clauses204950%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g206241_ 1))))
                    (if _%unchecked-proc204948%_
                        (let* ((_%g204952204976%_
                                (lambda (_%g204953204972%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g204953204972%_))))
                               (_%g204951205063%_
                                (lambda (_%g204953204980%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g204953204980%_))
                                      (let ((_%e204956204983%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g204953204980%_))))
                                        (let ((_%hd204957204987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204956204983%_)))
                                              (_%tl204958204990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204956204983%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204958204990%_))
                                              (let ((_%e204959204993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204958204990%_))))
                                                (let ((_%hd204960204997%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204959204993%_)))
                                                      (_%tl204961205000%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204959204993%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd204960204997%_))
                                                      (let ((_g206253_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd204960204997%_ '0))))
                (begin
                  (let ((_g206254_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g206253_)
                               (##vector-length _g206253_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g206254_ 2)))
                        (error "Context expects 2 values" _g206254_)))
                  (let ((_%target204962205003%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g206253_ 0)))
                        (_%tl204964205006%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g206253_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl204964205006%_))
                        (letrec ((_%loop204965205009%_
                                  (lambda (_%hd204963205013%_
                                           _%clause204969205016%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd204963205013%_))
                                        (let ((_%e204966205019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd204963205013%_))))
                                          (let ((_%lp-hd204967205023%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204966205019%_)))
                                                (_%lp-tl204968205026%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204966205019%_))))
                                            (_%loop204965205009%_
                                             _%lp-tl204968205026%_
                                             (cons _%lp-hd204967205023%_
                                                   _%clause204969205016%_))))
                                        (let ((_%clause204970205029%_
                                               (reverse _%clause204969205016%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204961205000%_))
                                              ((lambda (_%L205033%_
                                                        _%L205035%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L205035%_
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
                                             (let ((__tmp206255
                                                    (lambda (_%g205054205057%_
                                                             _%g205055205060%_)
                                                      (cons _%g205054205057%_
                                                            _%g205055205060%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp206255
                                                '()
                                                _%L205033%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause204970205029%_
                                               _%hd204957204987%_)
                                              (_%g204952204976%_
                                               _%g204953204980%_)))))))
                          (_%loop204965205009%_ _%target204962205003%_ '()))
                        (_%g204952204976%_ _%g204953204980%_)))))
              (_%g204952204976%_ _%g204953204980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204952204976%_
                                               _%g204953204980%_))))
                                      (_%g204952204976%_ _%g204953204980%_)))))
                          (_%g204951205063%_
                           (list _%unchecked-proc204948%_
                                 _%unchecked-clauses204950%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g204403204414%_))))
                                        (_%g204401205067%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L204262%_
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
                                          _%L204383%_
                                          _%L204385%_))
                                       (let ((__tmp206256
                                              (lambda (_%g205070205074%_
                                                       _%g205071205077%_
                                                       _%g205072205079%_)
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
                                (cons _%g205071205077%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g205070205074%_ '())))))
              _%g205072205079%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp206256
                                          '()
                                          _%L204383%_
                                          _%L204385%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig204309204377%_
                                    _%arity204310204380%_))))))
                   (_%loop204303204335%_ _%target204300204329%_ '() '()))
                 (_%g204296204322%_ _%g204297204326%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g204296204322%_
                                                _%g204297204326%_)))))
                                   (_%g204295205082%_ _%signatures204293%_))
                                 (_%g204179204203%_ _%g204180204207%_)))
                           _%case-signature204197204256%_
                           _%hd204187204224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop204192204236%_
                                                   _%target204189204230%_
                                                   '()))
                                                (_%g204179204203%_
                                                 _%g204180204207%_)))))
                                      (_%g204179204203%_ _%g204180204207%_))))
                              (_%g204179204203%_ _%g204180204207%_))))
                      (_%g204179204203%_ _%g204180204207%_)))))
          (_%g204178205086%_ _%stx204176%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx205094%_)
        (let* ((_%__stx206076206077%_ _%$stx205094%_)
               (_%g205100205160%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206076206077%_)))))
          (let ((_%__kont206079206080%_
                 (lambda (_%L205382%_ _%L205384%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205384%_ '()))
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
                                                       (cons _%L205384%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L205382%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont206081206082%_
                 (lambda (_%L205307%_ _%L205309%_ _%L205310%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205310%_ '()))
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
                                                       (cons _%L205310%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L205309%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205307%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont206083206084%_
                 (lambda (_%L205221%_ _%L205223%_ _%L205224%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205224%_ '()))
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
                                                       (cons _%L205224%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L205223%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205221%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx206076206077%_))
                (let ((_%e205104205338%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx206076206077%_))))
                  (let ((_%tl205106205345%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205104205338%_)))
                        (_%hd205105205342%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205104205338%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205106205345%_))
                        (let ((_%e205107205348%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205106205345%_))))
                          (let ((_%tl205109205355%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205107205348%_)))
                                (_%hd205108205352%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205107205348%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd205108205352%_))
                                (let ((_%e205110205358%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd205108205352%_))))
                                  (if (equal? _%e205110205358%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl205109205355%_))
                                          (let ((_%e205111205362%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl205109205355%_))))
                                            (let ((_%tl205113205369%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e205111205362%_)))
                                                  (_%hd205112205366%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e205111205362%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205113205369%_))
                                                  (let ((_%e205114205372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl205113205369%_))))
                                                    (let ((_%tl205116205379%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205114205372%_)))
                                                          (_%hd205115205376%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205114205372%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl205116205379%_))
                                                          (_%__kont206079206080%_
                                                           _%hd205115205376%_
                                                           _%hd205112205366%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g205100205160%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g205100205160%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g205100205160%_)))
                                      (if (equal? _%e205110205358%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205109205355%_))
                                              (let ((_%e205127205277%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205109205355%_))))
                                                (let ((_%tl205129205284%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205127205277%_)))
                                                      (_%hd205128205281%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205127205277%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl205129205284%_))
                                                      (let ((_%e205130205287%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl205129205284%_))))
                (let ((_%tl205132205294%_
                       (let () (declare (not safe)) (##cdr _%e205130205287%_)))
                      (_%hd205131205291%_
                       (let ()
                         (declare (not safe))
                         (##car _%e205130205287%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl205132205294%_))
                      (let ((_%e205133205297%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl205132205294%_))))
                        (let ((_%tl205135205304%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205133205297%_)))
                              (_%hd205134205301%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205133205297%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205135205304%_))
                              (_%__kont206081206082%_
                               _%hd205134205301%_
                               _%hd205131205291%_
                               _%hd205128205281%_)
                              (let ()
                                (declare (not safe))
                                (_%g205100205160%_)))))
                      (let () (declare (not safe)) (_%g205100205160%_)))))
              (let () (declare (not safe)) (_%g205100205160%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g205100205160%_)))
                                          (if (equal? _%e205110205358%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205109205355%_))
                                                  (let ((_%e205146205191%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl205109205355%_))))
                                                    (let ((_%tl205148205198%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205146205191%_)))
                                                          (_%hd205147205195%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205146205191%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl205148205198%_))
                                                          (let ((_%e205149205201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl205148205198%_))))
                    (let ((_%tl205151205208%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205149205201%_)))
                          (_%hd205150205205%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205149205201%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205151205208%_))
                          (let ((_%e205152205211%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl205151205208%_))))
                            (let ((_%tl205154205218%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205152205211%_)))
                                  (_%hd205153205215%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205152205211%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205154205218%_))
                                  (_%__kont206083206084%_
                                   _%hd205153205215%_
                                   _%hd205150205205%_
                                   _%hd205147205195%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g205100205160%_)))))
                          (let () (declare (not safe)) (_%g205100205160%_)))))
                  (let () (declare (not safe)) (_%g205100205160%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g205100205160%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205100205160%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g205100205160%_)))))
                        (let () (declare (not safe)) (_%g205100205160%_)))))
                (let () (declare (not safe)) (_%g205100205160%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx205406%_)
        (let* ((_%g205410205430%_
                (lambda (_%g205411205426%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205411205426%_))))
               (_%g205409205501%_
                (lambda (_%g205411205434%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205411205434%_))
                      (let ((_%e205413205437%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205411205434%_))))
                        (let ((_%hd205414205441%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205413205437%_)))
                              (_%tl205415205444%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205413205437%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205415205444%_))
                              (let ((_g206257_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205415205444%_
                                        '0))))
                                (begin
                                  (let ((_g206258_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g206257_)
                                               (##vector-length _g206257_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g206258_ 2)))
                                        (error "Context expects 2 values"
                                               _g206258_)))
                                  (let ((_%target205416205447%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206257_ 0)))
                                        (_%tl205418205450%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206257_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205418205450%_))
                                        (letrec ((_%loop205419205453%_
                                                  (lambda (_%hd205417205457%_
                                                           _%decl205423205460%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205417205457%_))
                                                        (let ((_%e205420205463%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205417205457%_))))
                  (let ((_%lp-hd205421205467%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205420205463%_)))
                        (_%lp-tl205422205470%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205420205463%_))))
                    (_%loop205419205453%_
                     _%lp-tl205422205470%_
                     (cons _%lp-hd205421205467%_ _%decl205423205460%_))))
                (let ((_%decl205424205473%_ (reverse _%decl205423205460%_)))
                  ((lambda (_%L205477%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp206259
                                  (lambda (_%g205492205495%_ _%g205493205498%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g205492205495%_)
                                          _%g205493205498%_))))
                             (declare (not safe))
                             (__foldr1 __tmp206259 '() _%L205477%_))))
                   _%decl205424205473%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop205419205453%_
                                           _%target205416205447%_
                                           '()))
                                        (_%g205410205430%_
                                         _%g205411205434%_)))))
                              (_%g205410205430%_ _%g205411205434%_))))
                      (_%g205410205430%_ _%g205411205434%_)))))
          (_%g205409205501%_ _%$stx205406%_))))))
